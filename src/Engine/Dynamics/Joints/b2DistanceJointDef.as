package Engine.Dynamics.Joints
{
   import Engine.Common.Math.b2Vec2;
   
   public class b2DistanceJointDef extends b2JointDef
   {
      public var anchorPoint1:b2Vec2 = new b2Vec2();
      
      public var anchorPoint2:b2Vec2 = new b2Vec2();
      
      public function b2DistanceJointDef()
      {
         super();
         type = b2Joint.e_distanceJoint;
      }
   }
}

