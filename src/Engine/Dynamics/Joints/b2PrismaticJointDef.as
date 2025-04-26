package Engine.Dynamics.Joints
{
   import Engine.Common.Math.b2Vec2;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
      public var axis:b2Vec2;
      
      public var upperTranslation:Number;
      
      public var lowerTranslation:Number;
      
      public var motorSpeed:Number;
      
      public var enableLimit:Boolean;
      
      public var enableMotor:Boolean;
      
      public var anchorPoint:b2Vec2;
      
      public var motorForce:Number;
      
      public function b2PrismaticJointDef()
      {
         super();
         type = b2Joint.e_prismaticJoint;
         anchorPoint = new b2Vec2(0,0);
         axis = new b2Vec2(0,0);
         lowerTranslation = 0;
         upperTranslation = 0;
         motorForce = 0;
         motorSpeed = 0;
         enableLimit = false;
         enableMotor = false;
      }
   }
}

