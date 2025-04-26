package Engine.Collision.Shapes
{
   import Engine.Common.Math.b2Vec2;
   
   public class b2BoxDef extends b2ShapeDef
   {
      public var extents:b2Vec2;
      
      public function b2BoxDef()
      {
         super();
         type = b2Shape.e_boxShape;
         extents = new b2Vec2(1,1);
      }
   }
}

