package Engine.Dynamics.Joints
{
   import Engine.Common.Math.b2Mat22;
   import Engine.Common.Math.b2Math;
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   import Engine.Dynamics.b2Body;
   import Engine.Dynamics.b2StepInfo;
   
   public class b2PulleyJoint extends b2Joint
   {
      public static var b2_minPulleyLength:Number = b2Settings.b2_lengthUnitsPerMeter;
      
      public var m_limitState1:int;
      
      public var m_limitState2:int;
      
      public var m_ground:b2Body;
      
      public var m_maxLength2:Number;
      
      public var m_maxLength1:Number;
      
      public var m_limitPositionImpulse1:Number;
      
      public var m_limitPositionImpulse2:Number;
      
      public var m_pulleyImpulse:Number;
      
      public var m_constant:Number;
      
      public var m_ratio:Number;
      
      public var m_groundAnchor1:b2Vec2;
      
      public var m_groundAnchor2:b2Vec2;
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_limitMass1:Number;
      
      public var m_limitMass2:Number;
      
      public var m_limitImpulse1:Number;
      
      public var m_pulleyMass:Number;
      
      public var m_u1:b2Vec2;
      
      public var m_u2:b2Vec2;
      
      public var m_limitImpulse2:Number;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         m_groundAnchor1 = new b2Vec2();
         m_groundAnchor2 = new b2Vec2();
         m_localAnchor1 = new b2Vec2();
         m_localAnchor2 = new b2Vec2();
         m_u1 = new b2Vec2();
         m_u2 = new b2Vec2();
         super(param1);
         m_ground = m_body1.m_world.m_groundBody;
         m_groundAnchor1.x = param1.groundPoint1.x - m_ground.m_position.x;
         m_groundAnchor1.y = param1.groundPoint1.y - m_ground.m_position.y;
         m_groundAnchor2.x = param1.groundPoint2.x - m_ground.m_position.x;
         m_groundAnchor2.y = param1.groundPoint2.y - m_ground.m_position.y;
         _loc2_ = m_body1.m_R;
         _loc3_ = param1.anchorPoint1.x - m_body1.m_position.x;
         _loc4_ = param1.anchorPoint1.y - m_body1.m_position.y;
         m_localAnchor1.x = _loc3_ * _loc2_.col1.x + _loc4_ * _loc2_.col1.y;
         m_localAnchor1.y = _loc3_ * _loc2_.col2.x + _loc4_ * _loc2_.col2.y;
         _loc2_ = m_body2.m_R;
         _loc3_ = param1.anchorPoint2.x - m_body2.m_position.x;
         _loc4_ = param1.anchorPoint2.y - m_body2.m_position.y;
         m_localAnchor2.x = _loc3_ * _loc2_.col1.x + _loc4_ * _loc2_.col1.y;
         m_localAnchor2.y = _loc3_ * _loc2_.col2.x + _loc4_ * _loc2_.col2.y;
         m_ratio = param1.ratio;
         _loc3_ = param1.groundPoint1.x - param1.anchorPoint1.x;
         _loc4_ = param1.groundPoint1.y - param1.anchorPoint1.y;
         var _loc5_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         _loc3_ = param1.groundPoint2.x - param1.anchorPoint2.x;
         _loc4_ = param1.groundPoint2.y - param1.anchorPoint2.y;
         var _loc6_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         var _loc7_:Number = b2Math.b2Max(0.5 * b2_minPulleyLength,_loc5_);
         var _loc8_:Number = b2Math.b2Max(0.5 * b2_minPulleyLength,_loc6_);
         m_constant = _loc7_ + m_ratio * _loc8_;
         m_maxLength1 = b2Math.b2Clamp(param1.maxLength1,_loc7_,m_constant - m_ratio * b2_minPulleyLength);
         m_maxLength2 = b2Math.b2Clamp(param1.maxLength2,_loc8_,(m_constant - b2_minPulleyLength) / m_ratio);
         m_pulleyImpulse = 0;
         m_limitImpulse1 = 0;
         m_limitImpulse2 = 0;
      }
      
      public function GetLength1() : Number
      {
         var _loc1_:b2Mat22 = null;
         _loc1_ = m_body1.m_R;
         var _loc2_:Number = m_body1.m_position.x + (_loc1_.col1.x * m_localAnchor1.x + _loc1_.col2.x * m_localAnchor1.y);
         var _loc3_:Number = m_body1.m_position.y + (_loc1_.col1.y * m_localAnchor1.x + _loc1_.col2.y * m_localAnchor1.y);
         var _loc4_:Number = _loc2_ - (m_ground.m_position.x + m_groundAnchor1.x);
         var _loc5_:Number = _loc3_ - (m_ground.m_position.y + m_groundAnchor1.y);
         return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
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
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = m_body1;
         var _loc2_:b2Body = m_body2;
         _loc3_ = _loc1_.m_R;
         var _loc4_:Number = _loc3_.col1.x * m_localAnchor1.x + _loc3_.col2.x * m_localAnchor1.y;
         var _loc5_:Number = _loc3_.col1.y * m_localAnchor1.x + _loc3_.col2.y * m_localAnchor1.y;
         _loc3_ = _loc2_.m_R;
         var _loc6_:Number = _loc3_.col1.x * m_localAnchor2.x + _loc3_.col2.x * m_localAnchor2.y;
         var _loc7_:Number = _loc3_.col1.y * m_localAnchor2.x + _loc3_.col2.y * m_localAnchor2.y;
         var _loc8_:Number = _loc1_.m_position.x + _loc4_;
         var _loc9_:Number = _loc1_.m_position.y + _loc5_;
         var _loc10_:Number = _loc2_.m_position.x + _loc6_;
         var _loc11_:Number = _loc2_.m_position.y + _loc7_;
         var _loc12_:Number = m_ground.m_position.x + m_groundAnchor1.x;
         var _loc13_:Number = m_ground.m_position.y + m_groundAnchor1.y;
         var _loc14_:Number = m_ground.m_position.x + m_groundAnchor2.x;
         var _loc15_:Number = m_ground.m_position.y + m_groundAnchor2.y;
         m_u1.Set(_loc8_ - _loc12_,_loc9_ - _loc13_);
         m_u2.Set(_loc10_ - _loc14_,_loc11_ - _loc15_);
         var _loc16_:Number = m_u1.Length();
         var _loc17_:Number = m_u2.Length();
         if(_loc16_ > b2Settings.b2_linearSlop)
         {
            m_u1.Multiply(1 / _loc16_);
         }
         else
         {
            m_u1.SetZero();
         }
         if(_loc17_ > b2Settings.b2_linearSlop)
         {
            m_u2.Multiply(1 / _loc17_);
         }
         else
         {
            m_u2.SetZero();
         }
         if(_loc16_ < m_maxLength1)
         {
            m_limitState1 = e_inactiveLimit;
            m_limitImpulse1 = 0;
         }
         else
         {
            m_limitState1 = e_atUpperLimit;
            m_limitPositionImpulse1 = 0;
         }
         if(_loc17_ < m_maxLength2)
         {
            m_limitState2 = e_inactiveLimit;
            m_limitImpulse2 = 0;
         }
         else
         {
            m_limitState2 = e_atUpperLimit;
            m_limitPositionImpulse2 = 0;
         }
         var _loc18_:Number = _loc4_ * m_u1.y - _loc5_ * m_u1.x;
         var _loc19_:Number = _loc6_ * m_u2.y - _loc7_ * m_u2.x;
         m_limitMass1 = _loc1_.m_invMass + _loc1_.m_invI * _loc18_ * _loc18_;
         m_limitMass2 = _loc2_.m_invMass + _loc2_.m_invI * _loc19_ * _loc19_;
         m_pulleyMass = m_limitMass1 + m_ratio * m_ratio * m_limitMass2;
         m_limitMass1 = 1 / m_limitMass1;
         m_limitMass2 = 1 / m_limitMass2;
         m_pulleyMass = 1 / m_pulleyMass;
         var _loc20_:Number = (-m_pulleyImpulse - m_limitImpulse1) * m_u1.x;
         var _loc21_:Number = (-m_pulleyImpulse - m_limitImpulse1) * m_u1.y;
         var _loc22_:Number = (-m_ratio * m_pulleyImpulse - m_limitImpulse2) * m_u2.x;
         var _loc23_:Number = (-m_ratio * m_pulleyImpulse - m_limitImpulse2) * m_u2.y;
         _loc1_.m_linearVelocity.x += _loc1_.m_invMass * _loc20_;
         _loc1_.m_linearVelocity.y += _loc1_.m_invMass * _loc21_;
         _loc1_.m_angularVelocity += _loc1_.m_invI * (_loc4_ * _loc21_ - _loc5_ * _loc20_);
         _loc2_.m_linearVelocity.x += _loc2_.m_invMass * _loc22_;
         _loc2_.m_linearVelocity.y += _loc2_.m_invMass * _loc23_;
         _loc2_.m_angularVelocity += _loc2_.m_invI * (_loc6_ * _loc23_ - _loc7_ * _loc22_);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2();
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         var _loc3_:b2Mat22 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc1_:b2Body = m_body1;
         var _loc2_:b2Body = m_body2;
         var _loc4_:Number = m_ground.m_position.x + m_groundAnchor1.x;
         var _loc5_:Number = m_ground.m_position.y + m_groundAnchor1.y;
         var _loc6_:Number = m_ground.m_position.x + m_groundAnchor2.x;
         var _loc7_:Number = m_ground.m_position.y + m_groundAnchor2.y;
         var _loc21_:Number = 0;
         _loc3_ = _loc1_.m_R;
         _loc8_ = _loc3_.col1.x * m_localAnchor1.x + _loc3_.col2.x * m_localAnchor1.y;
         _loc9_ = _loc3_.col1.y * m_localAnchor1.x + _loc3_.col2.y * m_localAnchor1.y;
         _loc3_ = _loc2_.m_R;
         _loc10_ = _loc3_.col1.x * m_localAnchor2.x + _loc3_.col2.x * m_localAnchor2.y;
         _loc11_ = _loc3_.col1.y * m_localAnchor2.x + _loc3_.col2.y * m_localAnchor2.y;
         _loc12_ = _loc1_.m_position.x + _loc8_;
         _loc13_ = _loc1_.m_position.y + _loc9_;
         _loc14_ = _loc2_.m_position.x + _loc10_;
         _loc15_ = _loc2_.m_position.y + _loc11_;
         m_u1.Set(_loc12_ - _loc4_,_loc13_ - _loc5_);
         m_u2.Set(_loc14_ - _loc6_,_loc15_ - _loc7_);
         _loc16_ = m_u1.Length();
         _loc17_ = m_u2.Length();
         if(_loc16_ > b2Settings.b2_linearSlop)
         {
            m_u1.Multiply(1 / _loc16_);
         }
         else
         {
            m_u1.SetZero();
         }
         if(_loc17_ > b2Settings.b2_linearSlop)
         {
            m_u2.Multiply(1 / _loc17_);
         }
         else
         {
            m_u2.SetZero();
         }
         _loc18_ = m_constant - _loc16_ - m_ratio * _loc17_;
         _loc21_ = b2Math.b2Max(_loc21_,Math.abs(_loc18_));
         _loc18_ = b2Math.b2Clamp(_loc18_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         _loc19_ = -m_pulleyMass * _loc18_;
         _loc12_ = -_loc19_ * m_u1.x;
         _loc13_ = -_loc19_ * m_u1.y;
         _loc14_ = -m_ratio * _loc19_ * m_u2.x;
         _loc15_ = -m_ratio * _loc19_ * m_u2.y;
         _loc1_.m_position.x += _loc1_.m_invMass * _loc12_;
         _loc1_.m_position.y += _loc1_.m_invMass * _loc13_;
         _loc1_.m_rotation += _loc1_.m_invI * (_loc8_ * _loc13_ - _loc9_ * _loc12_);
         _loc2_.m_position.x += _loc2_.m_invMass * _loc14_;
         _loc2_.m_position.y += _loc2_.m_invMass * _loc15_;
         _loc2_.m_rotation += _loc2_.m_invI * (_loc10_ * _loc15_ - _loc11_ * _loc14_);
         _loc1_.m_R.Set(_loc1_.m_rotation);
         _loc2_.m_R.Set(_loc2_.m_rotation);
         if(m_limitState1 == e_atUpperLimit)
         {
            _loc3_ = _loc1_.m_R;
            _loc8_ = _loc3_.col1.x * m_localAnchor1.x + _loc3_.col2.x * m_localAnchor1.y;
            _loc9_ = _loc3_.col1.y * m_localAnchor1.x + _loc3_.col2.y * m_localAnchor1.y;
            _loc12_ = _loc1_.m_position.x + _loc8_;
            _loc13_ = _loc1_.m_position.y + _loc9_;
            m_u1.Set(_loc12_ - _loc4_,_loc13_ - _loc5_);
            _loc16_ = m_u1.Length();
            if(_loc16_ > b2Settings.b2_linearSlop)
            {
               m_u1.x *= 1 / _loc16_;
               m_u1.y *= 1 / _loc16_;
            }
            else
            {
               m_u1.SetZero();
            }
            _loc18_ = m_maxLength1 - _loc16_;
            _loc21_ = b2Math.b2Max(_loc21_,-_loc18_);
            _loc18_ = b2Math.b2Clamp(_loc18_ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            _loc19_ = -m_limitMass1 * _loc18_;
            _loc20_ = m_limitPositionImpulse1;
            m_limitPositionImpulse1 = b2Math.b2Max(0,m_limitPositionImpulse1 + _loc19_);
            _loc19_ = m_limitPositionImpulse1 - _loc20_;
            _loc12_ = -_loc19_ * m_u1.x;
            _loc13_ = -_loc19_ * m_u1.y;
            _loc1_.m_position.x += _loc1_.m_invMass * _loc12_;
            _loc1_.m_position.y += _loc1_.m_invMass * _loc13_;
            _loc1_.m_rotation += _loc1_.m_invI * (_loc8_ * _loc13_ - _loc9_ * _loc12_);
            _loc1_.m_R.Set(_loc1_.m_rotation);
         }
         if(m_limitState2 == e_atUpperLimit)
         {
            _loc3_ = _loc2_.m_R;
            _loc10_ = _loc3_.col1.x * m_localAnchor2.x + _loc3_.col2.x * m_localAnchor2.y;
            _loc11_ = _loc3_.col1.y * m_localAnchor2.x + _loc3_.col2.y * m_localAnchor2.y;
            _loc14_ = _loc2_.m_position.x + _loc10_;
            _loc15_ = _loc2_.m_position.y + _loc11_;
            m_u2.Set(_loc14_ - _loc6_,_loc15_ - _loc7_);
            _loc17_ = m_u2.Length();
            if(_loc17_ > b2Settings.b2_linearSlop)
            {
               m_u2.x *= 1 / _loc17_;
               m_u2.y *= 1 / _loc17_;
            }
            else
            {
               m_u2.SetZero();
            }
            _loc18_ = m_maxLength2 - _loc17_;
            _loc21_ = b2Math.b2Max(_loc21_,-_loc18_);
            _loc18_ = b2Math.b2Clamp(_loc18_ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            _loc19_ = -m_limitMass2 * _loc18_;
            _loc20_ = m_limitPositionImpulse2;
            m_limitPositionImpulse2 = b2Math.b2Max(0,m_limitPositionImpulse2 + _loc19_);
            _loc19_ = m_limitPositionImpulse2 - _loc20_;
            _loc14_ = -_loc19_ * m_u2.x;
            _loc15_ = -_loc19_ * m_u2.y;
            _loc2_.m_position.x += _loc2_.m_invMass * _loc14_;
            _loc2_.m_position.y += _loc2_.m_invMass * _loc15_;
            _loc2_.m_rotation += _loc2_.m_invI * (_loc10_ * _loc15_ - _loc11_ * _loc14_);
            _loc2_.m_R.Set(_loc2_.m_rotation);
         }
         return _loc21_ < b2Settings.b2_linearSlop;
      }
      
      public function GetGroundPoint2() : b2Vec2
      {
         return new b2Vec2(m_ground.m_position.x + m_groundAnchor2.x,m_ground.m_position.y + m_groundAnchor2.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function GetGroundPoint1() : b2Vec2
      {
         return new b2Vec2(m_ground.m_position.x + m_groundAnchor1.x,m_ground.m_position.y + m_groundAnchor1.y);
      }
      
      override public function SolveVelocityConstraints(param1:b2StepInfo) : *
      {
         var _loc4_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc2_:b2Body = m_body1;
         var _loc3_:b2Body = m_body2;
         _loc4_ = _loc2_.m_R;
         var _loc5_:Number = _loc4_.col1.x * m_localAnchor1.x + _loc4_.col2.x * m_localAnchor1.y;
         var _loc6_:Number = _loc4_.col1.y * m_localAnchor1.x + _loc4_.col2.y * m_localAnchor1.y;
         _loc4_ = _loc3_.m_R;
         var _loc7_:Number = _loc4_.col1.x * m_localAnchor2.x + _loc4_.col2.x * m_localAnchor2.y;
         var _loc8_:Number = _loc4_.col1.y * m_localAnchor2.x + _loc4_.col2.y * m_localAnchor2.y;
         _loc9_ = _loc2_.m_linearVelocity.x + -_loc2_.m_angularVelocity * _loc6_;
         _loc10_ = _loc2_.m_linearVelocity.y + _loc2_.m_angularVelocity * _loc5_;
         _loc11_ = _loc3_.m_linearVelocity.x + -_loc3_.m_angularVelocity * _loc8_;
         _loc12_ = _loc3_.m_linearVelocity.y + _loc3_.m_angularVelocity * _loc7_;
         _loc17_ = -(m_u1.x * _loc9_ + m_u1.y * _loc10_) - m_ratio * (m_u2.x * _loc11_ + m_u2.y * _loc12_);
         _loc18_ = -m_pulleyMass * _loc17_;
         m_pulleyImpulse += _loc18_;
         _loc13_ = -_loc18_ * m_u1.x;
         _loc14_ = -_loc18_ * m_u1.y;
         _loc15_ = -m_ratio * _loc18_ * m_u2.x;
         _loc16_ = -m_ratio * _loc18_ * m_u2.y;
         _loc2_.m_linearVelocity.x += _loc2_.m_invMass * _loc13_;
         _loc2_.m_linearVelocity.y += _loc2_.m_invMass * _loc14_;
         _loc2_.m_angularVelocity += _loc2_.m_invI * (_loc5_ * _loc14_ - _loc6_ * _loc13_);
         _loc3_.m_linearVelocity.x += _loc3_.m_invMass * _loc15_;
         _loc3_.m_linearVelocity.y += _loc3_.m_invMass * _loc16_;
         _loc3_.m_angularVelocity += _loc3_.m_invI * (_loc7_ * _loc16_ - _loc8_ * _loc15_);
         if(m_limitState1 == e_atUpperLimit)
         {
            _loc9_ = _loc2_.m_linearVelocity.x + -_loc2_.m_angularVelocity * _loc6_;
            _loc10_ = _loc2_.m_linearVelocity.y + _loc2_.m_angularVelocity * _loc5_;
            _loc17_ = -(m_u1.x * _loc9_ + m_u1.y * _loc10_);
            _loc18_ = -m_limitMass1 * _loc17_;
            _loc19_ = m_limitImpulse1;
            m_limitImpulse1 = b2Math.b2Max(0,m_limitImpulse1 + _loc18_);
            _loc18_ = m_limitImpulse1 - _loc19_;
            _loc13_ = -_loc18_ * m_u1.x;
            _loc14_ = -_loc18_ * m_u1.y;
            _loc2_.m_linearVelocity.x += _loc2_.m_invMass * _loc13_;
            _loc2_.m_linearVelocity.y += _loc2_.m_invMass * _loc14_;
            _loc2_.m_angularVelocity += _loc2_.m_invI * (_loc5_ * _loc14_ - _loc6_ * _loc13_);
         }
         if(m_limitState2 == e_atUpperLimit)
         {
            _loc11_ = _loc3_.m_linearVelocity.x + -_loc3_.m_angularVelocity * _loc8_;
            _loc12_ = _loc3_.m_linearVelocity.y + _loc3_.m_angularVelocity * _loc7_;
            _loc17_ = -(m_u2.x * _loc11_ + m_u2.y * _loc12_);
            _loc18_ = -m_limitMass2 * _loc17_;
            _loc19_ = m_limitImpulse2;
            m_limitImpulse2 = b2Math.b2Max(0,m_limitImpulse2 + _loc18_);
            _loc18_ = m_limitImpulse2 - _loc19_;
            _loc15_ = -_loc18_ * m_u2.x;
            _loc16_ = -_loc18_ * m_u2.y;
            _loc3_.m_linearVelocity.x += _loc3_.m_invMass * _loc15_;
            _loc3_.m_linearVelocity.y += _loc3_.m_invMass * _loc16_;
            _loc3_.m_angularVelocity += _loc3_.m_invI * (_loc7_ * _loc16_ - _loc8_ * _loc15_);
         }
      }
      
      public function GetRatio() : Number
      {
         return m_ratio;
      }
      
      public function GetLength2() : Number
      {
         var _loc1_:b2Mat22 = null;
         _loc1_ = m_body2.m_R;
         var _loc2_:Number = m_body2.m_position.x + (_loc1_.col1.x * m_localAnchor2.x + _loc1_.col2.x * m_localAnchor2.y);
         var _loc3_:Number = m_body2.m_position.y + (_loc1_.col1.y * m_localAnchor2.x + _loc1_.col2.y * m_localAnchor2.y);
         var _loc4_:Number = _loc2_ - (m_ground.m_position.x + m_groundAnchor2.x);
         var _loc5_:Number = _loc3_ - (m_ground.m_position.y + m_groundAnchor2.y);
         return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
      }
   }
}

