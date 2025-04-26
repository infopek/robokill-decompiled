package Engine.Collision
{
   import Engine.Collision.Shapes.*;
   import Engine.Common.*;
   import Engine.Common.Math.*;
   
   public class b2Collision
   {
      public static const b2_nullFeature:uint = 255;
      
      public static var v1:b2Vec2 = new b2Vec2();
      
      public static var v2:b2Vec2 = new b2Vec2();
      
      public static var d:b2Vec2 = new b2Vec2();
      
      public static var dLocal1:b2Vec2 = new b2Vec2();
      
      private static var b2CollidePolyTempVec:b2Vec2 = new b2Vec2();
      
      public function b2Collision()
      {
         super();
      }
      
      public static function EdgeSeparation(param1:b2PolyShape, param2:int, param3:b2PolyShape) : Number
      {
         var _loc5_:Array = null;
         var _loc8_:int = 0;
         var _loc14_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:Number = NaN;
         var _loc4_:int = param1.m_vertexCount;
         _loc5_ = param1.m_vertices;
         var _loc6_:int = param3.m_vertexCount;
         var _loc7_:Array = param3.m_vertices;
         _loc8_ = param2;
         var _loc9_:int = param2 + 1 == _loc4_ ? 0 : param2 + 1;
         var _loc10_:Number = _loc5_[_loc9_].x - _loc5_[_loc8_].x;
         var _loc11_:Number = _loc5_[_loc9_].y - _loc5_[_loc8_].y;
         var _loc12_:Number = _loc10_;
         _loc10_ = _loc11_;
         _loc11_ = -_loc12_;
         var _loc13_:Number = 1 / Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         _loc10_ *= _loc13_;
         _loc11_ *= _loc13_;
         _loc14_ = _loc10_;
         var _loc15_:Number = _loc11_;
         _loc12_ = _loc14_;
         var _loc16_:b2Mat22 = param1.m_R;
         _loc14_ = _loc16_.col1.x * _loc12_ + _loc16_.col2.x * _loc15_;
         _loc15_ = _loc16_.col1.y * _loc12_ + _loc16_.col2.y * _loc15_;
         var _loc17_:Number = _loc14_;
         var _loc18_:Number = _loc15_;
         _loc16_ = param3.m_R;
         _loc12_ = _loc17_ * _loc16_.col1.x + _loc18_ * _loc16_.col1.y;
         _loc18_ = _loc17_ * _loc16_.col2.x + _loc18_ * _loc16_.col2.y;
         _loc17_ = _loc12_;
         var _loc19_:int = 0;
         var _loc20_:Number = Number.MAX_VALUE;
         var _loc21_:int = 0;
         while(_loc21_ < _loc6_)
         {
            _loc23_ = _loc7_[_loc21_];
            _loc24_ = _loc23_.x * _loc17_ + _loc23_.y * _loc18_;
            if(_loc24_ < _loc20_)
            {
               _loc20_ = _loc24_;
               _loc19_ = _loc21_;
            }
            _loc21_++;
         }
         v1.x = 0;
         v1.y = 0;
         v1.SetV(_loc5_[_loc8_]);
         v1.MulM(param1.m_R);
         v1.Add(param1.m_position);
         v2.x = 0;
         v2.y = 0;
         v2.SetV(_loc7_[_loc19_]);
         v2.MulM(param3.m_R);
         v2.Add(param3.m_position);
         v2.Subtract(v1);
         return v2.x * _loc14_ + v2.y * _loc15_;
      }
      
      public static function b2TestOverlap(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc3_:b2Vec2 = param2.minVertex;
         var _loc4_:b2Vec2 = param1.maxVertex;
         var _loc5_:Number = _loc3_.x - _loc4_.x;
         var _loc6_:Number = _loc3_.y - _loc4_.y;
         _loc3_ = param1.minVertex;
         _loc4_ = param2.maxVertex;
         var _loc7_:Number = _loc3_.x - _loc4_.x;
         var _loc8_:Number = _loc3_.y - _loc4_.y;
         if(_loc5_ > 0 || _loc6_ > 0)
         {
            return false;
         }
         if(_loc7_ > 0 || _loc8_ > 0)
         {
            return false;
         }
         return true;
      }
      
      public static function b2CollidePolyAndCircle(param1:b2Manifold, param2:b2PolyShape, param3:b2CircleShape) : *
      {
         var _loc4_:b2ContactPoint = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         param1.pointCount = 0;
         var _loc7_:Number = param3.m_position.x - param2.m_position.x;
         var _loc8_:Number = param3.m_position.y - param2.m_position.y;
         var _loc9_:b2Mat22 = param2.m_R;
         var _loc10_:Number = _loc7_ * _loc9_.col1.x + _loc8_ * _loc9_.col1.y;
         _loc8_ = _loc7_ * _loc9_.col2.x + _loc8_ * _loc9_.col2.y;
         _loc7_ = _loc10_;
         var _loc12_:int = 0;
         var _loc13_:Number = -Number.MAX_VALUE;
         var _loc14_:Number = param3.m_radius;
         var _loc15_:int = 0;
         while(_loc15_ < param2.m_vertexCount)
         {
            _loc24_ = param2.m_normals[_loc15_].x * (_loc7_ - param2.m_vertices[_loc15_].x) + param2.m_normals[_loc15_].y * (_loc8_ - param2.m_vertices[_loc15_].y);
            if(_loc24_ > _loc14_)
            {
               return;
            }
            if(_loc24_ > _loc13_)
            {
               _loc13_ = _loc24_;
               _loc12_ = _loc15_;
            }
            _loc15_++;
         }
         if(_loc13_ < Number.MIN_VALUE)
         {
            param1.pointCount = 1;
            _loc25_ = param2.m_normals[_loc12_];
            param1.normal.x = _loc9_.col1.x * _loc25_.x + _loc9_.col2.x * _loc25_.y;
            param1.normal.y = _loc9_.col1.y * _loc25_.x + _loc9_.col2.y * _loc25_.y;
            _loc4_ = param1.points[0];
            _loc4_.id.features.incidentEdge = _loc12_;
            _loc4_.id.features.incidentVertex = b2_nullFeature;
            _loc4_.id.features.referenceFace = b2_nullFeature;
            _loc4_.id.features.flip = 0;
            _loc4_.position.x = param3.m_position.x - _loc14_ * param1.normal.x;
            _loc4_.position.y = param3.m_position.y - _loc14_ * param1.normal.y;
            _loc4_.separation = _loc13_ - _loc14_;
            return;
         }
         var _loc16_:int = _loc12_;
         var _loc17_:int = int(param2.m_nextVert[_loc16_]);
         var _loc18_:Number = param2.m_vertices[_loc17_].x - param2.m_vertices[_loc16_].x;
         var _loc19_:Number = param2.m_vertices[_loc17_].y - param2.m_vertices[_loc16_].y;
         var _loc20_:Number = Math.sqrt(_loc18_ * _loc18_ + _loc19_ * _loc19_);
         _loc18_ /= _loc20_;
         _loc19_ /= _loc20_;
         if(_loc20_ < Number.MIN_VALUE)
         {
            _loc5_ = _loc7_ - param2.m_vertices[_loc16_].x;
            _loc6_ = _loc8_ - param2.m_vertices[_loc16_].y;
            _loc11_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
            _loc5_ /= _loc11_;
            _loc6_ /= _loc11_;
            if(_loc11_ > _loc14_)
            {
               return;
            }
            param1.pointCount = 1;
            param1.normal.Set(_loc9_.col1.x * _loc5_ + _loc9_.col2.x * _loc6_,_loc9_.col1.y * _loc5_ + _loc9_.col2.y * _loc6_);
            _loc4_ = param1.points[0];
            _loc4_.id.features.incidentEdge = b2_nullFeature;
            _loc4_.id.features.incidentVertex = _loc16_;
            _loc4_.id.features.referenceFace = b2_nullFeature;
            _loc4_.id.features.flip = 0;
            _loc4_.position.x = param3.m_position.x - _loc14_ * param1.normal.x;
            _loc4_.position.y = param3.m_position.y - _loc14_ * param1.normal.y;
            _loc4_.separation = _loc11_ - _loc14_;
            return;
         }
         var _loc21_:Number = (_loc7_ - param2.m_vertices[_loc16_].x) * _loc18_ + (_loc8_ - param2.m_vertices[_loc16_].y) * _loc19_;
         _loc4_ = param1.points[0];
         _loc4_.id.features.incidentEdge = b2_nullFeature;
         _loc4_.id.features.incidentVertex = b2_nullFeature;
         _loc4_.id.features.referenceFace = b2_nullFeature;
         _loc4_.id.features.flip = 0;
         if(_loc21_ <= 0)
         {
            _loc22_ = Number(param2.m_vertices[_loc16_].x);
            _loc23_ = Number(param2.m_vertices[_loc16_].y);
            _loc4_.id.features.incidentVertex = _loc16_;
         }
         else if(_loc21_ >= _loc20_)
         {
            _loc22_ = Number(param2.m_vertices[_loc17_].x);
            _loc23_ = Number(param2.m_vertices[_loc17_].y);
            _loc4_.id.features.incidentVertex = _loc17_;
         }
         else
         {
            _loc22_ = _loc18_ * _loc21_ + param2.m_vertices[_loc16_].x;
            _loc23_ = _loc19_ * _loc21_ + param2.m_vertices[_loc16_].y;
            _loc4_.id.features.incidentEdge = _loc16_;
         }
         _loc5_ = _loc7_ - _loc22_;
         _loc6_ = _loc8_ - _loc23_;
         _loc11_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         _loc5_ /= _loc11_;
         _loc6_ /= _loc11_;
         if(_loc11_ > _loc14_)
         {
            return;
         }
         param1.pointCount = 1;
         param1.normal.Set(_loc9_.col1.x * _loc5_ + _loc9_.col2.x * _loc6_,_loc9_.col1.y * _loc5_ + _loc9_.col2.y * _loc6_);
         _loc4_.position.x = param3.m_position.x - _loc14_ * param1.normal.x;
         _loc4_.position.y = param3.m_position.y - _loc14_ * param1.normal.y;
         _loc4_.separation = _loc11_ - _loc14_;
      }
      
      public static function FindIncidentEdge(param1:Array, param2:b2PolyShape, param3:int, param4:b2PolyShape) : *
      {
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc25_:ClipVertex = null;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc5_:int = param2.m_vertexCount;
         var _loc6_:Array = param2.m_vertices;
         var _loc7_:int = param4.m_vertexCount;
         var _loc8_:Array = param4.m_vertices;
         var _loc9_:int = param3;
         var _loc10_:int = param3 + 1 == _loc5_ ? 0 : param3 + 1;
         var _loc11_:b2Vec2 = _loc6_[_loc10_];
         var _loc12_:Number = _loc11_.x;
         var _loc13_:Number = _loc11_.y;
         _loc11_ = _loc6_[_loc9_];
         _loc12_ -= _loc11_.x;
         _loc13_ -= _loc11_.y;
         var _loc14_:Number = _loc12_;
         _loc12_ = _loc13_;
         _loc13_ = -_loc14_;
         var _loc15_:Number = 1 / Math.sqrt(_loc12_ * _loc12_ + _loc13_ * _loc13_);
         _loc12_ *= _loc15_;
         _loc13_ *= _loc15_;
         var _loc16_:Number = _loc12_;
         var _loc17_:Number = _loc13_;
         _loc14_ = _loc16_;
         var _loc18_:b2Mat22 = param2.m_R;
         _loc16_ = _loc18_.col1.x * _loc14_ + _loc18_.col2.x * _loc17_;
         _loc17_ = _loc18_.col1.y * _loc14_ + _loc18_.col2.y * _loc17_;
         var _loc19_:Number = _loc16_;
         var _loc20_:Number = _loc17_;
         _loc18_ = param4.m_R;
         _loc14_ = _loc19_ * _loc18_.col1.x + _loc20_ * _loc18_.col1.y;
         _loc20_ = _loc19_ * _loc18_.col2.x + _loc20_ * _loc18_.col2.y;
         _loc19_ = _loc14_;
         var _loc23_:Number = Number.MAX_VALUE;
         var _loc24_:int = 0;
         while(_loc24_ < _loc7_)
         {
            _loc26_ = _loc24_;
            _loc27_ = _loc24_ + 1 < _loc7_ ? _loc24_ + 1 : 0;
            _loc11_ = _loc8_[_loc27_];
            _loc28_ = _loc11_.x;
            _loc29_ = _loc11_.y;
            _loc11_ = _loc8_[_loc26_];
            _loc28_ -= _loc11_.x;
            _loc29_ -= _loc11_.y;
            _loc14_ = _loc28_;
            _loc28_ = _loc29_;
            _loc29_ = -_loc14_;
            _loc15_ = 1 / Math.sqrt(_loc28_ * _loc28_ + _loc29_ * _loc29_);
            _loc28_ *= _loc15_;
            _loc29_ *= _loc15_;
            _loc30_ = _loc28_ * _loc19_ + _loc29_ * _loc20_;
            if(_loc30_ < _loc23_)
            {
               _loc23_ = _loc30_;
               _loc21_ = _loc26_;
               _loc22_ = _loc27_;
            }
            _loc24_++;
         }
         _loc25_ = param1[0];
         _loc11_ = _loc25_.v;
         _loc11_.SetV(_loc8_[_loc21_]);
         _loc11_.MulM(param4.m_R);
         _loc11_.Add(param4.m_position);
         _loc25_.id.features.referenceFace = param3;
         _loc25_.id.features.incidentEdge = _loc21_;
         _loc25_.id.features.incidentVertex = _loc21_;
         _loc25_ = param1[1];
         _loc11_ = _loc25_.v;
         _loc11_.SetV(_loc8_[_loc22_]);
         _loc11_.MulM(param4.m_R);
         _loc11_.Add(param4.m_position);
         _loc25_.id.features.referenceFace = param3;
         _loc25_.id.features.incidentEdge = _loc21_;
         _loc25_.id.features.incidentVertex = _loc22_;
      }
      
      public static function FindMaxSeparation(param1:Array, param2:b2PolyShape, param3:b2PolyShape) : Number
      {
         var _loc13_:int = 0;
         var _loc14_:Number = NaN;
         var _loc15_:int = 0;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:Number = NaN;
         var _loc4_:int = param2.m_vertexCount;
         var _loc5_:Array = param2.m_vertices;
         d.x = 0;
         d.y = 0;
         d.SetV(param3.m_position);
         d.Subtract(param2.m_position);
         dLocal1.x = 0;
         dLocal1.y = 0;
         dLocal1.SetV(d);
         dLocal1.MulTM(param2.m_R);
         var _loc6_:int = 0;
         var _loc7_:Number = -Number.MAX_VALUE;
         var _loc8_:int = 0;
         while(_loc8_ < _loc4_)
         {
            _loc16_ = b2Math.b2Dot(_loc5_[_loc8_],dLocal1);
            if(_loc16_ > _loc7_)
            {
               _loc7_ = _loc16_;
               _loc6_ = _loc8_;
            }
            _loc8_++;
         }
         var _loc9_:int = _loc6_ - 1 >= 0 ? _loc6_ - 1 : _loc4_ - 1;
         var _loc10_:Number = EdgeSeparation(param2,_loc9_,param3);
         if(_loc10_ > 0)
         {
            return _loc10_;
         }
         var _loc11_:int = _loc6_;
         var _loc12_:Number = EdgeSeparation(param2,_loc11_,param3);
         if(_loc12_ > 0)
         {
            return _loc12_;
         }
         if(_loc10_ > _loc12_)
         {
            _loc15_ = -1;
            _loc13_ = _loc9_;
            _loc14_ = _loc10_;
         }
         else
         {
            _loc15_ = 1;
            _loc13_ = _loc11_;
            _loc14_ = _loc12_;
         }
         while(true)
         {
            if(_loc15_ == -1)
            {
               _loc17_ = _loc13_ - 1 >= 0 ? _loc13_ - 1 : _loc4_ - 1;
            }
            else
            {
               _loc17_ = _loc13_ + 1 < _loc4_ ? _loc13_ + 1 : 0;
            }
            _loc18_ = EdgeSeparation(param2,_loc17_,param3);
            if(_loc18_ > 0)
            {
               break;
            }
            if(_loc18_ <= _loc14_)
            {
               param1[0] = _loc13_;
               return _loc14_;
            }
            _loc13_ = _loc17_;
            _loc14_ = _loc18_;
         }
         return _loc18_;
      }
      
      public static function ClipSegmentToLine(param1:Array, param2:Array, param3:b2Vec2, param4:Number) : int
      {
         var _loc7_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc5_:int = 0;
         var _loc6_:b2Vec2 = param2[0].v;
         _loc7_ = param2[1].v;
         _loc8_ = b2Math.b2Dot(param3,param2[0].v) - param4;
         var _loc9_:Number = b2Math.b2Dot(param3,param2[1].v) - param4;
         if(_loc8_ <= 0)
         {
            var _loc12_:*;
            param1[_loc12_ = _loc5_++] = param2[0];
         }
         if(_loc9_ <= 0)
         {
            param1[_loc12_ = _loc5_++] = param2[1];
         }
         if(_loc8_ * _loc9_ < 0)
         {
            _loc10_ = _loc8_ / (_loc8_ - _loc9_);
            _loc11_ = param1[_loc5_].v;
            _loc11_.x = _loc6_.x + _loc10_ * (_loc7_.x - _loc6_.x);
            _loc11_.y = _loc6_.y + _loc10_ * (_loc7_.y - _loc6_.y);
            if(_loc8_ > 0)
            {
               param1[_loc5_].id = param2[0].id;
            }
            else
            {
               param1[_loc5_].id = param2[1].id;
            }
            _loc5_++;
         }
         return _loc5_;
      }
      
      public static function b2CollidePoly(param1:b2Manifold, param2:b2PolyShape, param3:b2PolyShape) : *
      {
         var _loc10_:b2PolyShape = null;
         var _loc11_:b2PolyShape = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc39_:int = 0;
         var _loc42_:b2Vec2 = null;
         var _loc43_:Number = NaN;
         var _loc44_:b2ContactPoint = null;
         param1.pointCount = 0;
         var _loc4_:int = 0;
         var _loc5_:Array = [_loc4_];
         var _loc6_:Number = FindMaxSeparation(_loc5_,param2,param3);
         _loc4_ = int(_loc5_[0]);
         if(_loc6_ > 0)
         {
            return;
         }
         var _loc7_:int = 0;
         var _loc8_:Array = [_loc7_];
         var _loc9_:Number = FindMaxSeparation(_loc8_,param3,param2);
         _loc7_ = int(_loc8_[0]);
         if(_loc9_ > 0)
         {
            return;
         }
         var _loc14_:Number = 0.98;
         var _loc15_:Number = 0.001;
         if(_loc9_ > _loc14_ * _loc6_ + _loc15_)
         {
            _loc10_ = param3;
            _loc11_ = param2;
            _loc12_ = _loc7_;
            _loc13_ = 1;
         }
         else
         {
            _loc10_ = param2;
            _loc11_ = param3;
            _loc12_ = _loc4_;
            _loc13_ = 0;
         }
         var _loc16_:Array = [new ClipVertex(),new ClipVertex()];
         FindIncidentEdge(_loc16_,_loc10_,_loc12_,_loc11_);
         var _loc17_:int = _loc10_.m_vertexCount;
         var _loc18_:Array = _loc10_.m_vertices;
         var _loc19_:b2Vec2 = _loc18_[_loc12_];
         var _loc20_:b2Vec2 = _loc12_ + 1 < _loc17_ ? _loc18_[_loc12_ + 1] : _loc18_[0];
         var _loc21_:Number = _loc20_.x - _loc19_.x;
         var _loc22_:Number = _loc20_.y - _loc19_.y;
         var _loc23_:Number = _loc20_.x - _loc19_.x;
         var _loc24_:Number = _loc20_.y - _loc19_.y;
         var _loc25_:Number = _loc23_;
         var _loc26_:b2Mat22 = _loc10_.m_R;
         _loc23_ = _loc26_.col1.x * _loc25_ + _loc26_.col2.x * _loc24_;
         _loc24_ = _loc26_.col1.y * _loc25_ + _loc26_.col2.y * _loc24_;
         var _loc27_:Number = 1 / Math.sqrt(_loc23_ * _loc23_ + _loc24_ * _loc24_);
         _loc23_ *= _loc27_;
         _loc24_ *= _loc27_;
         var _loc28_:Number = _loc23_;
         var _loc29_:Number = _loc24_;
         _loc25_ = _loc28_;
         _loc28_ = _loc29_;
         _loc29_ = -_loc25_;
         var _loc30_:Number = _loc19_.x;
         var _loc31_:Number = _loc19_.y;
         _loc25_ = _loc30_;
         _loc26_ = _loc10_.m_R;
         _loc30_ = _loc26_.col1.x * _loc25_ + _loc26_.col2.x * _loc31_;
         _loc31_ = _loc26_.col1.y * _loc25_ + _loc26_.col2.y * _loc31_;
         _loc30_ += _loc10_.m_position.x;
         _loc31_ += _loc10_.m_position.y;
         var _loc32_:Number = _loc20_.x;
         var _loc33_:Number = _loc20_.y;
         _loc25_ = _loc32_;
         _loc26_ = _loc10_.m_R;
         _loc32_ = _loc26_.col1.x * _loc25_ + _loc26_.col2.x * _loc33_;
         _loc33_ = _loc26_.col1.y * _loc25_ + _loc26_.col2.y * _loc33_;
         _loc32_ += _loc10_.m_position.x;
         _loc33_ += _loc10_.m_position.y;
         var _loc34_:Number = _loc28_ * _loc30_ + _loc29_ * _loc31_;
         var _loc35_:Number = -(_loc23_ * _loc30_ + _loc24_ * _loc31_);
         var _loc36_:Number = _loc23_ * _loc32_ + _loc24_ * _loc33_;
         var _loc37_:Array = [new ClipVertex(),new ClipVertex()];
         var _loc38_:Array = [new ClipVertex(),new ClipVertex()];
         b2CollidePolyTempVec.Set(-_loc23_,-_loc24_);
         _loc39_ = ClipSegmentToLine(_loc37_,_loc16_,b2CollidePolyTempVec,_loc35_);
         if(_loc39_ < 2)
         {
            return;
         }
         b2CollidePolyTempVec.Set(_loc23_,_loc24_);
         _loc39_ = ClipSegmentToLine(_loc38_,_loc37_,b2CollidePolyTempVec,_loc36_);
         if(_loc39_ < 2)
         {
            return;
         }
         if(_loc13_)
         {
            param1.normal.Set(-_loc28_,-_loc29_);
         }
         else
         {
            param1.normal.Set(_loc28_,_loc29_);
         }
         var _loc40_:int = 0;
         var _loc41_:int = 0;
         while(_loc41_ < b2Settings.b2_maxManifoldPoints)
         {
            _loc42_ = _loc38_[_loc41_].v;
            _loc43_ = _loc28_ * _loc42_.x + _loc29_ * _loc42_.y - _loc34_;
            if(_loc43_ <= 0)
            {
               _loc44_ = param1.points[_loc40_];
               _loc44_.separation = _loc43_;
               _loc44_.position.SetV(_loc38_[_loc41_].v);
               _loc44_.id.Set(_loc38_[_loc41_].id);
               _loc44_.id.features.flip = _loc13_;
               _loc40_++;
            }
            _loc41_++;
         }
         param1.pointCount = _loc40_;
      }
      
      public static function b2CollideCircle(param1:b2Manifold, param2:b2CircleShape, param3:b2CircleShape) : *
      {
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         param1.pointCount = 0;
         var _loc4_:Number = param3.m_position.x - param2.m_position.x;
         var _loc5_:Number = param3.m_position.y - param2.m_position.y;
         var _loc6_:Number = _loc4_ * _loc4_ + _loc5_ * _loc5_;
         var _loc7_:Number = param2.m_radius + param3.m_radius;
         if(_loc6_ > _loc7_ * _loc7_)
         {
            return;
         }
         if(_loc6_ < Number.MIN_VALUE)
         {
            _loc8_ = -_loc7_;
            param1.normal.Set(0,1);
         }
         else
         {
            _loc10_ = Math.sqrt(_loc6_);
            _loc8_ = _loc10_ - _loc7_;
            _loc11_ = 1 / _loc10_;
            param1.normal.x = _loc11_ * _loc4_;
            param1.normal.y = _loc11_ * _loc5_;
         }
         param1.pointCount = 1;
         var _loc9_:b2ContactPoint = param1.points[0];
         _loc9_.id.key = 0;
         _loc9_.separation = _loc8_;
         _loc9_.position.x = param3.m_position.x - param3.m_radius * param1.normal.x;
         _loc9_.position.y = param3.m_position.y - param3.m_radius * param1.normal.y;
      }
   }
}

