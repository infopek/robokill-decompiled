package Engine.Collision
{
   import Engine.Common.Math.b2Vec2;
   
   public class b2ContactPoint
   {
      public var tangentImpulse:Number;
      
      public var separation:Number;
      
      public var position:b2Vec2 = new b2Vec2();
      
      public var id:b2ContactID = new b2ContactID();
      
      public var normalImpulse:Number;
      
      public function b2ContactPoint()
      {
         super();
      }
   }
}

