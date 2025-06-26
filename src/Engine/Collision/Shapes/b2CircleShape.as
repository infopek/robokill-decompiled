package Engine.Collision.Shapes
{
   import Engine.Collision.b2AABB;
   import Engine.Collision.b2BroadPhase;
   import Engine.Collision.b2Pair;
   import Engine.Collision.b2Proxy;
   import Engine.Common.Math.b2Mat22;
   import Engine.Common.Math.b2Math;
   import Engine.Common.Math.b2Vec2;
   import Engine.Dynamics.b2Body;
   
   public class b2CircleShape extends b2Shape
   {
      public var m_localPosition:b2Vec2 = new b2Vec2();
      
      public var m_radius:Number;
      
      public function b2CircleShape(param1:b2ShapeDef, param2:b2Body, param3:b2Vec2)
      {
         super(param1,param2);
         var _loc4_:b2CircleDef = param1 as b2CircleDef;
         m_localPosition.Set(param1.localPosition.x - param3.x,param1.localPosition.y - param3.y);
         m_type = b2Shape.e_circleShape;
         m_radius = _loc4_.radius;
         m_R.SetM(m_body.m_R);
         m_position.SetV(m_localPosition);
         m_position.MulM(m_R);
         m_position.Add(m_body.m_position);
         var _loc5_:b2AABB = new b2AABB();
         _loc5_.lowerCorner.Set(m_position.x - m_radius,m_position.y - m_radius);
         _loc5_.upperCorner.Set(m_position.x + m_radius,m_position.y + m_radius);
         var _loc6_:b2BroadPhase = m_body.m_world.m_broadPhase;
         if(_loc6_.InRange(_loc5_))
         {
            m_proxyId = _loc6_.CreateProxy(_loc5_,param1.groupIndex,param1.categoryBits,param1.maskBits,this);
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
      
      override public function Synchronize(param1:b2Vec2, param2:b2Mat22) : *
      {
         m_R.SetM(param2);
         m_position.SetV(m_localPosition);
         m_position.MulM(param2);
         m_position.Add(param1);
         if(m_proxyId == b2Pair.b2_nullProxy)
         {
            return;
         }
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.lowerCorner.Set(m_position.x - m_radius,m_position.y - m_radius);
         _loc3_.upperCorner.Set(m_position.x + m_radius,m_position.y + m_radius);
         var _loc4_:b2BroadPhase = m_body.m_world.m_broadPhase;
         if(_loc4_.InRange(_loc3_))
         {
            _loc4_.MoveProxy(m_proxyId,_loc3_);
         }
         else
         {
            _loc4_.DestroyProxy(m_proxyId);
            m_proxyId = b2Pair.b2_nullProxy;
            m_body.Freeze();
         }
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
         var _loc6_:b2AABB = new b2AABB();
         _loc6_.lowerCorner.Set(m_position.x - m_radius,m_position.y - m_radius);
         _loc6_.upperCorner.Set(m_position.x + m_radius,m_position.y + m_radius);
         if(param1.InRange(_loc6_))
         {
            m_proxyId = param1.CreateProxy(_loc6_,_loc3_,_loc4_,_loc5_,this);
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
      
      override public function TestPoint(param1:b2Vec2) : Boolean
      {
         var _loc2_:b2Vec2 = new b2Vec2();
         _loc2_.SetV(param1);
         _loc2_.Subtract(m_position);
         return b2Math.b2Dot(_loc2_,_loc2_) <= m_radius * m_radius;
      }
      
      override public function Support(param1:Number, param2:Number) : b2Vec2
      {
         var _loc3_:Number = Math.sqrt(param1 * param1 + param2 * param2);
         param1 /= _loc3_;
         param2 /= _loc3_;
         return new b2Vec2(m_position.x + m_radius * param1,m_position.y + m_radius * param2);
      }
   }
}

