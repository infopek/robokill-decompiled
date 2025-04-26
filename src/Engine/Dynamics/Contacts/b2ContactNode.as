package Engine.Dynamics.Contacts
{
   import Engine.Dynamics.b2Body;
   
   public class b2ContactNode
   {
      public var other:b2Body;
      
      public var prev:b2ContactNode;
      
      public var contact:b2Contact;
      
      public var next:b2ContactNode;
      
      public function b2ContactNode()
      {
         super();
      }
   }
}

