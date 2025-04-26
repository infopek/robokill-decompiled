package Engine.Dynamics.Contacts
{
   import Engine.Collision.b2Manifold;
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   import Engine.Dynamics.b2Body;
   
   public class b2ContactConstraint
   {
      public var points:Array;
      
      public var normal:b2Vec2 = new b2Vec2();
      
      public var restitution:Number;
      
      public var body1:b2Body;
      
      public var manifold:b2Manifold;
      
      public var body2:b2Body;
      
      public var friction:Number;
      
      public var pointCount:int;
      
      public function b2ContactConstraint()
      {
         super();
         points = new Array(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            points[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}

