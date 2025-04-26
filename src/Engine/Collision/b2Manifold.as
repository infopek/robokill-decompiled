package Engine.Collision
{
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   
   public class b2Manifold
   {
      public var points:Array;
      
      public var normal:b2Vec2;
      
      public var pointCount:int;
      
      public function b2Manifold()
      {
         super();
         points = new Array(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            points[_loc1_] = new b2ContactPoint();
            _loc1_++;
         }
         normal = new b2Vec2();
      }
   }
}

