package Engine.Dynamics
{
   import Engine.Collision.Shapes.b2Shape;
   import Engine.Collision.b2AABB;
   import Engine.Collision.b2BroadPhase;
   import Engine.Common.Math.b2Math;
   import Engine.Common.Math.b2Vec2;
   import Engine.Dynamics.Contacts.b2Contact;
   import Engine.Dynamics.Contacts.b2ContactNode;
   import Engine.Dynamics.Joints.b2Joint;
   import Engine.Dynamics.Joints.b2JointDef;
   import Engine.Dynamics.Joints.b2JointNode;
   
   public class b2World
   {
      public static var s_enablePositionCorrection:int = 1;
      
      public static var s_enableWarmStarting:int = 1;
      
      public var m_bodyCount:int;
      
      public var m_gravity:b2Vec2;
      
      public var m_listener:b2WorldListener;
      
      private var step:b2StepInfo = new b2StepInfo();
      
      public var m_positionIterationCount:int;
      
      public var m_contactList:b2Contact;
      
      public var m_blockAllocator:*;
      
      public var m_groundBody:b2Body;
      
      public var m_contactCount:int;
      
      public var m_broadPhase:b2BroadPhase;
      
      public var m_stackAllocator:*;
      
      public var m_jointCount:int;
      
      public var m_bodyList:b2Body;
      
      public var m_doSleep:Boolean;
      
      public var m_bodyDestroyList:b2Body;
      
      public var m_jointList:b2Joint;
      
      public var m_contactManager:b2ContactManager = new b2ContactManager();
      
      public function b2World(param1:b2AABB, param2:b2Vec2, param3:Boolean)
      {
         super();
         m_listener = null;
         m_bodyList = null;
         m_contactList = null;
         m_jointList = null;
         m_bodyCount = 0;
         m_contactCount = 0;
         m_jointCount = 0;
         m_bodyDestroyList = null;
         m_doSleep = param3;
         m_gravity = param2;
         m_contactManager.m_world = this;
         m_broadPhase = new b2BroadPhase(param1,m_contactManager);
         var _loc4_:b2BodyDef = new b2BodyDef();
         m_groundBody = CreateBody(_loc4_);
      }
      
      public function GetContactList() : b2Contact
      {
         return m_contactList;
      }
      
      public function CreateJoint(param1:b2JointDef) : b2Joint
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Shape = null;
         var _loc2_:b2Joint = b2Joint.Create(param1,m_blockAllocator);
         _loc2_.m_prev = null;
         _loc2_.m_next = m_jointList;
         if(m_jointList)
         {
            m_jointList.m_prev = _loc2_;
         }
         m_jointList = _loc2_;
         ++m_jointCount;
         _loc2_.m_node1.joint = _loc2_;
         _loc2_.m_node1.other = _loc2_.m_body2;
         _loc2_.m_node1.prev = null;
         _loc2_.m_node1.next = _loc2_.m_body1.m_jointList;
         if(_loc2_.m_body1.m_jointList)
         {
            _loc2_.m_body1.m_jointList.prev = _loc2_.m_node1;
         }
         _loc2_.m_body1.m_jointList = _loc2_.m_node1;
         _loc2_.m_node2.joint = _loc2_;
         _loc2_.m_node2.other = _loc2_.m_body1;
         _loc2_.m_node2.prev = null;
         _loc2_.m_node2.next = _loc2_.m_body2.m_jointList;
         if(_loc2_.m_body2.m_jointList)
         {
            _loc2_.m_body2.m_jointList.prev = _loc2_.m_node2;
         }
         _loc2_.m_body2.m_jointList = _loc2_.m_node2;
         if(param1.collideConnected == false)
         {
            _loc3_ = param1.body1.m_shapeCount < param1.body2.m_shapeCount ? param1.body1 : param1.body2;
            _loc4_ = _loc3_.m_shapeList;
            while(_loc4_)
            {
               _loc4_.ResetProxy(m_broadPhase);
               _loc4_ = _loc4_.m_next;
            }
         }
         return _loc2_;
      }
      
      public function DestroyJoint(param1:b2Joint) : *
      {
         var _loc5_:b2Body = null;
         var _loc6_:b2Shape = null;
         var _loc2_:Boolean = param1.m_collideConnected;
         if(param1.m_prev)
         {
            param1.m_prev.m_next = param1.m_next;
         }
         if(param1.m_next)
         {
            param1.m_next.m_prev = param1.m_prev;
         }
         if(param1 == m_jointList)
         {
            m_jointList = param1.m_next;
         }
         var _loc3_:b2Body = param1.m_body1;
         var _loc4_:b2Body = param1.m_body2;
         _loc3_.WakeUp();
         _loc4_.WakeUp();
         if(param1.m_node1.prev)
         {
            param1.m_node1.prev.next = param1.m_node1.next;
         }
         if(param1.m_node1.next)
         {
            param1.m_node1.next.prev = param1.m_node1.prev;
         }
         if(param1.m_node1 == _loc3_.m_jointList)
         {
            _loc3_.m_jointList = param1.m_node1.next;
         }
         param1.m_node1.prev = null;
         param1.m_node1.next = null;
         if(param1.m_node2.prev)
         {
            param1.m_node2.prev.next = param1.m_node2.next;
         }
         if(param1.m_node2.next)
         {
            param1.m_node2.next.prev = param1.m_node2.prev;
         }
         if(param1.m_node2 == _loc4_.m_jointList)
         {
            _loc4_.m_jointList = param1.m_node2.next;
         }
         param1.m_node2.prev = null;
         param1.m_node2.next = null;
         b2Joint.Destroy(param1,m_blockAllocator);
         --m_jointCount;
         if(_loc2_ == false)
         {
            _loc5_ = _loc3_.m_shapeCount < _loc4_.m_shapeCount ? _loc3_ : _loc4_;
            _loc6_ = _loc5_.m_shapeList;
            while(_loc6_)
            {
               _loc6_.ResetProxy(m_broadPhase);
               _loc6_ = _loc6_.m_next;
            }
         }
      }
      
      public function DestroyBody(param1:b2Body) : *
      {
         if(param1.m_flags & b2Body.e_destroyFlag)
         {
            return;
         }
         if(param1.m_prev)
         {
            param1.m_prev.m_next = param1.m_next;
         }
         if(param1.m_next)
         {
            param1.m_next.m_prev = param1.m_prev;
         }
         if(param1 == m_bodyList)
         {
            m_bodyList = param1.m_next;
         }
         param1.m_flags |= b2Body.e_destroyFlag;
         --m_bodyCount;
         param1.m_prev = null;
         param1.m_next = m_bodyDestroyList;
         m_bodyDestroyList = param1;
      }
      
      public function SetListener(param1:b2WorldListener) : *
      {
         m_listener = param1;
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.m_prev = null;
         _loc2_.m_next = m_bodyList;
         if(m_bodyList)
         {
            m_bodyList.m_prev = _loc2_;
         }
         m_bodyList = _loc2_;
         ++m_bodyCount;
         return _loc2_;
      }
      
      public function GetGroundBody() : b2Body
      {
         return m_groundBody;
      }
      
      public function Query(param1:b2AABB, param2:Array, param3:int) : int
      {
         var _loc4_:Array = new Array();
         var _loc5_:int = m_broadPhase.QueryAABB(param1,_loc4_,param3);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            param2[_loc6_] = _loc4_[_loc6_] as b2Shape;
            _loc6_++;
         }
         return _loc5_;
      }
      
      public function CleanBodyList() : *
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2JointNode = null;
         var _loc4_:b2JointNode = null;
         m_contactManager.m_destroyImmediate = true;
         var _loc1_:b2Body = m_bodyDestroyList;
         while(_loc1_)
         {
            _loc2_ = _loc1_;
            _loc1_ = _loc1_.m_next;
            _loc3_ = _loc2_.m_jointList;
            while(_loc3_)
            {
               _loc4_ = _loc3_;
               _loc3_ = _loc3_.next;
               if(m_listener)
               {
                  m_listener.NotifyJointDestroyed(_loc4_.joint);
               }
               DestroyJoint(_loc4_.joint);
            }
            _loc2_.Destroy();
         }
         m_bodyDestroyList = null;
         m_contactManager.m_destroyImmediate = false;
      }
      
      public function Step(param1:Number, param2:int) : *
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:b2ContactNode = null;
         var _loc15_:b2JointNode = null;
         var _loc16_:uint = 0;
         step.dt = param1;
         step.iterations = param2;
         if(param1 > 0)
         {
            step.inv_dt = 1 / param1;
         }
         else
         {
            step.inv_dt = 0;
         }
         m_positionIterationCount = 0;
         m_contactManager.CleanContactList();
         CleanBodyList();
         m_contactManager.Collide();
         var _loc5_:b2Island = new b2Island(m_bodyCount,m_contactCount,m_jointCount,m_stackAllocator);
         _loc3_ = m_bodyList;
         while(_loc3_ != null)
         {
            _loc3_.m_flags &= ~b2Body.e_islandFlag;
            _loc3_ = _loc3_.m_next;
         }
         var _loc6_:b2Contact = m_contactList;
         while(_loc6_ != null)
         {
            _loc6_.m_flags &= ~b2Contact.e_islandFlag;
            _loc6_ = _loc6_.m_next;
         }
         var _loc7_:b2Joint = m_jointList;
         while(_loc7_ != null)
         {
            _loc7_.m_islandFlag = false;
            _loc7_ = _loc7_.m_next;
         }
         var _loc8_:int = m_bodyCount;
         var _loc9_:Array = new Array(m_bodyCount);
         var _loc10_:int = 0;
         while(_loc10_ < m_bodyCount)
         {
            _loc9_[_loc10_] = null;
            _loc10_++;
         }
         var _loc11_:b2Body = m_bodyList;
         while(_loc11_ != null)
         {
            if(!(_loc11_.m_flags & (b2Body.e_staticFlag | b2Body.e_islandFlag | b2Body.e_sleepFlag | b2Body.e_frozenFlag)))
            {
               _loc5_.Clear();
               _loc12_ = 0;
               var _loc17_:*;
               _loc9_[_loc17_ = _loc12_++] = _loc11_;
               _loc11_.m_flags |= b2Body.e_islandFlag;
               while(_loc12_ > 0)
               {
                  _loc3_ = _loc9_[--_loc12_];
                  _loc5_.AddBody(_loc3_);
                  _loc3_.m_flags &= ~b2Body.e_sleepFlag;
                  if(!(_loc3_.m_flags & b2Body.e_staticFlag))
                  {
                     _loc14_ = _loc3_.m_contactList;
                     while(_loc14_ != null)
                     {
                        if(!(_loc14_.contact.m_flags & b2Contact.e_islandFlag))
                        {
                           _loc5_.AddContact(_loc14_.contact);
                           _loc14_.contact.m_flags |= b2Contact.e_islandFlag;
                           _loc4_ = _loc14_.other;
                           if(!(_loc4_.m_flags & b2Body.e_islandFlag))
                           {
                              var _loc18_:*;
                              _loc9_[_loc18_ = _loc12_++] = _loc4_;
                              _loc4_.m_flags |= b2Body.e_islandFlag;
                           }
                        }
                        _loc14_ = _loc14_.next;
                     }
                     _loc15_ = _loc3_.m_jointList;
                     while(_loc15_ != null)
                     {
                        if(_loc15_.joint.m_islandFlag != true)
                        {
                           _loc5_.AddJoint(_loc15_.joint);
                           _loc15_.joint.m_islandFlag = true;
                           _loc4_ = _loc15_.other;
                           if(!(_loc4_.m_flags & b2Body.e_islandFlag))
                           {
                              _loc9_[_loc18_ = _loc12_++] = _loc4_;
                              _loc4_.m_flags |= b2Body.e_islandFlag;
                           }
                        }
                        _loc15_ = _loc15_.next;
                     }
                  }
               }
               _loc5_.Solve(step,m_gravity);
               m_positionIterationCount = b2Math.b2Max(m_positionIterationCount,b2Island.m_positionIterationCount);
               if(m_doSleep)
               {
                  _loc5_.UpdateSleep(param1);
               }
               _loc13_ = 0;
               while(_loc13_ < _loc5_.m_bodyCount)
               {
                  _loc3_ = _loc5_.m_bodies[_loc13_];
                  if(_loc3_.m_flags & b2Body.e_staticFlag)
                  {
                     _loc3_.m_flags &= ~b2Body.e_islandFlag;
                  }
                  if(_loc3_.IsFrozen() && Boolean(m_listener))
                  {
                     _loc16_ = m_listener.NotifyBoundaryViolated(_loc3_);
                     if(_loc16_ == b2WorldListener.b2_destroyBody)
                     {
                        DestroyBody(_loc3_);
                        _loc3_ = null;
                        _loc5_.m_bodies[_loc13_] = null;
                     }
                  }
                  _loc13_++;
               }
            }
            _loc11_ = _loc11_.m_next;
         }
         m_broadPhase.Flush();
      }
      
      public function GetJointList() : b2Joint
      {
         return m_jointList;
      }
      
      public function GetBodyList() : b2Body
      {
         return m_bodyList;
      }
   }
}

