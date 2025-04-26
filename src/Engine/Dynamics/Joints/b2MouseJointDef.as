package Engine.Dynamics.Joints
{
   import Engine.Common.Math.b2Vec2;
   
   public class b2MouseJointDef extends b2JointDef
   {
      public var timeStep:Number;
      
      public var target:b2Vec2 = new b2Vec2();
      
      public var maxForce:Number;
      
      public var dampingRatio:Number;
      
      public var frequencyHz:Number;
      
      public function b2MouseJointDef()
      {
         super();
         type = b2Joint.e_mouseJoint;
         maxForce = 0;
         frequencyHz = 5;
         dampingRatio = 0.7;
         timeStep = 1 / 60;
      }
   }
}

