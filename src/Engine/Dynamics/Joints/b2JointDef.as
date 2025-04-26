package Engine.Dynamics.Joints
{
   import Engine.Dynamics.b2Body;
   
   public class b2JointDef
   {
      public var body2:b2Body;
      
      public var type:int;
      
      public var userData:*;
      
      public var collideConnected:Boolean;
      
      public var body1:b2Body;
      
      public function b2JointDef()
      {
         super();
         type = b2Joint.e_unknownJoint;
         userData = null;
         body1 = null;
         body2 = null;
         collideConnected = false;
      }
   }
}

