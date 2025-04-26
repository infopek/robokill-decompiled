package Engine.Dynamics.Joints
{
   import Engine.Common.Math.b2Mat22;
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   import Engine.Dynamics.b2Body;
   import Engine.Dynamics.b2StepInfo;
   
   public class b2GearJoint extends b2Joint
   {
      public var m_ground2:b2Body;
      
      public var m_groundAnchor1:b2Vec2;
      
      public var m_groundAnchor2:b2Vec2;
      
      public var m_revolute2:b2RevoluteJoint;
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_ratio:Number;
      
      public var m_mass:Number;
      
      public var m_impulse:Number;
      
      public var m_prismatic2:b2PrismaticJoint;
      
      public var m_ground1:b2Body;
      
      public var m_revolute1:b2RevoluteJoint;
      
      public var m_prismatic1:b2PrismaticJoint;
      
      public var m_constant:Number;
      
      public var m_J:b2Jacobian;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         m_groundAnchor1 = new b2Vec2();
         m_groundAnchor2 = new b2Vec2();
         m_localAnchor1 = new b2Vec2();
         m_localAnchor2 = new b2Vec2();
         m_J = new b2Jacobian();
         super(param1);
         m_revolute1 = null;
         m_prismatic1 = null;
         m_revolute2 = null;
         m_prismatic2 = null;
         m_ground1 = param1.joint1.m_body1;
         m_body1 = param1.joint1.m_body2;
         if(param1.joint1.m_type == b2Joint.e_revoluteJoint)
         {
            m_revolute1 = param1.joint1 as b2RevoluteJoint;
            m_groundAnchor1.SetV(m_revolute1.m_localAnchor1);
            m_localAnchor1.SetV(m_revolute1.m_localAnchor2);
            _loc2_ = m_revolute1.GetJointAngle();
         }
         else
         {
            m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            m_groundAnchor1.SetV(m_prismatic1.m_localAnchor1);
            m_localAnchor1.SetV(m_prismatic1.m_localAnchor2);
            _loc2_ = m_prismatic1.GetJointTranslation();
         }
         m_ground2 = param1.joint2.m_body1;
         m_body2 = param1.joint2.m_body2;
         if(param1.joint2.m_type == b2Joint.e_revoluteJoint)
         {
            m_revolute2 = param1.joint2 as b2RevoluteJoint;
            m_groundAnchor2.SetV(m_revolute2.m_localAnchor1);
            m_localAnchor2.SetV(m_revolute2.m_localAnchor2);
            _loc3_ = m_revolute2.GetJointAngle();
         }
         else
         {
            m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            m_groundAnchor2.SetV(m_prismatic2.m_localAnchor1);
            m_localAnchor2.SetV(m_prismatic2.m_localAnchor2);
            _loc3_ = m_prismatic2.GetJointTranslation();
         }
         m_ratio = param1.ratio;
         m_constant = _loc2_ + m_ratio * _loc3_;
         m_impulse = 0;
      }
      
      override public function GetAnchor1() : b2Vec2
      {
         var _loc1_:b2Mat22 = m_body1.m_R;
         return new b2Vec2(m_body1.m_position.x + (_loc1_.col1.x * m_localAnchor1.x + _loc1_.col2.x * m_localAnchor1.y),m_body1.m_position.y + (_loc1_.col1.y * m_localAnchor1.x + _loc1_.col2.y * m_localAnchor1.y));
      }
      
      override public function GetAnchor2() : b2Vec2
      {
         var _loc1_:b2Mat22 = m_body2.m_R;
         return new b2Vec2(m_body2.m_position.x + (_loc1_.col1.x * m_localAnchor2.x + _loc1_.col2.x * m_localAnchor2.y),m_body2.m_position.y + (_loc1_.col1.y * m_localAnchor2.x + _loc1_.col2.y * m_localAnchor2.y));
      }
      
      override public function PrepareVelocitySolver() : *
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:b2Mat22 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Number = NaN;
         var _loc1_:b2Body = m_ground1;
         var _loc2_:b2Body = m_ground2;
         _loc3_ = m_body1;
         _loc4_ = m_body2;
         var _loc12_:Number = 0;
         m_J.SetZero();
         if(m_revolute1)
         {
            m_J.angular1 = -1;
            _loc12_ += _loc3_.m_invI;
         }
         else
         {
            _loc9_ = _loc1_.m_R;
            _loc10_ = m_prismatic1.m_localXAxis1;
            _loc5_ = _loc9_.col1.x * _loc10_.x + _loc9_.col2.x * _loc10_.y;
            _loc6_ = _loc9_.col1.y * _loc10_.x + _loc9_.col2.y * _loc10_.y;
            _loc9_ = _loc3_.m_R;
            _loc7_ = _loc9_.col1.x * m_localAnchor1.x + _loc9_.col2.x * m_localAnchor1.y;
            _loc8_ = _loc9_.col1.y * m_localAnchor1.x + _loc9_.col2.y * m_localAnchor1.y;
            _loc11_ = _loc7_ * _loc6_ - _loc8_ * _loc5_;
            m_J.linear1.Set(-_loc5_,-_loc6_);
            m_J.angular1 = -_loc11_;
            _loc12_ += _loc3_.m_invMass + _loc3_.m_invI * _loc11_ * _loc11_;
         }
         if(m_revolute2)
         {
            m_J.angular2 = -m_ratio;
            _loc12_ += m_ratio * m_ratio * _loc4_.m_invI;
         }
         else
         {
            _loc9_ = _loc2_.m_R;
            _loc10_ = m_prismatic2.m_localXAxis1;
            _loc5_ = _loc9_.col1.x * _loc10_.x + _loc9_.col2.x * _loc10_.y;
            _loc6_ = _loc9_.col1.y * _loc10_.x + _loc9_.col2.y * _loc10_.y;
            _loc9_ = _loc4_.m_R;
            _loc7_ = _loc9_.col1.x * m_localAnchor2.x + _loc9_.col2.x * m_localAnchor2.y;
            _loc8_ = _loc9_.col1.y * m_localAnchor2.x + _loc9_.col2.y * m_localAnchor2.y;
            _loc11_ = _loc7_ * _loc6_ - _loc8_ * _loc5_;
            m_J.linear2.Set(-m_ratio * _loc5_,-m_ratio * _loc6_);
            m_J.angular2 = -m_ratio * _loc11_;
            _loc12_ += m_ratio * m_ratio * (_loc4_.m_invMass + _loc4_.m_invI * _loc11_ * _loc11_);
         }
         m_mass = 1 / _loc12_;
         _loc3_.m_linearVelocity.x += _loc3_.m_invMass * m_impulse * m_J.linear1.x;
         _loc3_.m_linearVelocity.y += _loc3_.m_invMass * m_impulse * m_J.linear1.y;
         _loc3_.m_angularVelocity += _loc3_.m_invI * m_impulse * m_J.angular1;
         _loc4_.m_linearVelocity.x += _loc4_.m_invMass * m_impulse * m_J.linear2.x;
         _loc4_.m_linearVelocity.y += _loc4_.m_invMass * m_impulse * m_J.linear2.y;
         _loc4_.m_angularVelocity += _loc4_.m_invI * m_impulse * m_J.angular2;
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2();
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Number = 0;
         var _loc2_:b2Body = m_body1;
         var _loc3_:b2Body = m_body2;
         if(m_revolute1)
         {
            _loc4_ = m_revolute1.GetJointAngle();
         }
         else
         {
            _loc4_ = m_prismatic1.GetJointTranslation();
         }
         if(m_revolute2)
         {
            _loc5_ = m_revolute2.GetJointAngle();
         }
         else
         {
            _loc5_ = m_prismatic2.GetJointTranslation();
         }
         var _loc6_:Number = m_constant - (_loc4_ + m_ratio * _loc5_);
         var _loc7_:Number = -m_mass * _loc6_;
         _loc2_.m_position.x += _loc2_.m_invMass * _loc7_ * m_J.linear1.x;
         _loc2_.m_position.y += _loc2_.m_invMass * _loc7_ * m_J.linear1.y;
         _loc2_.m_rotation += _loc2_.m_invI * _loc7_ * m_J.angular1;
         _loc3_.m_position.x += _loc3_.m_invMass * _loc7_ * m_J.linear2.x;
         _loc3_.m_position.y += _loc3_.m_invMass * _loc7_ * m_J.linear2.y;
         _loc3_.m_rotation += _loc3_.m_invI * _loc7_ * m_J.angular2;
         _loc2_.m_R.Set(_loc2_.m_rotation);
         _loc3_.m_R.Set(_loc3_.m_rotation);
         return _loc1_ < b2Settings.b2_linearSlop;
      }
      
      public function GetRatio() : Number
      {
         return m_ratio;
      }
      
      override public function SolveVelocityConstraints(param1:b2StepInfo) : *
      {
         var _loc2_:b2Body = m_body1;
         var _loc3_:b2Body = m_body2;
         var _loc4_:Number = m_J.Compute(_loc2_.m_linearVelocity,_loc2_.m_angularVelocity,_loc3_.m_linearVelocity,_loc3_.m_angularVelocity);
         var _loc5_:Number = -m_mass * _loc4_;
         m_impulse += _loc5_;
         _loc2_.m_linearVelocity.x += _loc2_.m_invMass * _loc5_ * m_J.linear1.x;
         _loc2_.m_linearVelocity.y += _loc2_.m_invMass * _loc5_ * m_J.linear1.y;
         _loc2_.m_angularVelocity += _loc2_.m_invI * _loc5_ * m_J.angular1;
         _loc3_.m_linearVelocity.x += _loc3_.m_invMass * _loc5_ * m_J.linear2.x;
         _loc3_.m_linearVelocity.y += _loc3_.m_invMass * _loc5_ * m_J.linear2.y;
         _loc3_.m_angularVelocity += _loc3_.m_invI * _loc5_ * m_J.angular2;
      }
   }
}

