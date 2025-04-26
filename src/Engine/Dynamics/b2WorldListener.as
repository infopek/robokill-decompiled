package Engine.Dynamics
{
   import Engine.Dynamics.Joints.b2Joint;
   
   public class b2WorldListener
   {
      public static var b2_freezeBody:uint = 0;
      
      public static var b2_destroyBody:uint = 1;
      
      public function b2WorldListener()
      {
         super();
      }
      
      public function NotifyJointDestroyed(param1:b2Joint) : *
      {
      }
      
      public function NotifyBoundaryViolated(param1:b2Body) : uint
      {
         return b2_freezeBody;
      }
   }
}

