package Engine.Collision
{
   import Engine.Common.Math.b2Vec2;
   
   public class b2AABB
   {
      public var minVertex:b2Vec2 = new b2Vec2();
      
      public var maxVertex:b2Vec2 = new b2Vec2();
      
      public function b2AABB()
      {
         super();
      }
      
      public function IsValid() : Boolean
      {
         var _loc1_:Number = maxVertex.x;
         var _loc2_:Number = maxVertex.y;
         _loc1_ = maxVertex.x;
         _loc2_ = maxVertex.y;
         _loc1_ -= minVertex.x;
         _loc2_ -= minVertex.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return _loc3_ && minVertex.IsValid() && maxVertex.IsValid();
      }
   }
}

