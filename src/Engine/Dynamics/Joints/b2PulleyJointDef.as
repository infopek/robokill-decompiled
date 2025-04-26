package Engine.Dynamics.Joints
{
   import Engine.Common.Math.b2Vec2;
   
   public class b2PulleyJointDef extends b2JointDef
   {
      public var maxLength1:Number;
      
      public var groundPoint1:b2Vec2 = new b2Vec2();
      
      public var groundPoint2:b2Vec2 = new b2Vec2();
      
      public var ratio:Number;
      
      public var maxLength2:Number;
      
      public var anchorPoint1:b2Vec2 = new b2Vec2();
      
      public var anchorPoint2:b2Vec2 = new b2Vec2();
      
      public function b2PulleyJointDef()
      {
         super();
         type = b2Joint.e_pulleyJoint;
         groundPoint1.Set(-1,1);
         groundPoint2.Set(1,1);
         anchorPoint1.Set(-1,0);
         anchorPoint2.Set(1,0);
         maxLength1 = 0.5 * b2PulleyJoint.b2_minPulleyLength;
         maxLength2 = 0.5 * b2PulleyJoint.b2_minPulleyLength;
         ratio = 1;
         collideConnected = true;
      }
   }
}

