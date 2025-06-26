package Engine.Collision.Shapes
{
   import Engine.Collision.*;
   import Engine.Common.*;
   import Engine.Common.Math.*;
   import Engine.Dynamics.*;
   
   public class b2PolyShape extends b2Shape
   {
      public var m_nextVert:Array;
      
      public var m_vertices:Array;
      
      public var m_localOBB:b2OBB;
      
      public var m_vertexCount:int;
      
      public var m_normals:Array;
      
      public function b2PolyShape(param1:b2ShapeDef, param2:b2Body, param3:b2Vec2)
      {
         var _loc4_:int = 0;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc17_:b2BoxDef = null;
         var _loc18_:b2PolyDef = null;
         var _loc19_:b2Vec2 = null;
         m_localOBB = new b2OBB();
         super(param1,param2);
         var _loc7_:b2AABB = new b2AABB();
         m_vertices = new Array(b2Settings.b2_maxPolyVertices);
         m_nextVert = new Array();
         m_normals = new Array(b2Settings.b2_maxPolyVertices);
         m_type = b2Shape.e_polyShape;
         _loc8_ = new b2Mat22(param1.localRotation);
         _loc9_ = param1.localPosition.x - param3.x;
         _loc10_ = param1.localPosition.y - param3.y;
         if(param1.type == b2Shape.e_boxShape)
         {
            _loc17_ = param1 as b2BoxDef;
            m_vertexCount = 4;
            _loc5_ = _loc17_.extents;
            m_vertices[0] = new b2Vec2(_loc5_.x,_loc5_.y);
            _loc6_ = m_vertices[0];
            _loc6_.MulM(_loc8_);
            _loc6_.x += _loc9_;
            _loc6_.y += _loc10_;
            m_vertices[1] = new b2Vec2(-_loc5_.x,_loc5_.y);
            _loc6_ = m_vertices[1];
            _loc6_.MulM(_loc8_);
            _loc6_.x += _loc9_;
            _loc6_.y += _loc10_;
            m_vertices[2] = new b2Vec2(-_loc5_.x,-_loc5_.y);
            _loc6_ = m_vertices[2];
            _loc6_.MulM(_loc8_);
            _loc6_.x += _loc9_;
            _loc6_.y += _loc10_;
            m_vertices[3] = new b2Vec2(_loc5_.x,-_loc5_.y);
            _loc6_ = m_vertices[3];
            _loc6_.MulM(_loc8_);
            _loc6_.x += _loc9_;
            _loc6_.y += _loc10_;
         }
         else
         {
            _loc18_ = param1 as b2PolyDef;
            m_vertexCount = _loc18_.vertexCount;
            _loc4_ = 0;
            while(_loc4_ < m_vertexCount)
            {
               m_vertices[_loc4_] = _loc18_.vertices[_loc4_].Copy();
               _loc6_ = m_vertices[_loc4_];
               _loc6_.MulM(_loc8_);
               _loc6_.x += _loc9_;
               _loc6_.y += _loc10_;
               _loc4_++;
            }
         }
         var _loc11_:b2Vec2 = new b2Vec2(Number.MAX_VALUE,Number.MAX_VALUE);
         var _loc12_:b2Vec2 = new b2Vec2(-Number.MAX_VALUE,-Number.MAX_VALUE);
         _loc4_ = 0;
         while(_loc4_ < m_vertexCount)
         {
            _loc11_ = b2Math.b2MinV(_loc11_,m_vertices[_loc4_]);
            _loc12_ = b2Math.b2MaxV(_loc12_,m_vertices[_loc4_]);
            _loc4_++;
         }
         m_localOBB.R.SetIdentity();
         m_localOBB.center.Set((_loc11_.x + _loc12_.x) * 0.5,(_loc11_.y + _loc12_.y) * 0.5);
         m_localOBB.extents.Set((_loc12_.x - _loc11_.x) * 0.5,(_loc12_.y - _loc11_.y) * 0.5);
         _loc4_ = 0;
         while(_loc4_ < m_vertexCount)
         {
            m_nextVert[_loc4_] = _loc4_ + 1 < m_vertexCount ? _loc4_ + 1 : 0;
            _loc19_ = m_vertices[m_nextVert[_loc4_]].Copy();
            _loc19_.Subtract(m_vertices[_loc4_]);
            m_normals[_loc4_] = new b2Vec2();
            _loc6_ = m_normals[_loc4_];
            _loc6_.SetV(_loc19_);
            _loc6_.CrossVF(1);
            _loc6_.Normalize();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < m_vertexCount)
         {
            _loc4_++;
         }
         m_R = m_body.m_R.Copy();
         m_position.SetV(m_body.m_position);
         var _loc13_:b2Mat22 = b2Math.b2MulMM(m_R,m_localOBB.R);
         var _loc14_:b2Mat22 = b2Math.b2AbsM(_loc13_);
         _loc5_ = b2Math.b2MulMV(_loc14_,m_localOBB.extents);
         var _loc15_:b2Vec2 = b2Math.b2MulMV(m_R,m_localOBB.center);
         _loc15_.Add(m_position);
         _loc7_.lowerCorner.SetV(_loc15_);
         _loc7_.lowerCorner.Subtract(_loc5_);
         _loc7_.upperCorner.SetV(_loc15_);
         _loc7_.upperCorner.Add(_loc5_);
         var _loc16_:b2BroadPhase = m_body.m_world.m_broadPhase;
         if(_loc16_.InRange(_loc7_))
         {
            m_proxyId = b2Pair.b2_nullProxy;
         }
         else
         {
            m_proxyId = b2Pair.b2_nullProxy;
         }
         if(m_proxyId == b2Pair.b2_nullProxy)
         {
            m_body.Freeze();
         }
      }
      
      override public function Support(param1:Number, param2:Number) : b2Vec2
      {
         var _loc8_:Number = NaN;
         var _loc3_:Number = param1 * m_R.col1.x + param2 * m_R.col1.y;
         var _loc4_:Number = param1 * m_R.col2.x + param2 * m_R.col2.y;
         var _loc5_:int = 0;
         var _loc6_:Number = m_vertices[0].x * _loc3_ + m_vertices[0].y * _loc4_;
         var _loc7_:int = 1;
         while(_loc7_ < m_vertexCount)
         {
            _loc8_ = m_vertices[_loc7_].x * _loc3_ + m_vertices[_loc7_].y * _loc4_;
            if(_loc8_ > _loc6_)
            {
               _loc5_ = _loc7_;
               _loc6_ = _loc8_;
            }
            _loc7_++;
         }
         return new b2Vec2(m_position.x + (m_R.col1.x * m_vertices[_loc5_].x + m_R.col2.x * m_vertices[_loc5_].y),m_position.y + (m_R.col1.y * m_vertices[_loc5_].x + m_R.col2.y * m_vertices[_loc5_].y));
      }
      
      override public function Synchronize(param1:b2Vec2, param2:b2Mat22) : *
      {
         m_R.SetM(param2);
         m_position.SetV(param1);
         if(m_proxyId == b2Pair.b2_nullProxy)
         {
            return;
         }
         var _loc3_:b2Mat22 = b2Math.b2MulMM(m_R,m_localOBB.R);
         var _loc4_:b2Mat22 = b2Math.b2AbsM(_loc3_);
         var _loc5_:b2Vec2 = b2Math.b2MulMV(_loc4_,m_localOBB.extents);
         var _loc6_:b2Vec2 = b2Math.b2MulMV(m_R,m_localOBB.center);
         _loc6_.Add(m_position);
         var _loc7_:b2AABB = new b2AABB();
         _loc7_.lowerCorner.SetV(_loc6_);
         _loc7_.lowerCorner.Subtract(_loc5_);
         _loc7_.upperCorner.SetV(_loc6_);
         _loc7_.upperCorner.Add(_loc5_);
         var _loc8_:b2BroadPhase = m_body.m_world.m_broadPhase;
         if(_loc8_.InRange(_loc7_))
         {
            _loc8_.MoveProxy(m_proxyId,_loc7_);
         }
         else
         {
            _loc8_.DestroyProxy(m_proxyId);
            m_proxyId = b2Pair.b2_nullProxy;
            m_body.Freeze();
         }
      }
      
      override public function TestPoint(param1:b2Vec2) : Boolean
      {
         var _loc4_:b2Vec2 = null;
         var _loc5_:Number = NaN;
         var _loc2_:b2Vec2 = new b2Vec2();
         _loc2_.SetV(param1);
         _loc2_.Subtract(m_position);
         _loc2_.MulTM(m_R);
         var _loc3_:int = 0;
         while(_loc3_ < m_vertexCount)
         {
            _loc4_ = new b2Vec2();
            _loc4_.SetV(_loc2_);
            _loc4_.Subtract(m_vertices[_loc3_]);
            _loc5_ = b2Math.b2Dot(m_normals[_loc3_],_loc4_);
            if(_loc5_ > 0)
            {
               return false;
            }
            _loc3_++;
         }
         return true;
      }
      
      override public function ResetProxy(param1:b2BroadPhase) : *
      {
         if(m_proxyId == b2Pair.b2_nullProxy)
         {
            return;
         }
         var _loc2_:b2Proxy = param1.GetProxy(m_proxyId);
         var _loc3_:int = _loc2_.groupIndex;
         var _loc4_:uint = _loc2_.categoryBits;
         var _loc5_:uint = _loc2_.maskBits;
         param1.DestroyProxy(m_proxyId);
         _loc2_ = null;
         var _loc6_:b2Mat22 = b2Math.b2MulMM(m_R,m_localOBB.R);
         var _loc7_:b2Mat22 = b2Math.b2AbsM(_loc6_);
         var _loc8_:b2Vec2 = b2Math.b2MulMV(_loc7_,m_localOBB.extents);
         var _loc9_:b2Vec2 = b2Math.b2MulMV(m_R,m_localOBB.center);
         _loc9_.Add(m_position);
         var _loc10_:b2AABB = new b2AABB();
         _loc10_.lowerCorner.SetV(_loc9_);
         _loc10_.lowerCorner.Subtract(_loc8_);
         _loc10_.upperCorner.SetV(_loc9_);
         _loc10_.upperCorner.Add(_loc8_);
         if(param1.InRange(_loc10_))
         {
            m_proxyId = param1.CreateProxy(_loc10_,_loc3_,_loc4_,_loc5_,this);
         }
         else
         {
            m_proxyId = b2Pair.b2_nullProxy;
         }
         if(m_proxyId == b2Pair.b2_nullProxy)
         {
            m_body.Freeze();
         }
      }
   }
}

