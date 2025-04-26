package Engine.Dynamics.Joints
{
   import Engine.Common.Math.b2Mat22;
   import Engine.Common.Math.b2Math;
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   import Engine.Dynamics.b2StepInfo;
   import Engine.Dynamics.b2World;
   
   public class b2DistanceJoint extends b2Joint
   {
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_u:b2Vec2;
      
      public var m_impulse:Number;
      
      public var m_length:Number;
      
      public var m_mass:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         m_localAnchor1 = new b2Vec2();
         m_localAnchor2 = new b2Vec2();
         m_u = new b2Vec2();
         super(param1);
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
         _loc3_ = param1.anchorPoint2.x - param1.anchorPoint1.x;
         _loc4_ = param1.anchorPoint2.y - param1.anchorPoint1.y;
         m_length = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         m_impulse = 0;
      }
      
      override public function GetAnchor1() : b2Vec2
      {
         return b2Math.AddVV(m_body1.m_position,b2Math.b2MulMV(m_body1.m_R,m_localAnchor1));
      }
      
      override public function GetAnchor2() : b2Vec2
      {
         return b2Math.AddVV(m_body2.m_position,b2Math.b2MulMV(m_body2.m_R,m_localAnchor2));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:b2Vec2 = new b2Vec2();
         _loc2_.SetV(m_u);
         _loc2_.Multiply(m_impulse * param1);
         return _loc2_;
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         var _loc1_:b2Mat22 = null;
         _loc1_ = m_body1.m_R;
         var _loc2_:Number = _loc1_.col1.x * m_localAnchor1.x + _loc1_.col2.x * m_localAnchor1.y;
         var _loc3_:Number = _loc1_.col1.y * m_localAnchor1.x + _loc1_.col2.y * m_localAnchor1.y;
         _loc1_ = m_body2.m_R;
         var _loc4_:Number = _loc1_.col1.x * m_localAnchor2.x + _loc1_.col2.x * m_localAnchor2.y;
         var _loc5_:Number = _loc1_.col1.y * m_localAnchor2.x + _loc1_.col2.y * m_localAnchor2.y;
         var _loc6_:Number = m_body2.m_position.x + _loc4_ - m_body1.m_position.x - _loc2_;
         var _loc7_:Number = m_body2.m_position.y + _loc5_ - m_body1.m_position.y - _loc3_;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         _loc6_ /= _loc8_;
         _loc7_ /= _loc8_;
         var _loc9_:Number = _loc8_ - m_length;
         _loc9_ = b2Math.b2Clamp(_loc9_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc10_:Number = -m_mass * _loc9_;
         m_u.Set(_loc6_,_loc7_);
         var _loc11_:Number = _loc10_ * m_u.x;
         var _loc12_:Number = _loc10_ * m_u.y;
         m_body1.m_position.x -= m_body1.m_invMass * _loc11_;
         m_body1.m_position.y -= m_body1.m_invMass * _loc12_;
         m_body1.m_rotation -= m_body1.m_invI * (_loc2_ * _loc12_ - _loc3_ * _loc11_);
         m_body2.m_position.x += m_body2.m_invMass * _loc11_;
         m_body2.m_position.y += m_body2.m_invMass * _loc12_;
         m_body2.m_rotation += m_body2.m_invI * (_loc4_ * _loc12_ - _loc5_ * _loc11_);
         m_body1.m_R.Set(m_body1.m_rotation);
         m_body2.m_R.Set(m_body2.m_rotation);
         return b2Math.b2Abs(_loc9_) < b2Settings.b2_linearSlop;
      }
      
      override public function PrepareVelocitySolver() : *
      {
         var _loc1_:b2Mat22 = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         _loc1_ = m_body1.m_R;
         _loc2_ = _loc1_.col1.x * m_localAnchor1.x + _loc1_.col2.x * m_localAnchor1.y;
         _loc3_ = _loc1_.col1.y * m_localAnchor1.x + _loc1_.col2.y * m_localAnchor1.y;
         _loc1_ = m_body2.m_R;
         _loc4_ = _loc1_.col1.x * m_localAnchor2.x + _loc1_.col2.x * m_localAnchor2.y;
         _loc5_ = _loc1_.col1.y * m_localAnchor2.x + _loc1_.col2.y * m_localAnchor2.y;
         m_u.x = m_body2.m_position.x + _loc4_ - m_body1.m_position.x - _loc2_;
         m_u.y = m_body2.m_position.y + _loc5_ - m_body1.m_position.y - _loc3_;
         var _loc6_:Number = Math.sqrt(m_u.x * m_u.x + m_u.y * m_u.y);
         if(_loc6_ > b2Settings.b2_linearSlop)
         {
            m_u.Multiply(1 / _loc6_);
         }
         else
         {
            m_u.SetZero();
         }
         var _loc7_:Number = _loc2_ * m_u.y - _loc3_ * m_u.x;
         var _loc8_:Number = _loc4_ * m_u.y - _loc5_ * m_u.x;
         m_mass = m_body1.m_invMass + m_body1.m_invI * _loc7_ * _loc7_ + m_body2.m_invMass + m_body2.m_invI * _loc8_ * _loc8_;
         m_mass = 1 / m_mass;
         if(b2World.s_enableWarmStarting)
         {
            _loc9_ = m_impulse * m_u.x;
            _loc10_ = m_impulse * m_u.y;
            m_body1.m_linearVelocity.x -= m_body1.m_invMass * _loc9_;
            m_body1.m_linearVelocity.y -= m_body1.m_invMass * _loc10_;
            m_body1.m_angularVelocity -= m_body1.m_invI * (_loc2_ * _loc10_ - _loc3_ * _loc9_);
            m_body2.m_linearVelocity.x += m_body2.m_invMass * _loc9_;
            m_body2.m_linearVelocity.y += m_body2.m_invMass * _loc10_;
            m_body2.m_angularVelocity += m_body2.m_invI * (_loc4_ * _loc10_ - _loc5_ * _loc9_);
         }
         else
         {
            m_impulse = 0;
         }
      }
      
      override public function SolveVelocityConstraints(param1:b2StepInfo) : *
      {
         var _loc2_:b2Mat22 = null;
         var _loc14_:Number = NaN;
         _loc2_ = m_body1.m_R;
         var _loc3_:Number = _loc2_.col1.x * m_localAnchor1.x + _loc2_.col2.x * m_localAnchor1.y;
         var _loc4_:Number = _loc2_.col1.y * m_localAnchor1.x + _loc2_.col2.y * m_localAnchor1.y;
         _loc2_ = m_body2.m_R;
         var _loc5_:Number = _loc2_.col1.x * m_localAnchor2.x + _loc2_.col2.x * m_localAnchor2.y;
         var _loc6_:Number = _loc2_.col1.y * m_localAnchor2.x + _loc2_.col2.y * m_localAnchor2.y;
         var _loc7_:Number = m_body1.m_linearVelocity.x + -m_body1.m_angularVelocity * _loc4_;
         var _loc8_:Number = m_body1.m_linearVelocity.y + m_body1.m_angularVelocity * _loc3_;
         var _loc9_:Number = m_body2.m_linearVelocity.x + -m_body2.m_angularVelocity * _loc6_;
         var _loc10_:Number = m_body2.m_linearVelocity.y + m_body2.m_angularVelocity * _loc5_;
         var _loc11_:Number = m_u.x * (_loc9_ - _loc7_) + m_u.y * (_loc10_ - _loc8_);
         var _loc12_:Number = -m_mass * _loc11_;
         m_impulse += _loc12_;
         var _loc13_:Number = _loc12_ * m_u.x;
         _loc14_ = _loc12_ * m_u.y;
         m_body1.m_linearVelocity.x -= m_body1.m_invMass * _loc13_;
         m_body1.m_linearVelocity.y -= m_body1.m_invMass * _loc14_;
         m_body1.m_angularVelocity -= m_body1.m_invI * (_loc3_ * _loc14_ - _loc4_ * _loc13_);
         m_body2.m_linearVelocity.x += m_body2.m_invMass * _loc13_;
         m_body2.m_linearVelocity.y += m_body2.m_invMass * _loc14_;
         m_body2.m_angularVelocity += m_body2.m_invI * (_loc5_ * _loc14_ - _loc6_ * _loc13_);
      }
   }
}

