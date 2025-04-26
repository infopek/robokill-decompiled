package Engine.Collision
{
   import Engine.Common.*;
   import Engine.Common.Math.*;
   
   public class b2PairManager
   {
      public var m_pairCount:int;
      
      public var m_next:Array;
      
      public var m_hashTable:Array;
      
      public var m_pairs:Array;
      
      public function b2PairManager()
      {
         var _loc1_:uint = 0;
         super();
         m_hashTable = new Array(b2Pair.b2_tableCapacity);
         _loc1_ = 0;
         while(_loc1_ < b2Pair.b2_tableCapacity)
         {
            m_hashTable[_loc1_] = b2Pair.b2_nullPair;
            _loc1_++;
         }
         m_next = new Array(b2Settings.b2_maxPairs);
         _loc1_ = 0;
         while(_loc1_ < b2Settings.b2_maxPairs)
         {
            m_next[_loc1_] = b2Pair.b2_nullPair;
            _loc1_++;
         }
         m_pairs = new Array(b2Settings.b2_maxPairs);
         _loc1_ = 0;
         while(_loc1_ < b2Settings.b2_maxPairs)
         {
            m_pairs[_loc1_] = new b2Pair();
            _loc1_++;
         }
         m_pairCount = 0;
      }
      
      public static function Hash(param1:uint, param2:uint) : uint
      {
         var _loc3_:uint = uint(param2 << 16 & 4294901760 | param1);
         _loc3_ = uint(~_loc3_ + (_loc3_ << 15 & 4294934528));
         _loc3_ ^= _loc3_ >> 12 & 0x0FFFFF;
         _loc3_ += _loc3_ << 2 & 4294967292;
         _loc3_ ^= _loc3_ >> 4 & 0x0FFFFFFF;
         _loc3_ *= 2057;
         return uint(_loc3_ ^ _loc3_ >> 16 & 0xFFFF);
      }
      
      public static function Equals(param1:b2Pair, param2:uint, param3:uint) : Boolean
      {
         return param1.proxyId1 == param2 && param1.proxyId2 == param3;
      }
      
      public function Find(param1:uint, param2:uint) : b2Pair
      {
         var _loc5_:uint = 0;
         if(param1 > param2)
         {
            _loc5_ = param1;
            param1 = param2;
            param2 = _loc5_;
         }
         var _loc3_:uint = uint(Hash(param1,param2) & b2Pair.b2_tableMask);
         var _loc4_:uint = uint(m_hashTable[_loc3_]);
         while(_loc4_ != b2Pair.b2_nullPair && Equals(m_pairs[_loc4_],param1,param2) == false)
         {
            _loc4_ = uint(m_next[_loc4_]);
         }
         if(_loc4_ == b2Pair.b2_nullPair)
         {
            return null;
         }
         return m_pairs[_loc4_];
      }
      
      public function Add(param1:uint, param2:uint) : b2Pair
      {
         var _loc6_:uint = 0;
         if(param1 > param2)
         {
            _loc6_ = param1;
            param1 = param2;
            param2 = _loc6_;
         }
         var _loc3_:uint = uint(Hash(param1,param2) & b2Pair.b2_tableMask);
         var _loc4_:int = FindHash(param1,param2,_loc3_);
         var _loc5_:b2Pair = _loc4_ != b2Settings.USHRT_MAX ? m_pairs[_loc4_] : null;
         if(_loc5_ != null)
         {
            return _loc5_;
         }
         if(m_pairCount == b2Settings.b2_maxPairs)
         {
            return null;
         }
         _loc5_ = m_pairs[m_pairCount];
         _loc5_.proxyId1 = param1;
         _loc5_.proxyId2 = param2;
         _loc5_.status = 0;
         _loc5_.userData = null;
         m_next[m_pairCount] = m_hashTable[_loc3_];
         m_hashTable[_loc3_] = m_pairCount;
         ++m_pairCount;
         return _loc5_;
      }
      
      public function Remove(param1:uint, param2:uint) : *
      {
         var _loc12_:uint = 0;
         if(param1 > param2)
         {
            _loc12_ = param1;
            param1 = param2;
            param2 = _loc12_;
         }
         var _loc3_:uint = uint(Hash(param1,param2) & b2Pair.b2_tableMask);
         var _loc4_:int = FindHash(param1,param2,_loc3_);
         var _loc5_:b2Pair = _loc4_ != b2Settings.USHRT_MAX ? m_pairs[_loc4_] : null;
         if(_loc5_ == null)
         {
            return null;
         }
         var _loc6_:* = _loc5_.userData;
         var _loc7_:uint = uint(m_hashTable[_loc3_]);
         var _loc8_:uint = b2Pair.b2_nullPair;
         while(_loc7_ != _loc4_)
         {
            _loc8_ = _loc7_;
            _loc7_ = uint(m_next[_loc7_]);
         }
         if(_loc8_ != b2Pair.b2_nullPair)
         {
            m_next[_loc8_] = m_next[_loc4_];
         }
         else
         {
            m_hashTable[_loc3_] = m_next[_loc4_];
         }
         var _loc9_:uint = uint(m_pairCount - 1);
         if(_loc9_ == _loc4_)
         {
            --m_pairCount;
            return _loc6_;
         }
         var _loc10_:b2Pair = m_pairs[_loc9_];
         var _loc11_:uint = uint(Hash(_loc10_.proxyId1,_loc10_.proxyId2) & b2Pair.b2_tableMask);
         _loc7_ = uint(m_hashTable[_loc11_]);
         _loc8_ = b2Pair.b2_nullPair;
         while(_loc7_ != _loc9_)
         {
            _loc8_ = _loc7_;
            _loc7_ = uint(m_next[_loc7_]);
         }
         if(_loc8_ != b2Pair.b2_nullPair)
         {
            m_next[_loc8_] = m_next[_loc9_];
         }
         else
         {
            m_hashTable[_loc11_] = m_next[_loc9_];
         }
         m_pairs[_loc4_].userData = m_pairs[_loc9_].userData;
         m_pairs[_loc4_].proxyId1 = m_pairs[_loc9_].proxyId1;
         m_pairs[_loc4_].proxyId2 = m_pairs[_loc9_].proxyId2;
         m_pairs[_loc4_].status = m_pairs[_loc9_].status;
         m_next[_loc4_] = m_hashTable[_loc11_];
         m_hashTable[_loc11_] = _loc4_;
         --m_pairCount;
         return _loc6_;
      }
      
      private function FindHash(param1:uint, param2:uint, param3:uint) : int
      {
         var _loc4_:uint = uint(m_hashTable[param3]);
         while(_loc4_ != b2Pair.b2_nullPair && Equals(m_pairs[_loc4_],param1,param2) == false)
         {
            _loc4_ = uint(m_next[_loc4_]);
         }
         if(_loc4_ == b2Pair.b2_nullPair)
         {
            return b2Settings.USHRT_MAX;
         }
         return _loc4_;
      }
      
      public function GetPairs() : Array
      {
         return m_pairs;
      }
      
      public function GetCount() : int
      {
         return m_pairCount;
      }
   }
}

