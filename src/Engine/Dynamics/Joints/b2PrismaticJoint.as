package Engine.Dynamics.Joints
{
   import Engine.Common.Math.b2Mat22;
   import Engine.Common.Math.b2Math;
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   import Engine.Dynamics.b2Body;
   import Engine.Dynamics.b2StepInfo;
   import Engine.Dynamics.b2World;
   
   public class b2PrismaticJoint extends b2Joint
   {
      public var m_initialAngle:Number;
      
      public var m_localXAxis1:b2Vec2;
      
      public var m_lowerTranslation:Number;
      
      public var m_angularMass:Number;
      
      public var m_enableLimit:Boolean;
      
      public var m_maxMotorForce:Number;
      
      public var m_limitState:int;
      
      public var m_localYAxis1:b2Vec2;
      
      public var m_motorMass:Number;
      
      public var m_linearImpulse:Number;
      
      public var m_upperTranslation:Number;
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_angularImpulse:Number;
      
      public var m_linearMass:Number;
      
      public var m_motorImpulse:Number;
      
      public var m_limitImpulse:Number;
      
      public var m_motorJacobian:b2Jacobian;
      
      public var m_limitPositionImpulse:Number;
      
      public var m_motorSpeed:Number;
      
      public var m_enableMotor:Boolean;
      
      public var m_linearJacobian:b2Jacobian;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         m_localAnchor1 = new b2Vec2();
         m_localAnchor2 = new b2Vec2();
         m_localXAxis1 = new b2Vec2();
         m_localYAxis1 = new b2Vec2();
         m_linearJacobian = new b2Jacobian();
         m_motorJacobian = new b2Jacobian();
         super(param1);
         _loc2_ = m_body1.m_R;
         _loc3_ = param1.anchorPoint.x - m_body1.m_position.x;
         _loc4_ = param1.anchorPoint.y - m_body1.m_position.y;
         m_localAnchor1.Set(_loc3_ * _loc2_.col1.x + _loc4_ * _loc2_.col1.y,_loc3_ * _loc2_.col2.x + _loc4_ * _loc2_.col2.y);
         _loc2_ = m_body2.m_R;
         _loc3_ = param1.anchorPoint.x - m_body2.m_position.x;
         _loc4_ = param1.anchorPoint.y - m_body2.m_position.y;
         m_localAnchor2.Set(_loc3_ * _loc2_.col1.x + _loc4_ * _loc2_.col1.y,_loc3_ * _loc2_.col2.x + _loc4_ * _loc2_.col2.y);
         _loc2_ = m_body1.m_R;
         _loc3_ = param1.axis.x;
         _loc4_ = param1.axis.y;
         m_localXAxis1.Set(_loc3_ * _loc2_.col1.x + _loc4_ * _loc2_.col1.y,_loc3_ * _loc2_.col2.x + _loc4_ * _loc2_.col2.y);
         m_localYAxis1.x = -m_localXAxis1.y;
         m_localYAxis1.y = m_localXAxis1.x;
         m_initialAngle = m_body2.m_rotation - m_body1.m_rotation;
         m_linearJacobian.SetZero();
         m_linearMass = 0;
         m_linearImpulse = 0;
         m_angularMass = 0;
         m_angularImpulse = 0;
         m_motorJacobian.SetZero();
         m_motorMass = 0;
         m_motorImpulse = 0;
         m_limitImpulse = 0;
         m_limitPositionImpulse = 0;
         m_lowerTranslation = param1.lowerTranslation;
         m_upperTranslation = param1.upperTranslation;
         m_maxMotorForce = param1.motorForce;
         m_motorSpeed = param1.motorSpeed;
         m_enableLimit = param1.enableLimit;
         m_enableMotor = param1.enableMotor;
      }
      
      override public function GetAnchor1() : b2Vec2
      {
         var _loc1_:b2Body = m_body1;
         var _loc2_:b2Vec2 = new b2Vec2();
         _loc2_.SetV(m_localAnchor1);
         _loc2_.MulM(_loc1_.m_R);
         _loc2_.Add(_loc1_.m_position);
         return _loc2_;
      }
      
      override public function GetAnchor2() : b2Vec2
      {
         var _loc1_:b2Body = m_body2;
         var _loc2_:b2Vec2 = new b2Vec2();
         _loc2_.SetV(m_localAnchor2);
         _loc2_.MulM(_loc1_.m_R);
         _loc2_.Add(_loc1_.m_position);
         return _loc2_;
      }
      
      override public function PrepareVelocitySolver() : *
      {
         var _loc3_:b2Mat22 = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc1_:b2Body = m_body1;
         var _loc2_:b2Body = m_body2;
         _loc3_ = _loc1_.m_R;
         var _loc4_:Number = _loc3_.col1.x * m_localAnchor1.x + _loc3_.col2.x * m_localAnchor1.y;
         var _loc5_:Number = _loc3_.col1.y * m_localAnchor1.x + _loc3_.col2.y * m_localAnchor1.y;
         _loc3_ = _loc2_.m_R;
         var _loc6_:Number = _loc3_.col1.x * m_localAnchor2.x + _loc3_.col2.x * m_localAnchor2.y;
         var _loc7_:Number = _loc3_.col1.y * m_localAnchor2.x + _loc3_.col2.y * m_localAnchor2.y;
         var _loc8_:Number = _loc1_.m_invMass;
         var _loc9_:Number = _loc2_.m_invMass;
         var _loc10_:Number = _loc1_.m_invI;
         var _loc11_:Number = _loc2_.m_invI;
         _loc3_ = _loc1_.m_R;
         var _loc12_:Number = _loc3_.col1.x * m_localYAxis1.x + _loc3_.col2.x * m_localYAxis1.y;
         var _loc13_:Number = _loc3_.col1.y * m_localYAxis1.x + _loc3_.col2.y * m_localYAxis1.y;
         var _loc14_:Number = _loc2_.m_position.x + _loc6_ - _loc1_.m_position.x;
         var _loc15_:Number = _loc2_.m_position.y + _loc7_ - _loc1_.m_position.y;
         m_linearJacobian.linear1.x = -_loc12_;
         m_linearJacobian.linear1.y = -_loc13_;
         m_linearJacobian.linear2.x = _loc12_;
         m_linearJacobian.linear2.y = _loc13_;
         m_linearJacobian.angular1 = -(_loc14_ * _loc13_ - _loc15_ * _loc12_);
         m_linearJacobian.angular2 = _loc6_ * _loc13_ - _loc7_ * _loc12_;
         m_linearMass = _loc8_ + _loc10_ * m_linearJacobian.angular1 * m_linearJacobian.angular1 + _loc9_ + _loc11_ * m_linearJacobian.angular2 * m_linearJacobian.angular2;
         m_linearMass = 1 / m_linearMass;
         m_angularMass = 1 / (_loc10_ + _loc11_);
         if(m_enableLimit || m_enableMotor)
         {
            _loc3_ = _loc1_.m_R;
            _loc16_ = _loc3_.col1.x * m_localXAxis1.x + _loc3_.col2.x * m_localXAxis1.y;
            _loc17_ = _loc3_.col1.y * m_localXAxis1.x + _loc3_.col2.y * m_localXAxis1.y;
            m_motorJacobian.linear1.x = -_loc16_;
            m_motorJacobian.linear1.y = -_loc17_;
            m_motorJacobian.linear2.x = _loc16_;
            m_motorJacobian.linear2.y = _loc17_;
            m_motorJacobian.angular1 = -(_loc14_ * _loc17_ - _loc15_ * _loc16_);
            m_motorJacobian.angular2 = _loc6_ * _loc17_ - _loc7_ * _loc16_;
            m_motorMass = _loc8_ + _loc10_ * m_motorJacobian.angular1 * m_motorJacobian.angular1 + _loc9_ + _loc11_ * m_motorJacobian.angular2 * m_motorJacobian.angular2;
            m_motorMass = 1 / m_motorMass;
            if(m_enableLimit)
            {
               _loc18_ = _loc14_ - _loc4_;
               _loc19_ = _loc15_ - _loc5_;
               _loc20_ = _loc16_ * _loc18_ + _loc17_ * _loc19_;
               if(b2Math.b2Abs(m_upperTranslation - m_lowerTranslation) < 2 * b2Settings.b2_linearSlop)
               {
                  m_limitState = e_equalLimits;
               }
               else if(_loc20_ <= m_lowerTranslation)
               {
                  if(m_limitState != e_atLowerLimit)
                  {
                     m_limitImpulse = 0;
                  }
                  m_limitState = e_atLowerLimit;
               }
               else if(_loc20_ >= m_upperTranslation)
               {
                  if(m_limitState != e_atUpperLimit)
                  {
                     m_limitImpulse = 0;
                  }
                  m_limitState = e_atUpperLimit;
               }
               else
               {
                  m_limitState = e_inactiveLimit;
                  m_limitImpulse = 0;
               }
            }
         }
         if(m_enableMotor == false)
         {
            m_motorImpulse = 0;
         }
         if(m_enableLimit == false)
         {
            m_limitImpulse = 0;
         }
         if(b2World.s_enableWarmStarting)
         {
            _loc21_ = m_linearImpulse * m_linearJacobian.linear1.x + (m_motorImpulse + m_limitImpulse) * m_motorJacobian.linear1.x;
            _loc22_ = m_linearImpulse * m_linearJacobian.linear1.y + (m_motorImpulse + m_limitImpulse) * m_motorJacobian.linear1.y;
            _loc23_ = m_linearImpulse * m_linearJacobian.linear2.x + (m_motorImpulse + m_limitImpulse) * m_motorJacobian.linear2.x;
            _loc24_ = m_linearImpulse * m_linearJacobian.linear2.y + (m_motorImpulse + m_limitImpulse) * m_motorJacobian.linear2.y;
            _loc25_ = m_linearImpulse * m_linearJacobian.angular1 - m_angularImpulse + (m_motorImpulse + m_limitImpulse) * m_motorJacobian.angular1;
            _loc26_ = m_linearImpulse * m_linearJacobian.angular2 + m_angularImpulse + (m_motorImpulse + m_limitImpulse) * m_motorJacobian.angular2;
            _loc1_.m_linearVelocity.x += _loc8_ * _loc21_;
            _loc1_.m_linearVelocity.y += _loc8_ * _loc22_;
            _loc1_.m_angularVelocity += _loc10_ * _loc25_;
            _loc2_.m_linearVelocity.x += _loc9_ * _loc23_;
            _loc2_.m_linearVelocity.y += _loc9_ * _loc24_;
            _loc2_.m_angularVelocity += _loc11_ * _loc26_;
         }
         else
         {
            m_linearImpulse = 0;
            m_angularImpulse = 0;
            m_limitImpulse = 0;
            m_motorImpulse = 0;
         }
         m_limitPositionImpulse = 0;
      }
      
      public function GetJointTranslation() : Number
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
         var _loc12_:Number = _loc10_ - _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         _loc3_ = _loc1_.m_R;
         var _loc14_:Number = _loc3_.col1.x * m_localXAxis1.x + _loc3_.col2.x * m_localXAxis1.y;
         var _loc15_:Number = _loc3_.col1.y * m_localXAxis1.x + _loc3_.col2.y * m_localXAxis1.y;
         return _loc14_ * _loc12_ + _loc15_ * _loc13_;
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc3_:b2Mat22 = null;
         var _loc2_:Number = param1 * m_limitImpulse;
         _loc3_ = m_body1.m_R;
         var _loc4_:Number = _loc2_ * (_loc3_.col1.x * m_localXAxis1.x + _loc3_.col2.x * m_localXAxis1.y);
         var _loc5_:Number = _loc2_ * (_loc3_.col1.y * m_localXAxis1.x + _loc3_.col2.y * m_localXAxis1.y);
         var _loc6_:Number = _loc2_ * (_loc3_.col1.x * m_localYAxis1.x + _loc3_.col2.x * m_localYAxis1.y);
         var _loc7_:Number = _loc2_ * (_loc3_.col1.y * m_localYAxis1.x + _loc3_.col2.y * m_localYAxis1.y);
         return new b2Vec2(_loc4_ + _loc6_,_loc5_ + _loc7_);
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc9_:b2Mat22 = null;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc3_:b2Body = m_body1;
         var _loc4_:b2Body = m_body2;
         var _loc5_:Number = _loc3_.m_invMass;
         var _loc6_:Number = _loc4_.m_invMass;
         var _loc7_:Number = _loc3_.m_invI;
         var _loc8_:Number = _loc4_.m_invI;
         _loc9_ = _loc3_.m_R;
         var _loc10_:Number = _loc9_.col1.x * m_localAnchor1.x + _loc9_.col2.x * m_localAnchor1.y;
         var _loc11_:Number = _loc9_.col1.y * m_localAnchor1.x + _loc9_.col2.y * m_localAnchor1.y;
         _loc9_ = _loc4_.m_R;
         var _loc12_:Number = _loc9_.col1.x * m_localAnchor2.x + _loc9_.col2.x * m_localAnchor2.y;
         var _loc13_:Number = _loc9_.col1.y * m_localAnchor2.x + _loc9_.col2.y * m_localAnchor2.y;
         var _loc14_:Number = _loc3_.m_position.x + _loc10_;
         var _loc15_:Number = _loc3_.m_position.y + _loc11_;
         var _loc16_:Number = _loc4_.m_position.x + _loc12_;
         var _loc17_:Number = _loc4_.m_position.y + _loc13_;
         var _loc18_:Number = _loc16_ - _loc14_;
         var _loc19_:Number = _loc17_ - _loc15_;
         _loc9_ = _loc3_.m_R;
         var _loc20_:Number = _loc9_.col1.x * m_localYAxis1.x + _loc9_.col2.x * m_localYAxis1.y;
         var _loc21_:Number = _loc9_.col1.y * m_localYAxis1.x + _loc9_.col2.y * m_localYAxis1.y;
         var _loc22_:Number = _loc20_ * _loc18_ + _loc21_ * _loc19_;
         _loc22_ = b2Math.b2Clamp(_loc22_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc23_:Number = -m_linearMass * _loc22_;
         _loc3_.m_position.x += _loc5_ * _loc23_ * m_linearJacobian.linear1.x;
         _loc3_.m_position.y += _loc5_ * _loc23_ * m_linearJacobian.linear1.y;
         _loc3_.m_rotation += _loc7_ * _loc23_ * m_linearJacobian.angular1;
         _loc4_.m_position.x += _loc6_ * _loc23_ * m_linearJacobian.linear2.x;
         _loc4_.m_position.y += _loc6_ * _loc23_ * m_linearJacobian.linear2.y;
         _loc4_.m_rotation += _loc8_ * _loc23_ * m_linearJacobian.angular2;
         var _loc24_:Number = b2Math.b2Abs(_loc22_);
         var _loc25_:Number = _loc4_.m_rotation - _loc3_.m_rotation - m_initialAngle;
         _loc25_ = b2Math.b2Clamp(_loc25_,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
         var _loc26_:Number = -m_angularMass * _loc25_;
         _loc3_.m_rotation -= _loc3_.m_invI * _loc26_;
         _loc3_.m_R.Set(_loc3_.m_rotation);
         _loc4_.m_rotation += _loc4_.m_invI * _loc26_;
         _loc4_.m_R.Set(_loc4_.m_rotation);
         var _loc27_:Number = b2Math.b2Abs(_loc25_);
         if(m_enableLimit && m_limitState != e_inactiveLimit)
         {
            _loc9_ = _loc3_.m_R;
            _loc10_ = _loc9_.col1.x * m_localAnchor1.x + _loc9_.col2.x * m_localAnchor1.y;
            _loc11_ = _loc9_.col1.y * m_localAnchor1.x + _loc9_.col2.y * m_localAnchor1.y;
            _loc9_ = _loc4_.m_R;
            _loc12_ = _loc9_.col1.x * m_localAnchor2.x + _loc9_.col2.x * m_localAnchor2.y;
            _loc13_ = _loc9_.col1.y * m_localAnchor2.x + _loc9_.col2.y * m_localAnchor2.y;
            _loc14_ = _loc3_.m_position.x + _loc10_;
            _loc15_ = _loc3_.m_position.y + _loc11_;
            _loc16_ = _loc4_.m_position.x + _loc12_;
            _loc17_ = _loc4_.m_position.y + _loc13_;
            _loc18_ = _loc16_ - _loc14_;
            _loc19_ = _loc17_ - _loc15_;
            _loc9_ = _loc3_.m_R;
            _loc28_ = _loc9_.col1.x * m_localXAxis1.x + _loc9_.col2.x * m_localXAxis1.y;
            _loc29_ = _loc9_.col1.y * m_localXAxis1.x + _loc9_.col2.y * m_localXAxis1.y;
            _loc30_ = _loc28_ * _loc18_ + _loc29_ * _loc19_;
            _loc31_ = 0;
            if(m_limitState == e_equalLimits)
            {
               _loc1_ = b2Math.b2Clamp(_loc30_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc31_ = -m_motorMass * _loc1_;
               _loc24_ = b2Math.b2Max(_loc24_,b2Math.b2Abs(_loc25_));
            }
            else if(m_limitState == e_atLowerLimit)
            {
               _loc1_ = _loc30_ - m_lowerTranslation;
               _loc24_ = b2Math.b2Max(_loc24_,-_loc1_);
               _loc1_ = b2Math.b2Clamp(_loc1_ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc31_ = -m_motorMass * _loc1_;
               _loc2_ = m_limitPositionImpulse;
               m_limitPositionImpulse = b2Math.b2Max(m_limitPositionImpulse + _loc31_,0);
               _loc31_ = m_limitPositionImpulse - _loc2_;
            }
            else if(m_limitState == e_atUpperLimit)
            {
               _loc1_ = _loc30_ - m_upperTranslation;
               _loc24_ = b2Math.b2Max(_loc24_,_loc1_);
               _loc1_ = b2Math.b2Clamp(_loc1_ - b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc31_ = -m_motorMass * _loc1_;
               _loc2_ = m_limitPositionImpulse;
               m_limitPositionImpulse = b2Math.b2Min(m_limitPositionImpulse + _loc31_,0);
               _loc31_ = m_limitPositionImpulse - _loc2_;
            }
            _loc3_.m_position.x += _loc5_ * _loc31_ * m_motorJacobian.linear1.x;
            _loc3_.m_position.y += _loc5_ * _loc31_ * m_motorJacobian.linear1.y;
            _loc3_.m_rotation += _loc7_ * _loc31_ * m_motorJacobian.angular1;
            _loc3_.m_R.Set(_loc3_.m_rotation);
            _loc4_.m_position.x += _loc6_ * _loc31_ * m_motorJacobian.linear2.x;
            _loc4_.m_position.y += _loc6_ * _loc31_ * m_motorJacobian.linear2.y;
            _loc4_.m_rotation += _loc8_ * _loc31_ * m_motorJacobian.angular2;
            _loc4_.m_R.Set(_loc4_.m_rotation);
         }
         return _loc24_ <= b2Settings.b2_linearSlop && _loc27_ <= b2Settings.b2_angularSlop;
      }
      
      public function SetMotorSpeed(param1:Number) : *
      {
         m_motorSpeed = param1;
      }
      
      public function GetJointSpeed() : Number
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
         var _loc12_:Number = _loc10_ - _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         _loc3_ = _loc1_.m_R;
         var _loc14_:Number = _loc3_.col1.x * m_localXAxis1.x + _loc3_.col2.x * m_localXAxis1.y;
         var _loc15_:Number = _loc3_.col1.y * m_localXAxis1.x + _loc3_.col2.y * m_localXAxis1.y;
         var _loc16_:b2Vec2 = _loc1_.m_linearVelocity;
         var _loc17_:b2Vec2 = _loc2_.m_linearVelocity;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return _loc12_ * (-_loc18_ * _loc15_) + _loc13_ * (_loc18_ * _loc14_) + (_loc14_ * (_loc17_.x + -_loc19_ * _loc7_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_ * (_loc17_.y + _loc19_ * _loc6_ - _loc16_.y - _loc18_ * _loc4_));
      }
      
      public function GetMotorForce(param1:Number) : Number
      {
         return param1 * m_motorImpulse;
      }
      
      public function SetMotorForce(param1:Number) : *
      {
         m_maxMotorForce = param1;
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * m_angularImpulse;
      }
      
      override public function SolveVelocityConstraints(param1:b2StepInfo) : *
      {
         var _loc8_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc2_:b2Body = m_body1;
         var _loc3_:b2Body = m_body2;
         var _loc4_:Number = _loc2_.m_invMass;
         var _loc5_:Number = _loc3_.m_invMass;
         var _loc6_:Number = _loc2_.m_invI;
         var _loc7_:Number = _loc3_.m_invI;
         var _loc9_:Number = m_linearJacobian.Compute(_loc2_.m_linearVelocity,_loc2_.m_angularVelocity,_loc3_.m_linearVelocity,_loc3_.m_angularVelocity);
         var _loc10_:Number = -m_linearMass * _loc9_;
         m_linearImpulse += _loc10_;
         _loc2_.m_linearVelocity.x += _loc4_ * _loc10_ * m_linearJacobian.linear1.x;
         _loc2_.m_linearVelocity.y += _loc4_ * _loc10_ * m_linearJacobian.linear1.y;
         _loc2_.m_angularVelocity += _loc6_ * _loc10_ * m_linearJacobian.angular1;
         _loc3_.m_linearVelocity.x += _loc5_ * _loc10_ * m_linearJacobian.linear2.x;
         _loc3_.m_linearVelocity.y += _loc5_ * _loc10_ * m_linearJacobian.linear2.y;
         _loc3_.m_angularVelocity += _loc7_ * _loc10_ * m_linearJacobian.angular2;
         var _loc11_:Number = _loc3_.m_angularVelocity - _loc2_.m_angularVelocity;
         var _loc12_:* = -m_angularMass * _loc11_;
         m_angularImpulse += _loc12_;
         _loc2_.m_angularVelocity -= _loc6_ * _loc12_;
         _loc3_.m_angularVelocity += _loc7_ * _loc12_;
         if(m_enableMotor && m_limitState != e_equalLimits)
         {
            _loc13_ = m_motorJacobian.Compute(_loc2_.m_linearVelocity,_loc2_.m_angularVelocity,_loc3_.m_linearVelocity,_loc3_.m_angularVelocity) - m_motorSpeed;
            _loc14_ = -m_motorMass * _loc13_;
            _loc15_ = m_motorImpulse;
            m_motorImpulse = b2Math.b2Clamp(m_motorImpulse + _loc14_,-param1.dt * m_maxMotorForce,param1.dt * m_maxMotorForce);
            _loc14_ = m_motorImpulse - _loc15_;
            _loc2_.m_linearVelocity.x += _loc4_ * _loc14_ * m_motorJacobian.linear1.x;
            _loc2_.m_linearVelocity.y += _loc4_ * _loc14_ * m_motorJacobian.linear1.y;
            _loc2_.m_angularVelocity += _loc6_ * _loc14_ * m_motorJacobian.angular1;
            _loc3_.m_linearVelocity.x += _loc5_ * _loc14_ * m_motorJacobian.linear2.x;
            _loc3_.m_linearVelocity.y += _loc5_ * _loc14_ * m_motorJacobian.linear2.y;
            _loc3_.m_angularVelocity += _loc7_ * _loc14_ * m_motorJacobian.angular2;
         }
         if(m_enableLimit && m_limitState != e_inactiveLimit)
         {
            _loc16_ = m_motorJacobian.Compute(_loc2_.m_linearVelocity,_loc2_.m_angularVelocity,_loc3_.m_linearVelocity,_loc3_.m_angularVelocity);
            _loc17_ = -m_motorMass * _loc16_;
            if(m_limitState == e_equalLimits)
            {
               m_limitImpulse += _loc17_;
            }
            else if(m_limitState == e_atLowerLimit)
            {
               _loc8_ = m_limitImpulse;
               m_limitImpulse = b2Math.b2Max(m_limitImpulse + _loc17_,0);
               _loc17_ = m_limitImpulse - _loc8_;
            }
            else if(m_limitState == e_atUpperLimit)
            {
               _loc8_ = m_limitImpulse;
               m_limitImpulse = b2Math.b2Min(m_limitImpulse + _loc17_,0);
               _loc17_ = m_limitImpulse - _loc8_;
            }
            _loc2_.m_linearVelocity.x += _loc4_ * _loc17_ * m_motorJacobian.linear1.x;
            _loc2_.m_linearVelocity.y += _loc4_ * _loc17_ * m_motorJacobian.linear1.y;
            _loc2_.m_angularVelocity += _loc6_ * _loc17_ * m_motorJacobian.angular1;
            _loc3_.m_linearVelocity.x += _loc5_ * _loc17_ * m_motorJacobian.linear2.x;
            _loc3_.m_linearVelocity.y += _loc5_ * _loc17_ * m_motorJacobian.linear2.y;
            _loc3_.m_angularVelocity += _loc7_ * _loc17_ * m_motorJacobian.angular2;
         }
      }
   }
}

