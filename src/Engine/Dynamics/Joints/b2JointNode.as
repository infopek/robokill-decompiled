package Engine.Dynamics.Joints
{
   import Engine.Dynamics.b2Body;
   
   public class b2JointNode
   {
      public var other:b2Body;
      
      public var next:b2JointNode;
      
      public var prev:b2JointNode;
      
      public var joint:b2Joint;
      
      public function b2JointNode()
      {
         super();
      }
   }
}

