package Engine.Dynamics.Contacts
{
   public class b2NullContact extends b2Contact
   {
      public function b2NullContact()
      {
         super();
      }
      
      override public function Evaluate() : *
      {
      }
      
      override public function GetManifolds() : Array
      {
         return null;
      }
   }
}

