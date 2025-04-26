package Engine.Collision
{
   public class b2Bound
   {
      public var value:uint;
      
      public var proxyId:uint;
      
      public var stabbingCount:uint;
      
      public function b2Bound()
      {
         super();
      }
      
      public function Swap(param1:b2Bound) : *
      {
         var _loc2_:uint = value;
         var _loc3_:uint = proxyId;
         var _loc4_:uint = stabbingCount;
         value = param1.value;
         proxyId = param1.proxyId;
         stabbingCount = param1.stabbingCount;
         param1.value = _loc2_;
         param1.proxyId = _loc3_;
         param1.stabbingCount = _loc4_;
      }
      
      public function IsLower() : Boolean
      {
         return (value & 1) == 0;
      }
      
      public function IsUpper() : Boolean
      {
         return (value & 1) == 1;
      }
   }
}

