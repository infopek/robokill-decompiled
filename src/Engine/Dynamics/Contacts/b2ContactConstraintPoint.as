package Engine.Dynamics.Contacts
{
   import Engine.Common.Math.b2Vec2;
   
   public class b2ContactConstraintPoint
   {
      public var separation:Number;
      
      public var positionImpulse:Number;
      
      public var normalImpulse:Number;
      
      public var tangentImpulse:Number;
      
      public var localAnchor1:b2Vec2 = new b2Vec2();
      
      public var localAnchor2:b2Vec2 = new b2Vec2();
      
      public var tangentMass:Number;
      
      public var normalMass:Number;
      
      public var velocityBias:Number;
      
      public function b2ContactConstraintPoint()
      {
         super();
      }
   }
}

