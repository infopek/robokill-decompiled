package Engine.Collision.Shapes
{
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   
   public class b2PolyDef extends b2ShapeDef
   {
      public var vertices:Array = new Array(b2Settings.b2_maxPolyVertices);
      
      public var vertexCount:int;
      
      public function b2PolyDef()
      {
         super();
         type = b2Shape.e_polyShape;
         vertexCount = 0;
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxPolyVertices)
         {
            vertices[_loc1_] = new b2Vec2();
            _loc1_++;
         }
      }
   }
}

