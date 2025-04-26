package Engine.Dynamics.Joints
{
   import Engine.Common.Math.b2Mat22;
   import Engine.Common.Math.b2Math;
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   import Engine.Dynamics.b2Body;
   import Engine.Dynamics.b2StepInfo;
   
   public class b2MouseJoint extends b2Joint
   {
      private var K1:b2Mat22;
      
      public var m_beta:Number;
      
      private var K:b2Mat22;
      
      private var K2:b2Mat22;
      
      public var m_target:b2Vec2;
      
      public var m_gamma:Number;
      
      public var m_impulse:b2Vec2;
      
      public var m_ptpMass:b2Mat22;
      
      public var m_C:b2Vec2;
      
      public var m_maxForce:Number;
      
      public var m_localAnchor:b2Vec2;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc3_:Number = NaN;
         K = new b2Mat22();
         K1 = new b2Mat22();
         K2 = new b2Mat22();
         m_localAnchor = new b2Vec2();
         m_target = new b2Vec2();
         m_impulse = new b2Vec2();
         m_ptpMass = new b2Mat22();
         m_C = new b2Vec2();
         super(param1);
         m_target.SetV(param1.target);
         var _loc2_:Number = m_target.x - m_body2.m_position.x;
         _loc3_ = m_target.y - m_body2.m_position.y;
         m_localAnchor.x = _loc2_ * m_body2.m_R.col1.x + _loc3_ * m_body2.m_R.col1.y;
         m_localAnchor.y = _loc2_ * m_body2.m_R.col2.x + _loc3_ * m_body2.m_R.col2.y;
         m_maxForce = param1.maxForce;
         m_impulse.SetZero();
         var _loc4_:Number = m_body2.m_mass;
         var _loc5_:Number = 2 * b2Settings.b2_pi * param1.frequencyHz;
         var _loc6_:Number = 2 * _loc4_ * param1.dampingRatio * _loc5_;
         var _loc7_:Number = _loc4_ * _loc5_ * _loc5_;
         m_gamma = 1 / (_loc6_ + param1.timeStep * _loc7_);
         m_beta = param1.timeStep * _loc7_ / (_loc6_ + param1.timeStep * _loc7_);
      }
      
      public function SetTarget(param1:b2Vec2) : *
      {
         m_body2.WakeUp();
         m_target = param1;
      }
      
      override public function GetAnchor2() : b2Vec2
      {
         var _loc1_:b2Vec2 = b2Math.b2MulMV(m_body2.m_R,m_localAnchor);
         _loc1_.Add(m_body2.m_position);
         return _loc1_;
      }
      
      override public function GetAnchor1() : b2Vec2
      {
         return m_target;
      }
      
      override public function PrepareVelocitySolver() : *
      {
         var _loc1_:b2Body = null;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         _loc1_ = m_body2;
         _loc2_ = _loc1_.m_R;
         _loc3_ = _loc2_.col1.x * m_localAnchor.x + _loc2_.col2.x * m_localAnchor.y;
         _loc4_ = _loc2_.col1.y * m_localAnchor.x + _loc2_.col2.y * m_localAnchor.y;
         _loc5_ = _loc1_.m_invMass;
         _loc6_ = _loc1_.m_invI;
         K1.col1.x = _loc5_;
         K1.col2.x = 0;
         K1.col1.y = 0;
         K1.col2.y = _loc5_;
         K2.col1.x = _loc6_ * _loc4_ * _loc4_;
         K2.col2.x = -_loc6_ * _loc3_ * _loc4_;
         K2.col1.y = -_loc6_ * _loc3_ * _loc4_;
         K2.col2.y = _loc6_ * _loc3_ * _loc3_;
         K.SetM(K1);
         K.AddM(K2);
         K.col1.x += m_gamma;
         K.col2.y += m_gamma;
         K.Invert(m_ptpMass);
         m_C.x = _loc1_.m_position.x + _loc3_ - m_target.x;
         m_C.y = _loc1_.m_position.y + _loc4_ - m_target.y;
         _loc1_.m_angularVelocity *= 0.98;
         var _loc7_:Number = m_impulse.x;
         var _loc8_:Number = m_impulse.y;
         _loc1_.m_linearVelocity.x += _loc5_ * _loc7_;
         _loc1_.m_linearVelocity.y += _loc5_ * _loc8_;
         _loc1_.m_angularVelocity += _loc6_ * (_loc3_ * _loc8_ - _loc4_ * _loc7_);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:b2Vec2 = new b2Vec2();
         _loc2_.SetV(m_impulse);
         _loc2_.Multiply(param1);
         return _loc2_;
      }
      
      override public function SolvePositionConstraints() : Boolean
      {
         return true;
      }
      
      override public function SolveVelocityConstraints(param1:b2StepInfo) : *
      {
         var _loc3_:b2Mat22 = null;
         var _loc2_:b2Body = m_body2;
         _loc3_ = _loc2_.m_R;
         var _loc4_:Number = _loc3_.col1.x * m_localAnchor.x + _loc3_.col2.x * m_localAnchor.y;
         var _loc5_:Number = _loc3_.col1.y * m_localAnchor.x + _loc3_.col2.y * m_localAnchor.y;
         var _loc6_:Number = _loc2_.m_linearVelocity.x + -_loc2_.m_angularVelocity * _loc5_;
         var _loc7_:Number = _loc2_.m_linearVelocity.y + _loc2_.m_angularVelocity * _loc4_;
         _loc3_ = m_ptpMass;
         var _loc8_:Number = _loc6_ + m_beta * param1.inv_dt * m_C.x + m_gamma * m_impulse.x;
         var _loc9_:Number = _loc7_ + m_beta * param1.inv_dt * m_C.y + m_gamma * m_impulse.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc8_ + _loc3_.col2.x * _loc9_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc8_ + _loc3_.col2.y * _loc9_);
         var _loc12_:Number = m_impulse.x;
         var _loc13_:Number = m_impulse.y;
         m_impulse.x += _loc10_;
         m_impulse.y += _loc11_;
         var _loc14_:Number = m_impulse.Length();
         if(_loc14_ > param1.dt * m_maxForce)
         {
            m_impulse.Multiply(param1.dt * m_maxForce / _loc14_);
         }
         _loc10_ = m_impulse.x - _loc12_;
         _loc11_ = m_impulse.y - _loc13_;
         _loc2_.m_linearVelocity.x += _loc2_.m_invMass * _loc10_;
         _loc2_.m_linearVelocity.y += _loc2_.m_invMass * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.m_invI * (_loc4_ * _loc11_ - _loc5_ * _loc10_);
      }
   }
}

