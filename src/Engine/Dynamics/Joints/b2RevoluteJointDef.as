package Engine.Dynamics.Joints
{
   import Engine.Common.Math.b2Vec2;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
      public var enableMotor:Boolean;
      
      public var upperAngle:Number;
      
      public var lowerAngle:Number;
      
      public var enableLimit:Boolean;
      
      public var motorSpeed:Number;
      
      public var anchorPoint:b2Vec2;
      
      public var motorTorque:Number;
      
      public function b2RevoluteJointDef()
      {
         super();
         type = b2Joint.e_revoluteJoint;
         anchorPoint = new b2Vec2(0,0);
         lowerAngle = 0;
         upperAngle = 0;
         motorTorque = 0;
         motorSpeed = 0;
         enableLimit = false;
         enableMotor = false;
      }
   }
}

