package Engine.Collision
{
   import Engine.Common.b2Settings;
   
   public class b2Pair
   {
      public static var b2_nullPair:uint = b2Settings.USHRT_MAX;
      
      public static var b2_nullProxy:uint = b2Settings.USHRT_MAX;
      
      public static var b2_tableCapacity:int = b2Settings.b2_maxPairs;
      
      public static var b2_tableMask:int = b2_tableCapacity - 1;
      
      public static var e_pairBuffered:uint = 1;
      
      public static var e_pairRemoved:uint = 2;
      
      public static var e_pairReceived:uint = 4;
      
      public var proxyId1:uint;
      
      public var userData:* = null;
      
      public var proxyId2:uint;
      
      public var status:uint;
      
      public function b2Pair()
      {
         super();
      }
      
      public function SetBuffered() : *
      {
         status |= e_pairBuffered;
      }
      
      public function SetReceived() : *
      {
         status |= e_pairReceived;
      }
      
      public function IsBuffered() : Boolean
      {
         return (status & e_pairBuffered) == e_pairBuffered;
      }
      
      public function IsReceived() : Boolean
      {
         return (status & e_pairReceived) == e_pairReceived;
      }
      
      public function ClearBuffered() : *
      {
         status &= ~e_pairBuffered;
      }
      
      public function ClearRemoved() : *
      {
         status &= ~e_pairRemoved;
      }
      
      public function IsRemoved() : Boolean
      {
         return (status & e_pairRemoved) == e_pairRemoved;
      }
      
      public function SetRemoved() : *
      {
         status |= e_pairRemoved;
      }
   }
}

