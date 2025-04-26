package Engine.Dynamics.Contacts
{
   import Engine.Collision.*;
   import Engine.Common.*;
   import Engine.Common.Math.*;
   import Engine.Dynamics.*;
   
   public class b2ContactSolver
   {
      public var m_constraintCount:int;
      
      public var m_constraints:Array;
      
      public var m_allocator:*;
      
      public function b2ContactSolver(param1:Array, param2:int, param3:*)
      {
         var _loc4_:int = 0;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Mat22 = null;
         var _loc8_:b2Contact = null;
         var _loc9_:b2Body = null;
         var _loc10_:b2Body = null;
         var _loc11_:int = 0;
         var _loc12_:Array = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:int = 0;
         var _loc22_:b2Manifold = null;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2ContactConstraint = null;
         var _loc26_:* = undefined;
         var _loc27_:b2ContactPoint = null;
         var _loc28_:b2ContactConstraintPoint = null;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         m_constraints = new Array();
         super();
         m_allocator = param3;
         m_constraintCount = 0;
         _loc4_ = 0;
         while(_loc4_ < param2)
         {
            m_constraintCount += param1[_loc4_].GetManifoldCount();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < m_constraintCount)
         {
            m_constraints[_loc4_] = new b2ContactConstraint();
            _loc4_++;
         }
         var _loc7_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2)
         {
            _loc8_ = param1[_loc4_];
            _loc9_ = _loc8_.m_shape1.m_body;
            _loc10_ = _loc8_.m_shape2.m_body;
            _loc11_ = _loc8_.GetManifoldCount();
            _loc12_ = _loc8_.GetManifolds();
            _loc13_ = _loc8_.m_friction;
            _loc14_ = _loc8_.m_restitution;
            _loc15_ = _loc9_.m_linearVelocity.x;
            _loc16_ = _loc9_.m_linearVelocity.y;
            _loc17_ = _loc10_.m_linearVelocity.x;
            _loc18_ = _loc10_.m_linearVelocity.y;
            _loc19_ = _loc9_.m_angularVelocity;
            _loc20_ = _loc10_.m_angularVelocity;
            _loc21_ = 0;
            while(_loc21_ < _loc11_)
            {
               _loc22_ = _loc12_[_loc21_];
               _loc23_ = _loc22_.normal.x;
               _loc24_ = _loc22_.normal.y;
               _loc25_ = m_constraints[_loc7_];
               _loc25_.body1 = _loc9_;
               _loc25_.body2 = _loc10_;
               _loc25_.manifold = _loc22_;
               _loc25_.normal.x = _loc23_;
               _loc25_.normal.y = _loc24_;
               _loc25_.pointCount = _loc22_.pointCount;
               _loc25_.friction = _loc13_;
               _loc25_.restitution = _loc14_;
               _loc26_ = 0;
               while(_loc26_ < _loc25_.pointCount)
               {
                  _loc27_ = _loc22_.points[_loc26_];
                  _loc28_ = _loc25_.points[_loc26_];
                  _loc28_.normalImpulse = _loc27_.normalImpulse;
                  _loc28_.tangentImpulse = _loc27_.tangentImpulse;
                  _loc28_.separation = _loc27_.separation;
                  _loc29_ = _loc27_.position.x - _loc9_.m_position.x;
                  _loc30_ = _loc27_.position.y - _loc9_.m_position.y;
                  _loc31_ = _loc27_.position.x - _loc10_.m_position.x;
                  _loc32_ = _loc27_.position.y - _loc10_.m_position.y;
                  _loc5_ = _loc28_.localAnchor1;
                  _loc6_ = _loc9_.m_R;
                  _loc5_.x = _loc29_ * _loc6_.col1.x + _loc30_ * _loc6_.col1.y;
                  _loc5_.y = _loc29_ * _loc6_.col2.x + _loc30_ * _loc6_.col2.y;
                  _loc5_ = _loc28_.localAnchor2;
                  _loc6_ = _loc10_.m_R;
                  _loc5_.x = _loc31_ * _loc6_.col1.x + _loc32_ * _loc6_.col1.y;
                  _loc5_.y = _loc31_ * _loc6_.col2.x + _loc32_ * _loc6_.col2.y;
                  _loc33_ = _loc29_ * _loc29_ + _loc30_ * _loc30_;
                  _loc34_ = _loc31_ * _loc31_ + _loc32_ * _loc32_;
                  _loc35_ = _loc29_ * _loc23_ + _loc30_ * _loc24_;
                  _loc36_ = _loc31_ * _loc23_ + _loc32_ * _loc24_;
                  _loc37_ = _loc9_.m_invMass + _loc10_.m_invMass;
                  _loc37_ = _loc37_ + (_loc9_.m_invI * (_loc33_ - _loc35_ * _loc35_) + _loc10_.m_invI * (_loc34_ - _loc36_ * _loc36_));
                  _loc28_.normalMass = 1 / _loc37_;
                  _loc38_ = _loc24_;
                  _loc39_ = -_loc23_;
                  _loc40_ = _loc29_ * _loc38_ + _loc30_ * _loc39_;
                  _loc41_ = _loc31_ * _loc38_ + _loc32_ * _loc39_;
                  _loc42_ = _loc9_.m_invMass + _loc10_.m_invMass;
                  _loc42_ = _loc42_ + (_loc9_.m_invI * (_loc33_ - _loc40_ * _loc40_) + _loc10_.m_invI * (_loc34_ - _loc41_ * _loc41_));
                  _loc28_.tangentMass = 1 / _loc42_;
                  _loc43_ = _loc17_ + -_loc20_ * _loc32_ - _loc15_ - -_loc19_ * _loc30_;
                  _loc44_ = _loc18_ + _loc20_ * _loc31_ - _loc16_ - _loc19_ * _loc29_;
                  _loc45_ = _loc25_.normal.x * _loc43_ + _loc25_.normal.y * _loc44_;
                  if(_loc45_ < -b2Settings.b2_velocityThreshold)
                  {
                     _loc28_.velocityBias = -_loc25_.restitution * _loc45_;
                  }
                  else
                  {
                     _loc28_.velocityBias = 0;
                  }
                  _loc26_++;
               }
               _loc7_++;
               _loc21_++;
            }
            _loc4_++;
         }
      }
      
      public function SolveVelocityConstraints() : *
      {
         var _loc1_:int = 0;
         var _loc2_:b2ContactConstraintPoint = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:b2Mat22 = null;
         var _loc14_:b2Vec2 = null;
         var _loc16_:b2ContactConstraint = null;
         var _loc17_:b2Body = null;
         var _loc18_:b2Body = null;
         var _loc19_:Number = NaN;
         var _loc20_:b2Vec2 = null;
         var _loc21_:Number = NaN;
         var _loc22_:b2Vec2 = null;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:int = 0;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc15_:int = 0;
         while(_loc15_ < m_constraintCount)
         {
            _loc16_ = m_constraints[_loc15_];
            _loc17_ = _loc16_.body1;
            _loc18_ = _loc16_.body2;
            _loc19_ = _loc17_.m_angularVelocity;
            _loc20_ = _loc17_.m_linearVelocity;
            _loc21_ = _loc18_.m_angularVelocity;
            _loc22_ = _loc18_.m_linearVelocity;
            _loc23_ = _loc17_.m_invMass;
            _loc24_ = _loc17_.m_invI;
            _loc25_ = _loc18_.m_invMass;
            _loc26_ = _loc18_.m_invI;
            _loc27_ = _loc16_.normal.x;
            _loc29_ = _loc28_ = _loc16_.normal.y;
            _loc30_ = -_loc27_;
            _loc31_ = _loc16_.pointCount;
            _loc1_ = 0;
            while(_loc1_ < _loc31_)
            {
               _loc2_ = _loc16_.points[_loc1_];
               _loc13_ = _loc17_.m_R;
               _loc14_ = _loc2_.localAnchor1;
               _loc3_ = _loc13_.col1.x * _loc14_.x + _loc13_.col2.x * _loc14_.y;
               _loc4_ = _loc13_.col1.y * _loc14_.x + _loc13_.col2.y * _loc14_.y;
               _loc13_ = _loc18_.m_R;
               _loc14_ = _loc2_.localAnchor2;
               _loc5_ = _loc13_.col1.x * _loc14_.x + _loc13_.col2.x * _loc14_.y;
               _loc6_ = _loc13_.col1.y * _loc14_.x + _loc13_.col2.y * _loc14_.y;
               _loc7_ = _loc22_.x + -_loc21_ * _loc6_ - _loc20_.x - -_loc19_ * _loc4_;
               _loc8_ = _loc22_.y + _loc21_ * _loc5_ - _loc20_.y - _loc19_ * _loc3_;
               _loc32_ = _loc7_ * _loc27_ + _loc8_ * _loc28_;
               _loc9_ = -_loc2_.normalMass * (_loc32_ - _loc2_.velocityBias);
               _loc10_ = b2Math.b2Max(_loc2_.normalImpulse + _loc9_,0);
               _loc9_ = _loc10_ - _loc2_.normalImpulse;
               _loc11_ = _loc9_ * _loc27_;
               _loc12_ = _loc9_ * _loc28_;
               _loc20_.x -= _loc23_ * _loc11_;
               _loc20_.y -= _loc23_ * _loc12_;
               _loc19_ -= _loc24_ * (_loc3_ * _loc12_ - _loc4_ * _loc11_);
               _loc22_.x += _loc25_ * _loc11_;
               _loc22_.y += _loc25_ * _loc12_;
               _loc21_ += _loc26_ * (_loc5_ * _loc12_ - _loc6_ * _loc11_);
               _loc2_.normalImpulse = _loc10_;
               _loc7_ = _loc22_.x + -_loc21_ * _loc6_ - _loc20_.x - -_loc19_ * _loc4_;
               _loc8_ = _loc22_.y + _loc21_ * _loc5_ - _loc20_.y - _loc19_ * _loc3_;
               _loc33_ = _loc7_ * _loc29_ + _loc8_ * _loc30_;
               _loc9_ = _loc2_.tangentMass * -_loc33_;
               _loc34_ = _loc16_.friction * _loc2_.normalImpulse;
               _loc10_ = b2Math.b2Clamp(_loc2_.tangentImpulse + _loc9_,-_loc34_,_loc34_);
               _loc9_ = _loc10_ - _loc2_.tangentImpulse;
               _loc11_ = _loc9_ * _loc29_;
               _loc12_ = _loc9_ * _loc30_;
               _loc20_.x -= _loc23_ * _loc11_;
               _loc20_.y -= _loc23_ * _loc12_;
               _loc19_ -= _loc24_ * (_loc3_ * _loc12_ - _loc4_ * _loc11_);
               _loc22_.x += _loc25_ * _loc11_;
               _loc22_.y += _loc25_ * _loc12_;
               _loc21_ += _loc26_ * (_loc5_ * _loc12_ - _loc6_ * _loc11_);
               _loc2_.tangentImpulse = _loc10_;
               _loc1_++;
            }
            _loc17_.m_angularVelocity = _loc19_;
            _loc18_.m_angularVelocity = _loc21_;
            _loc15_++;
         }
      }
      
      public function PreSolve() : *
      {
         var _loc1_:b2Vec2 = null;
         var _loc2_:b2Vec2 = null;
         var _loc3_:b2Mat22 = null;
         var _loc5_:b2ContactConstraint = null;
         var _loc6_:b2Body = null;
         var _loc7_:b2Body = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:b2ContactConstraintPoint = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2ContactConstraintPoint = null;
         var _loc4_:int = 0;
         while(_loc4_ < m_constraintCount)
         {
            _loc5_ = m_constraints[_loc4_];
            _loc6_ = _loc5_.body1;
            _loc7_ = _loc5_.body2;
            _loc8_ = _loc6_.m_invMass;
            _loc9_ = _loc6_.m_invI;
            _loc10_ = _loc7_.m_invMass;
            _loc11_ = _loc7_.m_invI;
            _loc12_ = _loc5_.normal.x;
            _loc14_ = _loc13_ = _loc5_.normal.y;
            _loc15_ = -_loc12_;
            if(b2World.s_enableWarmStarting)
            {
               _loc17_ = _loc5_.pointCount;
               _loc16_ = 0;
               while(_loc16_ < _loc17_)
               {
                  _loc18_ = _loc5_.points[_loc16_];
                  _loc19_ = _loc18_.normalImpulse * _loc12_ + _loc18_.tangentImpulse * _loc14_;
                  _loc20_ = _loc18_.normalImpulse * _loc13_ + _loc18_.tangentImpulse * _loc15_;
                  _loc3_ = _loc6_.m_R;
                  _loc1_ = _loc18_.localAnchor1;
                  _loc21_ = _loc3_.col1.x * _loc1_.x + _loc3_.col2.x * _loc1_.y;
                  _loc22_ = _loc3_.col1.y * _loc1_.x + _loc3_.col2.y * _loc1_.y;
                  _loc3_ = _loc7_.m_R;
                  _loc1_ = _loc18_.localAnchor2;
                  _loc23_ = _loc3_.col1.x * _loc1_.x + _loc3_.col2.x * _loc1_.y;
                  _loc24_ = _loc3_.col1.y * _loc1_.x + _loc3_.col2.y * _loc1_.y;
                  _loc6_.m_angularVelocity -= _loc9_ * (_loc21_ * _loc20_ - _loc22_ * _loc19_);
                  _loc6_.m_linearVelocity.x -= _loc8_ * _loc19_;
                  _loc6_.m_linearVelocity.y -= _loc8_ * _loc20_;
                  _loc7_.m_angularVelocity += _loc11_ * (_loc23_ * _loc20_ - _loc24_ * _loc19_);
                  _loc7_.m_linearVelocity.x += _loc10_ * _loc19_;
                  _loc7_.m_linearVelocity.y += _loc10_ * _loc20_;
                  _loc18_.positionImpulse = 0;
                  _loc16_++;
               }
            }
            else
            {
               _loc17_ = _loc5_.pointCount;
               _loc16_ = 0;
               while(_loc16_ < _loc17_)
               {
                  _loc25_ = _loc5_.points[_loc16_];
                  _loc25_.normalImpulse = 0;
                  _loc25_.tangentImpulse = 0;
                  _loc25_.positionImpulse = 0;
                  _loc16_++;
               }
            }
            _loc4_++;
         }
      }
      
      public function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:b2Vec2 = null;
         var _loc6_:b2ContactConstraint = null;
         var _loc7_:b2Body = null;
         var _loc8_:b2Body = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc2_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < m_constraintCount)
         {
            _loc6_ = m_constraints[_loc5_];
            _loc7_ = _loc6_.body1;
            _loc8_ = _loc6_.body2;
            _loc9_ = _loc7_.m_position;
            _loc10_ = _loc7_.m_rotation;
            _loc11_ = _loc8_.m_position;
            _loc12_ = _loc8_.m_rotation;
            _loc13_ = _loc7_.m_invMass;
            _loc14_ = _loc7_.m_invI;
            _loc15_ = _loc8_.m_invMass;
            _loc16_ = _loc8_.m_invI;
            _loc17_ = _loc6_.normal.x;
            _loc19_ = _loc18_ = _loc6_.normal.y;
            _loc20_ = -_loc17_;
            _loc21_ = _loc6_.pointCount;
            _loc22_ = 0;
            while(_loc22_ < _loc21_)
            {
               _loc23_ = _loc6_.points[_loc22_];
               _loc3_ = _loc7_.m_R;
               _loc4_ = _loc23_.localAnchor1;
               _loc24_ = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
               _loc25_ = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
               _loc3_ = _loc8_.m_R;
               _loc4_ = _loc23_.localAnchor2;
               _loc26_ = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
               _loc27_ = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
               _loc28_ = _loc9_.x + _loc24_;
               _loc29_ = _loc9_.y + _loc25_;
               _loc30_ = _loc11_.x + _loc26_;
               _loc31_ = _loc11_.y + _loc27_;
               _loc32_ = _loc30_ - _loc28_;
               _loc33_ = _loc31_ - _loc29_;
               _loc34_ = _loc32_ * _loc17_ + _loc33_ * _loc18_ + _loc23_.separation;
               _loc2_ = b2Math.b2Min(_loc2_,_loc34_);
               _loc35_ = param1 * b2Math.b2Clamp(_loc34_ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc36_ = -_loc23_.normalMass * _loc35_;
               _loc37_ = _loc23_.positionImpulse;
               _loc23_.positionImpulse = b2Math.b2Max(_loc37_ + _loc36_,0);
               _loc36_ = _loc23_.positionImpulse - _loc37_;
               _loc38_ = _loc36_ * _loc17_;
               _loc39_ = _loc36_ * _loc18_;
               _loc9_.x -= _loc13_ * _loc38_;
               _loc9_.y -= _loc13_ * _loc39_;
               _loc10_ -= _loc14_ * (_loc24_ * _loc39_ - _loc25_ * _loc38_);
               _loc7_.m_R.Set(_loc10_);
               _loc11_.x += _loc15_ * _loc38_;
               _loc11_.y += _loc15_ * _loc39_;
               _loc12_ += _loc16_ * (_loc26_ * _loc39_ - _loc27_ * _loc38_);
               _loc8_.m_R.Set(_loc12_);
               _loc22_++;
            }
            _loc7_.m_rotation = _loc10_;
            _loc8_.m_rotation = _loc12_;
            _loc5_++;
         }
         return _loc2_ >= -b2Settings.b2_linearSlop;
      }
      
      public function PostSolve() : *
      {
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:int = 0;
         var _loc5_:b2ContactPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < m_constraintCount)
         {
            _loc2_ = m_constraints[_loc1_];
            _loc3_ = _loc2_.manifold;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.pointCount)
            {
               _loc5_ = _loc3_.points[_loc4_];
               _loc6_ = _loc2_.points[_loc4_];
               _loc5_.normalImpulse = _loc6_.normalImpulse;
               _loc5_.tangentImpulse = _loc6_.tangentImpulse;
               _loc4_++;
            }
            _loc1_++;
         }
      }
   }
}

