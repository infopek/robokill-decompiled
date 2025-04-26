package Engine.Collision.Shapes
{
   public class b2CircleDef extends b2ShapeDef
   {
      public var radius:Number;
      
      public function b2CircleDef()
      {
         super();
         type = b2Shape.e_circleShape;
         radius = 1;
      }
   }
}

