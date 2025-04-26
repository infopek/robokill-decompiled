package Engine.Dynamics
{
   import Engine.Collision.Shapes.b2MassData;
   import Engine.Collision.Shapes.b2Shape;
   import Engine.Collision.Shapes.b2ShapeDef;
   import Engine.Common.Math.b2Mat22;
   import Engine.Common.Math.b2Math;
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   import Engine.Dynamics.Contacts.b2ContactNode;
   import Engine.Dynamics.Joints.b2JointNode;
   
   public class b2Body
   {
      public static var e_staticFlag:uint = 1;
      
      public static var e_frozenFlag:uint = 2;
      
      public static var e_islandFlag:uint = 4;
      
      public static var e_sleepFlag:uint = 8;
      
      public static var e_allowSleepFlag:uint = 16;
      
      public static var e_destroyFlag:uint = 32;
      
      public var m_next:b2Body;
      
      public var m_R:b2Mat22;
      
      public var m_contactList:b2ContactNode;
      
      public var m_angularVelocity:Number;
      
      public var m_rotation:Number;
      
      public var m_shapeList:b2Shape;
      
      public var m_force:b2Vec2;
      
      public var m_torque:Number;
      
      public var m_mass:Number;
      
      public var m_userData:*;
      
      public var m_invI:Number;
      
      public var m_shapeCount:int;
      
      public var m_linearVelocity:b2Vec2;
      
      public var m_invMass:Number;
      
      public var m_position:b2Vec2;
      
      public var m_flags:uint;
      
      public var m_world:b2World;
      
      public var m_linearDamping:Number;
      
      public var m_prev:b2Body;
      
      public var m_angularDamping:Number;
      
      public var m_center:b2Vec2;
      
      public var m_sleepTime:Number;
      
      public var m_I:Number;
      
      public var m_jointList:b2JointNode;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc3_:int = 0;
         var _loc4_:b2ShapeDef = null;
         var _loc5_:b2MassData = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Shape = null;
         m_position = new b2Vec2();
         m_R = new b2Mat22(0);
         super();
         m_flags = 0;
         m_position.SetV(param1.position);
         m_rotation = param1.rotation;
         m_R.Set(m_rotation);
         m_world = param2;
         m_linearDamping = b2Math.b2Clamp(1 - param1.linearDamping,0,1);
         m_angularDamping = b2Math.b2Clamp(1 - param1.angularDamping,0,1);
         m_force = new b2Vec2(0,0);
         m_torque = 0;
         m_mass = 0;
         var _loc6_:Array = new Array(b2Settings.b2_maxShapesPerBody);
         _loc3_ = 0;
         while(_loc3_ < b2Settings.b2_maxShapesPerBody)
         {
            _loc6_[_loc3_] = new b2MassData();
            _loc3_++;
         }
         m_shapeCount = 0;
         m_center = new b2Vec2(0,0);
         _loc3_ = 0;
         while(_loc3_ < b2Settings.b2_maxShapesPerBody)
         {
            _loc4_ = param1.shapes[_loc3_];
            if(_loc4_ == null)
            {
               break;
            }
            _loc5_ = _loc6_[_loc3_];
            _loc4_.ComputeMass(_loc5_);
            m_mass += _loc5_.mass;
            m_center.Add(b2Math.MulFV(_loc5_.mass,b2Math.AddVV(_loc4_.localPosition,_loc5_.center)));
            ++m_shapeCount;
            _loc3_++;
         }
         if(m_mass > 0)
         {
            m_center.Multiply(1 / m_mass);
            m_position.Add(b2Math.b2MulMV(m_R,m_center));
         }
         else
         {
            m_flags |= e_staticFlag;
         }
         m_I = 0;
         _loc3_ = 0;
         while(_loc3_ < m_shapeCount)
         {
            _loc4_ = param1.shapes[_loc3_];
            _loc5_ = _loc6_[_loc3_];
            m_I += _loc5_.I;
            _loc7_ = b2Math.SubtractVV(b2Math.AddVV(_loc4_.localPosition,_loc5_.center),m_center);
            m_I += _loc5_.mass * b2Math.b2Dot(_loc7_,_loc7_);
            _loc3_++;
         }
         if(m_mass > 0)
         {
            m_invMass = 1 / m_mass;
         }
         else
         {
            m_invMass = 0;
         }
         if(m_I > 0 && param1.preventRotation == false)
         {
            m_invI = 1 / m_I;
         }
         else
         {
            m_I = 0;
            m_invI = 0;
         }
         m_linearVelocity = b2Math.AddVV(param1.linearVelocity,b2Math.b2CrossFV(param1.angularVelocity,m_center));
         m_angularVelocity = param1.angularVelocity;
         m_jointList = null;
         m_contactList = null;
         m_prev = null;
         m_next = null;
         m_shapeList = null;
         _loc3_ = 0;
         while(_loc3_ < m_shapeCount)
         {
            _loc4_ = param1.shapes[_loc3_];
            _loc8_ = b2Shape.Create(_loc4_,this,m_center);
            _loc8_.m_next = m_shapeList;
            m_shapeList = _loc8_;
            _loc3_++;
         }
         m_sleepTime = 0;
         if(param1.allowSleep)
         {
            m_flags |= e_allowSleepFlag;
         }
         if(param1.isSleeping)
         {
            m_flags |= e_sleepFlag;
         }
         if(Boolean(m_flags & e_sleepFlag) || m_invMass == 0)
         {
            m_linearVelocity.Set(0,0);
            m_angularVelocity = 0;
         }
         m_userData = param1.userData;
      }
      
      public function SetCenterPosition(param1:b2Vec2, param2:Number) : *
      {
         if(IsFrozen())
         {
            return;
         }
         m_rotation = param2;
         m_R.Set(m_rotation);
         m_position.SetV(param1);
         var _loc3_:b2Shape = m_shapeList;
         while(_loc3_ != null)
         {
            _loc3_.Synchronize(m_position,m_R);
            _loc3_ = _loc3_.m_next;
         }
         m_world.m_broadPhase.Flush();
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.AddVV(m_position,b2Math.b2MulMV(m_R,param1));
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : *
      {
         m_linearVelocity.SetV(param1);
      }
      
      public function WakeUp() : *
      {
         m_flags &= ~e_sleepFlag;
         m_sleepTime = 0;
      }
      
      public function IsFrozen() : Boolean
      {
         return (m_flags & e_frozenFlag) == e_frozenFlag;
      }
      
      public function IsSleeping() : Boolean
      {
         return (m_flags & e_sleepFlag) == e_sleepFlag;
      }
      
      public function GetInertia() : Number
      {
         return m_I;
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.b2MulTMV(m_R,param1);
      }
      
      public function GetJointList() : b2JointNode
      {
         return m_jointList;
      }
      
      public function GetRotationMatrix() : b2Mat22
      {
         return m_R;
      }
      
      public function Freeze() : *
      {
         m_flags |= e_frozenFlag;
         m_linearVelocity.SetZero();
         m_angularVelocity = 0;
      }
      
      public function SetAngularVelocity(param1:Number) : *
      {
         m_angularVelocity = param1;
      }
      
      public function SynchronizeShapes() : *
      {
         var _loc1_:b2Shape = m_shapeList;
         while(_loc1_ != null)
         {
            _loc1_.Synchronize(m_position,m_R);
            _loc1_ = _loc1_.m_next;
         }
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : *
      {
         if(IsSleeping() == false)
         {
            m_force.Add(param1);
            m_torque += b2Math.b2CrossVV(b2Math.SubtractVV(param2,m_position),param1);
         }
      }
      
      public function GetOriginPosition() : b2Vec2
      {
         return b2Math.SubtractVV(m_position,b2Math.b2MulMV(m_R,m_center));
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : *
      {
         if(IsSleeping() == false)
         {
            m_linearVelocity.Add(b2Math.MulFV(m_invMass,param1));
            m_angularVelocity += m_invI * b2Math.b2CrossVV(b2Math.SubtractVV(param2,m_position),param1);
         }
      }
      
      public function GetContactList() : b2ContactNode
      {
         return m_contactList;
      }
      
      public function GetShapeList() : b2Shape
      {
         return m_shapeList;
      }
      
      public function GetMass() : Number
      {
         return m_mass;
      }
      
      public function GetAngularVelocity() : Number
      {
         return m_angularVelocity;
      }
      
      public function SetOriginPosition(param1:b2Vec2, param2:Number) : *
      {
         if(IsFrozen())
         {
            return;
         }
         m_rotation = param2;
         m_R.Set(m_rotation);
         m_position = b2Math.AddVV(param1,b2Math.b2MulMV(m_R,m_center));
         var _loc3_:b2Shape = m_shapeList;
         while(_loc3_ != null)
         {
            _loc3_.Synchronize(m_position,m_R);
            _loc3_ = _loc3_.m_next;
         }
         m_world.m_broadPhase.Flush();
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.b2MulTMV(m_R,b2Math.SubtractVV(param1,m_position));
      }
      
      public function GetRotation() : Number
      {
         return m_rotation;
      }
      
      public function IsStatic() : Boolean
      {
         return (m_flags & e_staticFlag) == e_staticFlag;
      }
      
      public function Destroy() : *
      {
         var _loc2_:b2Shape = null;
         var _loc1_:b2Shape = m_shapeList;
         while(_loc1_)
         {
            _loc2_ = _loc1_;
            _loc1_ = _loc1_.m_next;
            b2Shape.Destroy(_loc2_);
         }
      }
      
      public function GetWorldVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.b2MulMV(m_R,param1);
      }
      
      public function GetNext() : b2Body
      {
         return m_next;
      }
      
      public function IsConnected(param1:b2Body) : Boolean
      {
         var _loc2_:b2JointNode = m_jointList;
         while(_loc2_ != null)
         {
            if(_loc2_.other == param1)
            {
               return _loc2_.joint.m_collideConnected == false;
            }
            _loc2_ = _loc2_.next;
         }
         return false;
      }
      
      public function GetUserData() : *
      {
         return m_userData;
      }
      
      public function AllowSleeping(param1:Boolean) : *
      {
         if(param1)
         {
            m_flags |= e_allowSleepFlag;
         }
         else
         {
            m_flags &= ~e_allowSleepFlag;
            WakeUp();
         }
      }
      
      public function ApplyTorque(param1:Number) : *
      {
         if(IsSleeping() == false)
         {
            m_torque += param1;
         }
      }
      
      public function GetCenterPosition() : b2Vec2
      {
         return m_position;
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return m_linearVelocity;
      }
   }
}

