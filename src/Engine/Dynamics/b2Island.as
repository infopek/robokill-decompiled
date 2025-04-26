package Engine.Dynamics
{
   import Engine.Common.*;
   import Engine.Common.Math.*;
   import Engine.Dynamics.Contacts.*;
   import Engine.Dynamics.Joints.*;
   
   public class b2Island
   {
      public static var m_positionIterationCount:*;
      
      public var m_positionError:Number;
      
      public var m_bodyCapacity:int;
      
      public var m_bodies:Array;
      
      public var m_joints:Array;
      
      public var m_jointCapacity:int;
      
      public var m_contactCount:int;
      
      public var m_contacts:Array;
      
      public var m_contactCapacity:int;
      
      public var m_jointCount:int;
      
      public var m_allocator:*;
      
      public var m_bodyCount:int;
      
      public function b2Island(param1:int, param2:int, param3:int, param4:*)
      {
         var _loc5_:int = 0;
         super();
         m_bodyCapacity = param1;
         m_contactCapacity = param2;
         m_jointCapacity = param3;
         m_bodyCount = 0;
         m_contactCount = 0;
         m_jointCount = 0;
         m_bodies = new Array(param1);
         _loc5_ = 0;
         while(_loc5_ < param1)
         {
            m_bodies[_loc5_] = null;
            _loc5_++;
         }
         m_contacts = new Array(param2);
         _loc5_ = 0;
         while(_loc5_ < param2)
         {
            m_contacts[_loc5_] = null;
            _loc5_++;
         }
         m_joints = new Array(param3);
         _loc5_ = 0;
         while(_loc5_ < param3)
         {
            m_joints[_loc5_] = null;
            _loc5_++;
         }
         m_allocator = param4;
      }
      
      public function AddBody(param1:b2Body) : *
      {
         var _loc2_:* = m_bodyCount++;
         m_bodies[_loc2_] = param1;
      }
      
      public function AddJoint(param1:b2Joint) : *
      {
         var _loc2_:* = m_jointCount++;
         m_joints[_loc2_] = param1;
      }
      
      public function AddContact(param1:b2Contact) : *
      {
         var _loc2_:* = m_contactCount++;
         m_contacts[_loc2_] = param1;
      }
      
      public function Solve(param1:b2StepInfo, param2:b2Vec2) : *
      {
         var _loc3_:int = 0;
         var _loc4_:b2Body = null;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         _loc3_ = 0;
         while(_loc3_ < m_bodyCount)
         {
            _loc4_ = m_bodies[_loc3_];
            if(_loc4_.m_invMass != 0)
            {
               _loc4_.m_linearVelocity.Add(b2Math.MulFV(param1.dt,b2Math.AddVV(param2,b2Math.MulFV(_loc4_.m_invMass,_loc4_.m_force))));
               _loc4_.m_angularVelocity += param1.dt * _loc4_.m_invI * _loc4_.m_torque;
               _loc4_.m_linearVelocity.Multiply(_loc4_.m_linearDamping);
               _loc4_.m_angularVelocity *= _loc4_.m_angularDamping;
            }
            _loc3_++;
         }
         var _loc5_:b2ContactSolver = new b2ContactSolver(m_contacts,m_contactCount,m_allocator);
         _loc5_.PreSolve();
         _loc3_ = 0;
         while(_loc3_ < m_jointCount)
         {
            m_joints[_loc3_].PrepareVelocitySolver();
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param1.iterations)
         {
            _loc5_.SolveVelocityConstraints();
            _loc6_ = 0;
            while(_loc6_ < m_jointCount)
            {
               m_joints[_loc6_].SolveVelocityConstraints(param1);
               _loc6_++;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < m_bodyCount)
         {
            _loc4_ = m_bodies[_loc3_];
            if(_loc4_.m_invMass != 0)
            {
               _loc4_.m_position.x += param1.dt * _loc4_.m_linearVelocity.x;
               _loc4_.m_position.y += param1.dt * _loc4_.m_linearVelocity.y;
               _loc4_.m_rotation += param1.dt * _loc4_.m_angularVelocity;
               _loc4_.m_R.Set(_loc4_.m_rotation);
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < m_jointCount)
         {
            m_joints[_loc3_].PreparePositionSolver();
            _loc3_++;
         }
         if(b2World.s_enablePositionCorrection)
         {
            m_positionIterationCount = 0;
            while(m_positionIterationCount < param1.iterations)
            {
               _loc7_ = _loc5_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc8_ = true;
               _loc3_ = 0;
               while(_loc3_ < m_jointCount)
               {
                  _loc9_ = Boolean(m_joints[_loc3_].SolvePositionConstraints());
                  _loc8_ &&= _loc9_;
                  _loc3_++;
               }
               if(_loc7_ && _loc8_)
               {
                  break;
               }
               ++m_positionIterationCount;
            }
         }
         _loc5_.PostSolve();
         _loc3_ = 0;
         while(_loc3_ < m_bodyCount)
         {
            _loc4_ = m_bodies[_loc3_];
            if(_loc4_.m_invMass != 0)
            {
               _loc4_.m_R.Set(_loc4_.m_rotation);
               _loc4_.SynchronizeShapes();
               _loc4_.m_force.Set(0,0);
               _loc4_.m_torque = 0;
            }
            _loc3_++;
         }
      }
      
      public function Clear() : *
      {
         m_bodyCount = 0;
         m_contactCount = 0;
         m_jointCount = 0;
      }
      
      public function UpdateSleep(param1:Number) : *
      {
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
         var _loc6_:Number = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
         _loc2_ = 0;
         while(_loc2_ < m_bodyCount)
         {
            _loc3_ = m_bodies[_loc2_];
            if(_loc3_.m_invMass != 0)
            {
               if((_loc3_.m_flags & b2Body.e_allowSleepFlag) == 0)
               {
                  _loc3_.m_sleepTime = 0;
                  _loc4_ = 0;
               }
               if((_loc3_.m_flags & b2Body.e_allowSleepFlag) == 0 || _loc3_.m_angularVelocity * _loc3_.m_angularVelocity > _loc6_ || b2Math.b2Dot(_loc3_.m_linearVelocity,_loc3_.m_linearVelocity) > _loc5_)
               {
                  _loc3_.m_sleepTime = 0;
                  _loc4_ = 0;
               }
               else
               {
                  _loc3_.m_sleepTime += param1;
                  _loc4_ = b2Math.b2Min(_loc4_,_loc3_.m_sleepTime);
               }
            }
            _loc2_++;
         }
         if(_loc4_ >= b2Settings.b2_timeToSleep)
         {
            _loc2_ = 0;
            while(_loc2_ < m_bodyCount)
            {
               _loc3_ = m_bodies[_loc2_];
               _loc3_.m_flags |= b2Body.e_sleepFlag;
               _loc2_++;
            }
         }
      }
   }
}

