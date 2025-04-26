package Engine.Dynamics.Joints
{
   import Engine.Common.Math.b2Mat22;
   import Engine.Common.Math.b2Math;
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   import Engine.Dynamics.b2Body;
   import Engine.Dynamics.b2StepInfo;
   import Engine.Dynamics.b2World;
   
   public class b2RevoluteJoint extends b2Joint
   {
      internal static var tImpulse:b2Vec2 = new b2Vec2();
      
      public var m_enableLimit:Boolean;
      
      public var m_limitState:int;
      
      public var m_ptpMass:b2Mat22;
      
      public var m_motorMass:Number;
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K:b2Mat22;
      
      public var m_limitImpulse:Number;
      
      private var K3:b2Mat22;
      
      public var m_motorImpulse:Number;
      
      public var m_enableMotor:Boolean;
      
      public var m_limitPositionImpulse:Number;
      
      public var m_motorSpeed:Number;
      
      public var m_upperAngle:Number;
      
      public var m_lowerAngle:Number;
      
      public var m_maxMotorTorque:Number;
      
      public var m_ptpImpulse:b2Vec2;
      
      public var m_intialAngle:Number;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         K = new b2Mat22();
         K1 = new b2Mat22();
         K2 = new b2Mat22();
         K3 = new b2Mat22();
         m_localAnchor1 = new b2Vec2();
         m_localAnchor2 = new b2Vec2();
         m_ptpImpulse = new b2Vec2();
         m_ptpMass = new b2Mat22();
         super(param1);
         _loc2_ = m_body1.m_R;
         _loc3_ = param1.anchorPoint.x - m_body1.m_position.x;
         _loc4_ = param1.anchorPoint.y - m_body1.m_position.y;
         m_localAnchor1.x = _loc3_ * _loc2_.col1.x + _loc4_ * _loc2_.col1.y;
         m_localAnchor1.y = _loc3_ * _loc2_.col2.x + _loc4_ * _loc2_.col2.y;
         _loc2_ = m_body2.m_R;
         _loc3_ = param1.anchorPoint.x - m_body2.m_position.x;
         _loc4_ = param1.anchorPoint.y - m_body2.m_position.y;
         m_localAnchor2.x = _loc3_ * _loc2_.col1.x + _loc4_ * _loc2_.col1.y;
         m_localAnchor2.y = _loc3_ * _loc2_.col2.x + _loc4_ * _loc2_.col2.y;
         m_intialAngle = m_body2.m_rotation - m_body1.m_rotation;
         m_ptpImpulse.Set(0,0);
         m_motorImpulse = 0;
         m_limitImpulse = 0;
         m_limitPositionImpulse = 0;
         m_lowerAngle = param1.lowerAngle;
         m_upperAngle = param1.upperAngle;
         m_maxMotorTorque = param1.motorTorque;
         m_motorSpeed = param1.motorSpeed;
         m_enableLimit = param1.enableLimit;
         m_enableMotor = param1.enableMotor;
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
         var _loc1_:b2Body = null;
         var _loc2_:b2Body = null;
         var _loc3_:b2Mat22 = null;
         var _loc12_:Number = NaN;
         _loc1_ = m_body1;
         _loc2_ = m_body2;
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
         K1.col1.x = _loc8_ + _loc9_;
         K1.col2.x = 0;
         K1.col1.y = 0;
         K1.col2.y = _loc8_ + _loc9_;
         K2.col1.x = _loc10_ * _loc5_ * _loc5_;
         K2.col2.x = -_loc10_ * _loc4_ * _loc5_;
         K2.col1.y = -_loc10_ * _loc4_ * _loc5_;
         K2.col2.y = _loc10_ * _loc4_ * _loc4_;
         K3.col1.x = _loc11_ * _loc7_ * _loc7_;
         K3.col2.x = -_loc11_ * _loc6_ * _loc7_;
         K3.col1.y = -_loc11_ * _loc6_ * _loc7_;
         K3.col2.y = _loc11_ * _loc6_ * _loc6_;
         K.SetM(K1);
         K.AddM(K2);
         K.AddM(K3);
         K.Invert(m_ptpMass);
         m_motorMass = 1 / (_loc10_ + _loc11_);
         if(m_enableMotor == false)
         {
            m_motorImpulse = 0;
         }
         if(m_enableLimit)
         {
            _loc12_ = _loc2_.m_rotation - _loc1_.m_rotation - m_intialAngle;
            if(b2Math.b2Abs(m_upperAngle - m_lowerAngle) < 2 * b2Settings.b2_angularSlop)
            {
               m_limitState = e_equalLimits;
            }
            else if(_loc12_ <= m_lowerAngle)
            {
               if(m_limitState != e_atLowerLimit)
               {
                  m_limitImpulse = 0;
               }
               m_limitState = e_atLowerLimit;
            }
            else if(_loc12_ >= m_upperAngle)
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
         else
         {
            m_limitImpulse = 0;
         }
         if(b2World.s_enableWarmStarting)
         {
            _loc1_.m_linearVelocity.x -= _loc8_ * m_ptpImpulse.x;
            _loc1_.m_linearVelocity.y -= _loc8_ * m_ptpImpulse.y;
            _loc1_.m_angularVelocity -= _loc10_ * (_loc4_ * m_ptpImpulse.y - _loc5_ * m_ptpImpulse.x + m_motorImpulse + m_limitImpulse);
            _loc2_.m_linearVelocity.x += _loc9_ * m_ptpImpulse.x;
            _loc2_.m_linearVelocity.y += _loc9_ * m_ptpImpulse.y;
            _loc2_.m_angularVelocity += _loc11_ * (_loc6_ * m_ptpImpulse.y - _loc7_ * m_ptpImpulse.x + m_motorImpulse + m_limitImpulse);
         }
         else
         {
            m_ptpImpulse.SetZero();
            m_motorImpulse = 0;
            m_limitImpulse = 0;
         }
         m_limitPositionImpulse = 0;
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:b2Vec2 = m_ptpImpulse.Copy();
         _loc2_.Multiply(param1);
         return _loc2_;
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc6_:b2Mat22 = null;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc3_:b2Body = m_body1;
         var _loc4_:b2Body = m_body2;
         var _loc5_:Number = 0;
         _loc6_ = _loc3_.m_R;
         var _loc7_:Number = _loc6_.col1.x * m_localAnchor1.x + _loc6_.col2.x * m_localAnchor1.y;
         var _loc8_:Number = _loc6_.col1.y * m_localAnchor1.x + _loc6_.col2.y * m_localAnchor1.y;
         _loc6_ = _loc4_.m_R;
         var _loc9_:Number = _loc6_.col1.x * m_localAnchor2.x + _loc6_.col2.x * m_localAnchor2.y;
         var _loc10_:Number = _loc6_.col1.y * m_localAnchor2.x + _loc6_.col2.y * m_localAnchor2.y;
         var _loc11_:Number = _loc3_.m_position.x + _loc7_;
         var _loc12_:Number = _loc3_.m_position.y + _loc8_;
         var _loc13_:Number = _loc4_.m_position.x + _loc9_;
         var _loc14_:Number = _loc4_.m_position.y + _loc10_;
         var _loc15_:Number = _loc13_ - _loc11_;
         var _loc16_:Number = _loc14_ - _loc12_;
         _loc5_ = Math.sqrt(_loc15_ * _loc15_ + _loc16_ * _loc16_);
         var _loc17_:Number = _loc3_.m_invMass;
         var _loc18_:Number = _loc4_.m_invMass;
         var _loc19_:Number = _loc3_.m_invI;
         var _loc20_:Number = _loc4_.m_invI;
         K1.col1.x = _loc17_ + _loc18_;
         K1.col2.x = 0;
         K1.col1.y = 0;
         K1.col2.y = _loc17_ + _loc18_;
         K2.col1.x = _loc19_ * _loc8_ * _loc8_;
         K2.col2.x = -_loc19_ * _loc7_ * _loc8_;
         K2.col1.y = -_loc19_ * _loc7_ * _loc8_;
         K2.col2.y = _loc19_ * _loc7_ * _loc7_;
         K3.col1.x = _loc20_ * _loc10_ * _loc10_;
         K3.col2.x = -_loc20_ * _loc9_ * _loc10_;
         K3.col1.y = -_loc20_ * _loc9_ * _loc10_;
         K3.col2.y = _loc20_ * _loc9_ * _loc9_;
         K.SetM(K1);
         K.AddM(K2);
         K.AddM(K3);
         K.Solve(tImpulse,-_loc15_,-_loc16_);
         var _loc21_:Number = tImpulse.x;
         var _loc22_:Number = tImpulse.y;
         _loc3_.m_position.x -= _loc3_.m_invMass * _loc21_;
         _loc3_.m_position.y -= _loc3_.m_invMass * _loc22_;
         _loc3_.m_rotation -= _loc3_.m_invI * (_loc7_ * _loc22_ - _loc8_ * _loc21_);
         _loc3_.m_R.Set(_loc3_.m_rotation);
         _loc4_.m_position.x += _loc4_.m_invMass * _loc21_;
         _loc4_.m_position.y += _loc4_.m_invMass * _loc22_;
         _loc4_.m_rotation += _loc4_.m_invI * (_loc9_ * _loc22_ - _loc10_ * _loc21_);
         _loc4_.m_R.Set(_loc4_.m_rotation);
         var _loc23_:Number = 0;
         if(m_enableLimit && m_limitState != e_inactiveLimit)
         {
            _loc24_ = _loc4_.m_rotation - _loc3_.m_rotation - m_intialAngle;
            _loc25_ = 0;
            if(m_limitState == e_equalLimits)
            {
               _loc2_ = b2Math.b2Clamp(_loc24_,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc25_ = -m_motorMass * _loc2_;
               _loc23_ = b2Math.b2Abs(_loc2_);
            }
            else if(m_limitState == e_atLowerLimit)
            {
               _loc2_ = _loc24_ - m_lowerAngle;
               _loc23_ = b2Math.b2Max(0,-_loc2_);
               _loc2_ = b2Math.b2Clamp(_loc2_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc25_ = -m_motorMass * _loc2_;
               _loc1_ = m_limitPositionImpulse;
               m_limitPositionImpulse = b2Math.b2Max(m_limitPositionImpulse + _loc25_,0);
               _loc25_ = m_limitPositionImpulse - _loc1_;
            }
            else if(m_limitState == e_atUpperLimit)
            {
               _loc2_ = _loc24_ - m_upperAngle;
               _loc23_ = b2Math.b2Max(0,_loc2_);
               _loc2_ = b2Math.b2Clamp(_loc2_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc25_ = -m_motorMass * _loc2_;
               _loc1_ = m_limitPositionImpulse;
               m_limitPositionImpulse = b2Math.b2Min(m_limitPositionImpulse + _loc25_,0);
               _loc25_ = m_limitPositionImpulse - _loc1_;
            }
            _loc3_.m_rotation -= _loc3_.m_invI * _loc25_;
            _loc3_.m_R.Set(_loc3_.m_rotation);
            _loc4_.m_rotation += _loc4_.m_invI * _loc25_;
            _loc4_.m_R.Set(_loc4_.m_rotation);
         }
         return _loc5_ <= b2Settings.b2_linearSlop && _loc23_ <= b2Settings.b2_angularSlop;
      }
      
      public function SetMotorSpeed(param1:Number) : *
      {
         m_motorSpeed = param1;
      }
      
      public function GetJointSpeed() : Number
      {
         return m_body2.m_angularVelocity - m_body1.m_angularVelocity;
      }
      
      public function SetMotorTorque(param1:Number) : *
      {
         m_maxMotorTorque = param1;
      }
      
      public function GetJointAngle() : Number
      {
         return m_body2.m_rotation - m_body1.m_rotation;
      }
      
      public function GetMotorTorque(param1:Number) : Number
      {
         return param1 * m_motorImpulse;
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * m_limitImpulse;
      }
      
      override public function SolveVelocityConstraints(param1:b2StepInfo) : *
      {
         var _loc4_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc2_:b2Body = m_body1;
         var _loc3_:b2Body = m_body2;
         _loc4_ = _loc2_.m_R;
         var _loc5_:Number = _loc4_.col1.x * m_localAnchor1.x + _loc4_.col2.x * m_localAnchor1.y;
         var _loc6_:Number = _loc4_.col1.y * m_localAnchor1.x + _loc4_.col2.y * m_localAnchor1.y;
         _loc4_ = _loc3_.m_R;
         var _loc7_:Number = _loc4_.col1.x * m_localAnchor2.x + _loc4_.col2.x * m_localAnchor2.y;
         var _loc8_:Number = _loc4_.col1.y * m_localAnchor2.x + _loc4_.col2.y * m_localAnchor2.y;
         var _loc10_:Number = _loc3_.m_linearVelocity.x + -_loc3_.m_angularVelocity * _loc8_ - _loc2_.m_linearVelocity.x - -_loc2_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.m_linearVelocity.y + _loc3_.m_angularVelocity * _loc7_ - _loc2_.m_linearVelocity.y - _loc2_.m_angularVelocity * _loc5_;
         var _loc12_:Number = -(m_ptpMass.col1.x * _loc10_ + m_ptpMass.col2.x * _loc11_);
         var _loc13_:Number = -(m_ptpMass.col1.y * _loc10_ + m_ptpMass.col2.y * _loc11_);
         m_ptpImpulse.x += _loc12_;
         m_ptpImpulse.y += _loc13_;
         _loc2_.m_linearVelocity.x -= _loc2_.m_invMass * _loc12_;
         _loc2_.m_linearVelocity.y -= _loc2_.m_invMass * _loc13_;
         _loc2_.m_angularVelocity -= _loc2_.m_invI * (_loc5_ * _loc13_ - _loc6_ * _loc12_);
         _loc3_.m_linearVelocity.x += _loc3_.m_invMass * _loc12_;
         _loc3_.m_linearVelocity.y += _loc3_.m_invMass * _loc13_;
         _loc3_.m_angularVelocity += _loc3_.m_invI * (_loc7_ * _loc13_ - _loc8_ * _loc12_);
         if(m_enableMotor && m_limitState != e_equalLimits)
         {
            _loc14_ = _loc3_.m_angularVelocity - _loc2_.m_angularVelocity - m_motorSpeed;
            _loc15_ = -m_motorMass * _loc14_;
            _loc16_ = m_motorImpulse;
            m_motorImpulse = b2Math.b2Clamp(m_motorImpulse + _loc15_,-param1.dt * m_maxMotorTorque,param1.dt * m_maxMotorTorque);
            _loc15_ = m_motorImpulse - _loc16_;
            _loc2_.m_angularVelocity -= _loc2_.m_invI * _loc15_;
            _loc3_.m_angularVelocity += _loc3_.m_invI * _loc15_;
         }
         if(m_enableLimit && m_limitState != e_inactiveLimit)
         {
            _loc17_ = _loc3_.m_angularVelocity - _loc2_.m_angularVelocity;
            _loc18_ = -m_motorMass * _loc17_;
            if(m_limitState == e_equalLimits)
            {
               m_limitImpulse += _loc18_;
            }
            else if(m_limitState == e_atLowerLimit)
            {
               _loc9_ = m_limitImpulse;
               m_limitImpulse = b2Math.b2Max(m_limitImpulse + _loc18_,0);
               _loc18_ = m_limitImpulse - _loc9_;
            }
            else if(m_limitState == e_atUpperLimit)
            {
               _loc9_ = m_limitImpulse;
               m_limitImpulse = b2Math.b2Min(m_limitImpulse + _loc18_,0);
               _loc18_ = m_limitImpulse - _loc9_;
            }
            _loc2_.m_angularVelocity -= _loc2_.m_invI * _loc18_;
            _loc3_.m_angularVelocity += _loc3_.m_invI * _loc18_;
         }
      }
   }
}

