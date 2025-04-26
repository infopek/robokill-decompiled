package Engine.Collision
{
   import Engine.Common.Math.b2Vec2;
   
   public class ClipVertex
   {
      public var id:b2ContactID = new b2ContactID();
      
      public var v:b2Vec2 = new b2Vec2();
      
      public function ClipVertex()
      {
         super();
      }
   }
}

