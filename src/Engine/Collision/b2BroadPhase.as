package Engine.Collision
{
   import Engine.Common.*;
   import Engine.Common.Math.*;
   
   public class b2BroadPhase
   {
      public static var s_validate:Boolean = false;
      
      public static const b2_invalid:uint = b2Settings.USHRT_MAX;
      
      public static const b2_nullEdge:uint = b2Settings.USHRT_MAX;
      
      public var m_bounds:Array;
      
      public var m_quantizationFactor:b2Vec2;
      
      public var m_pairBuffer:Array;
      
      public var m_worldAABB:b2AABB;
      
      public var m_freeProxy:uint;
      
      public var m_pairCallback:b2PairCallback;
      
      public var m_proxyCount:int;
      
      public var m_queryResultCount:int;
      
      public var m_proxyPool:Array;
      
      public var m_pairManager:b2PairManager;
      
      public var m_pairBufferCount:int;
      
      public var m_timeStamp:uint;
      
      public var m_queryResults:Array;
      
      public function b2BroadPhase(param1:b2AABB, param2:b2PairCallback)
      {
         var _loc3_:int = 0;
         var _loc6_:b2Proxy = null;
         var _loc7_:int = 0;
         m_pairManager = new b2PairManager();
         m_proxyPool = new Array(b2Settings.b2_maxPairs);
         m_pairBuffer = new Array(b2Settings.b2_maxPairs);
         m_bounds = new Array(2 * b2Settings.b2_maxProxies);
         m_queryResults = new Array(b2Settings.b2_maxProxies);
         m_quantizationFactor = new b2Vec2();
         super();
         m_worldAABB = param1;
         m_pairCallback = param2;
         m_proxyCount = 0;
         _loc3_ = 0;
         while(_loc3_ < b2Settings.b2_maxProxies)
         {
            m_queryResults[_loc3_] = 0;
            _loc3_++;
         }
         m_bounds = new Array(2);
         _loc3_ = 0;
         while(_loc3_ < 2)
         {
            m_bounds[_loc3_] = new Array(2 * b2Settings.b2_maxProxies);
            _loc7_ = 0;
            while(_loc7_ < 2 * b2Settings.b2_maxProxies)
            {
               m_bounds[_loc3_][_loc7_] = new b2Bound();
               _loc7_++;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < b2Settings.b2_maxPairs)
         {
            m_pairBuffer[_loc3_] = new b2BufferedPair();
            _loc3_++;
         }
         var _loc4_:Number = param1.maxVertex.x;
         var _loc5_:Number = param1.maxVertex.y;
         _loc4_ -= param1.minVertex.x;
         _loc5_ -= param1.minVertex.y;
         m_quantizationFactor.x = b2Settings.USHRT_MAX / _loc4_;
         m_quantizationFactor.y = b2Settings.USHRT_MAX / _loc5_;
         _loc3_ = 0;
         while(_loc3_ < b2Settings.b2_maxProxies - 1)
         {
            _loc6_ = new b2Proxy();
            m_proxyPool[_loc3_] = _loc6_;
            _loc6_.SetNext(_loc3_ + 1);
            _loc6_.timeStamp = 0;
            _loc6_.overlapCount = b2_invalid;
            _loc6_.userData = null;
            _loc3_++;
         }
         _loc6_ = new b2Proxy();
         m_proxyPool[b2Settings.b2_maxProxies - 1] = _loc6_;
         _loc6_.SetNext(b2Pair.b2_nullProxy);
         _loc6_.timeStamp = 0;
         _loc6_.overlapCount = b2_invalid;
         _loc6_.userData = null;
         m_freeProxy = 0;
         m_pairBufferCount = 0;
         m_timeStamp = 1;
         m_queryResultCount = 0;
      }
      
      public static function BinarySearch(param1:Array, param2:int, param3:uint) : uint
      {
         var _loc6_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = param2 - 1;
         while(_loc4_ <= _loc5_)
         {
            _loc6_ = (_loc4_ + _loc5_) / 2;
            if(param1[_loc6_].value > param3)
            {
               _loc5_ = _loc6_ - 1;
            }
            else
            {
               if(param1[_loc6_].value >= param3)
               {
                  return uint(_loc6_);
               }
               _loc4_ = _loc6_ + 1;
            }
         }
         return uint(_loc4_);
      }
      
      public static function Equals(param1:b2BufferedPair, param2:b2BufferedPair) : Boolean
      {
         if(param1.proxyId1 == param2.proxyId1 && param1.proxyId2 == param2.proxyId2)
         {
            return true;
         }
         return false;
      }
      
      public static function LessThanBP(param1:b2BufferedPair, param2:b2BufferedPair) : Boolean
      {
         if(param1.proxyId1 < param2.proxyId1)
         {
            return true;
         }
         if(param1.proxyId1 == param2.proxyId1)
         {
            return param1.proxyId2 < param2.proxyId2;
         }
         return false;
      }
      
      public function ValidatePairs() : *
      {
         var _loc3_:b2Pair = null;
         var _loc4_:b2Proxy = null;
         var _loc5_:b2Proxy = null;
         var _loc1_:uint = uint(m_pairManager.GetCount());
         m_pairBuffer.sortOn(["proxyId1","proxyId2"],Array.NUMERIC);
         var _loc2_:int = 0;
         while(_loc2_ < m_pairBufferCount)
         {
            if(_loc2_ > 0)
            {
            }
            _loc3_ = m_pairManager.Find(m_pairBuffer[_loc2_].proxyId1,m_pairBuffer[_loc2_].proxyId2);
            _loc4_ = m_proxyPool[_loc3_.proxyId1];
            _loc5_ = m_proxyPool[_loc3_.proxyId2];
            _loc2_++;
         }
      }
      
      public function GetProxy(param1:int) : b2Proxy
      {
         if(param1 == b2Pair.b2_nullProxy || m_proxyPool[param1].IsValid() == false)
         {
            return null;
         }
         return m_proxyPool[param1];
      }
      
      public function QueryAABB(param1:b2AABB, param2:*, param3:int) : int
      {
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc12_:b2Proxy = null;
         var _loc4_:Array = new Array();
         var _loc5_:Array = new Array();
         ComputeBounds(_loc4_,_loc5_,param1);
         var _loc8_:Array = [_loc6_];
         var _loc9_:Array = [_loc7_];
         Query(_loc8_,_loc9_,_loc4_[0],_loc5_[0],m_bounds[0],2 * m_proxyCount,0);
         Query(_loc8_,_loc9_,_loc4_[1],_loc5_[1],m_bounds[1],2 * m_proxyCount,1);
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         while(_loc11_ < m_queryResultCount && _loc10_ < param3)
         {
            _loc12_ = m_proxyPool[m_queryResults[_loc11_]];
            param2[_loc11_] = _loc12_.userData;
            _loc11_++;
            _loc10_++;
         }
         m_queryResultCount = 0;
         IncrementTimeStamp();
         return _loc10_;
      }
      
      private function RemoveBufferedPair(param1:uint, param2:uint) : *
      {
         var _loc3_:b2Pair = m_pairManager.Find(param1,param2);
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.IsBuffered() == false)
         {
            if(m_pairBufferCount < b2Settings.b2_maxPairs)
            {
               _loc3_.SetBuffered();
               m_pairBuffer[m_pairBufferCount].proxyId1 = _loc3_.proxyId1;
               m_pairBuffer[m_pairBufferCount].proxyId2 = _loc3_.proxyId2;
               ++m_pairBufferCount;
            }
         }
         _loc3_.SetRemoved();
      }
      
      public function Flush() : *
      {
         var _loc1_:int = 0;
         var _loc3_:b2Pair = null;
         var _loc4_:b2Proxy = null;
         var _loc5_:b2Proxy = null;
         var _loc2_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < m_pairBufferCount)
         {
            _loc3_ = m_pairManager.Find(m_pairBuffer[_loc1_].proxyId1,m_pairBuffer[_loc1_].proxyId2);
            _loc4_ = m_proxyPool[_loc3_.proxyId1];
            _loc5_ = m_proxyPool[_loc3_.proxyId2];
            if(_loc3_.IsRemoved())
            {
               if(_loc3_.IsReceived())
               {
                  m_pairCallback.PairRemoved(_loc4_.userData,_loc5_.userData,_loc3_.userData);
               }
               m_pairBuffer[_loc2_].proxyId1 = _loc3_.proxyId1;
               m_pairBuffer[_loc2_].proxyId2 = _loc3_.proxyId2;
               _loc2_++;
            }
            else
            {
               _loc3_.ClearBuffered();
               if(_loc3_.IsReceived() == false)
               {
                  _loc3_.userData = m_pairCallback.PairAdded(_loc4_.userData,_loc5_.userData);
                  _loc3_.SetReceived();
               }
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            m_pairManager.Remove(m_pairBuffer[_loc1_].proxyId1,m_pairBuffer[_loc1_].proxyId2);
            _loc1_++;
         }
         m_pairBufferCount = 0;
      }
      
      private function IncrementTimeStamp() : *
      {
         var _loc1_:uint = 0;
         if(m_timeStamp == b2Settings.USHRT_MAX)
         {
            _loc1_ = 0;
            while(_loc1_ < b2Settings.b2_maxProxies)
            {
               m_proxyPool[_loc1_].timeStamp = 0;
               _loc1_++;
            }
            m_timeStamp = 1;
         }
         else
         {
            ++m_timeStamp;
         }
      }
      
      private function Query(param1:Array, param2:Array, param3:uint, param4:uint, param5:Array, param6:uint, param7:int) : *
      {
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:b2Proxy = null;
         var _loc8_:uint = BinarySearch(param5,param6,param3);
         var _loc9_:uint = BinarySearch(param5,param6,param4);
         var _loc10_:uint = _loc8_;
         while(_loc10_ < _loc9_)
         {
            if(param5[_loc10_].IsLower())
            {
               IncrementOverlapCount(param5[_loc10_].proxyId);
            }
            _loc10_++;
         }
         if(_loc8_ > 0)
         {
            _loc11_ = int(_loc8_ - 1);
            _loc12_ = int(param5[_loc11_].stabbingCount);
            while(_loc12_)
            {
               if(param5[_loc11_].IsLower())
               {
                  _loc13_ = m_proxyPool[param5[_loc11_].proxyId];
                  if(_loc8_ <= _loc13_.upperBounds[param7])
                  {
                     IncrementOverlapCount(param5[_loc11_].proxyId);
                     _loc12_--;
                  }
               }
               _loc11_--;
            }
         }
         param1[0] = _loc8_;
         param2[0] = _loc9_;
      }
      
      private function ComputeBounds(param1:Array, param2:Array, param3:b2AABB) : *
      {
         var _loc4_:Number = param3.minVertex.x;
         var _loc5_:Number = param3.minVertex.y;
         _loc4_ = b2Math.b2Min(_loc4_,m_worldAABB.maxVertex.x);
         _loc5_ = b2Math.b2Min(_loc5_,m_worldAABB.maxVertex.y);
         _loc4_ = b2Math.b2Max(_loc4_,m_worldAABB.minVertex.x);
         _loc5_ = b2Math.b2Max(_loc5_,m_worldAABB.minVertex.y);
         var _loc6_:Number = param3.maxVertex.x;
         var _loc7_:Number = param3.maxVertex.y;
         _loc6_ = b2Math.b2Min(_loc6_,m_worldAABB.maxVertex.x);
         _loc7_ = b2Math.b2Min(_loc7_,m_worldAABB.maxVertex.y);
         _loc6_ = b2Math.b2Max(_loc6_,m_worldAABB.minVertex.x);
         _loc7_ = b2Math.b2Max(_loc7_,m_worldAABB.minVertex.y);
         param1[0] = uint(m_quantizationFactor.x * (_loc4_ - m_worldAABB.minVertex.x)) & b2Settings.USHRT_MAX - 1;
         param2[0] = uint(m_quantizationFactor.x * (_loc6_ - m_worldAABB.minVertex.x)) & 0xFFFF | 1;
         param1[1] = uint(m_quantizationFactor.y * (_loc5_ - m_worldAABB.minVertex.y)) & b2Settings.USHRT_MAX - 1;
         param2[1] = uint(m_quantizationFactor.y * (_loc7_ - m_worldAABB.minVertex.y)) & 0xFFFF | 1;
      }
      
      public function ShouldCollide(param1:int, param2:int) : Boolean
      {
         var _loc3_:b2Proxy = m_proxyPool[param1];
         var _loc4_:b2Proxy = m_proxyPool[param2];
         if(_loc3_.groupIndex == _loc4_.groupIndex && _loc3_.groupIndex != 0)
         {
            return _loc3_.groupIndex > 0;
         }
         return (_loc3_.maskBits & _loc4_.categoryBits) != 0 && (_loc3_.categoryBits & _loc4_.maskBits) != 0;
      }
      
      public function CreateProxy(param1:b2AABB, param2:int, param3:int, param4:int, param5:*) : uint
      {
         var _loc6_:uint = 0;
         var _loc7_:b2Proxy = null;
         var _loc14_:Array = null;
         var _loc15_:uint = 0;
         var _loc16_:uint = 0;
         var _loc17_:Array = null;
         var _loc18_:Array = null;
         var _loc19_:Array = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:b2Bound = null;
         var _loc23_:b2Bound = null;
         var _loc24_:int = 0;
         var _loc25_:b2Proxy = null;
         var _loc26_:b2Pair = null;
         if(m_freeProxy == b2Pair.b2_nullProxy)
         {
            return b2Pair.b2_nullProxy;
         }
         Flush();
         var _loc8_:uint = m_freeProxy;
         _loc7_ = m_proxyPool[_loc8_];
         m_freeProxy = _loc7_.GetNext();
         _loc7_.overlapCount = 0;
         _loc7_.groupIndex = param2;
         _loc7_.categoryBits = param3;
         _loc7_.maskBits = param4;
         _loc7_.userData = param5;
         var _loc9_:uint = uint(2 * m_proxyCount);
         var _loc10_:Array = new Array();
         var _loc11_:Array = new Array();
         ComputeBounds(_loc10_,_loc11_,param1);
         var _loc12_:int = 0;
         while(_loc12_ < 2)
         {
            _loc14_ = m_bounds[_loc12_];
            _loc17_ = [_loc15_];
            _loc18_ = [_loc16_];
            Query(_loc17_,_loc18_,_loc10_[_loc12_],_loc11_[_loc12_],_loc14_,_loc9_,_loc12_);
            _loc15_ = uint(_loc17_[0]);
            _loc16_ = uint(_loc18_[0]);
            _loc19_ = new Array();
            _loc21_ = _loc9_ - _loc16_;
            _loc20_ = 0;
            while(_loc20_ < _loc21_)
            {
               _loc19_[_loc20_] = new b2Bound();
               _loc22_ = _loc19_[_loc20_];
               _loc23_ = _loc14_[_loc16_ + _loc20_];
               _loc22_.value = _loc23_.value;
               _loc22_.proxyId = _loc23_.proxyId;
               _loc22_.stabbingCount = _loc23_.stabbingCount;
               _loc20_++;
            }
            _loc21_ = int(_loc19_.length);
            _loc24_ = _loc16_ + 2;
            _loc20_ = 0;
            while(_loc20_ < _loc21_)
            {
               _loc23_ = _loc19_[_loc20_];
               _loc22_ = _loc14_[_loc24_ + _loc20_];
               _loc22_.value = _loc23_.value;
               _loc22_.proxyId = _loc23_.proxyId;
               _loc22_.stabbingCount = _loc23_.stabbingCount;
               _loc20_++;
            }
            _loc19_ = new Array();
            _loc21_ = _loc16_ - _loc15_;
            _loc20_ = 0;
            while(_loc20_ < _loc21_)
            {
               _loc19_[_loc20_] = new b2Bound();
               _loc22_ = _loc19_[_loc20_];
               _loc23_ = _loc14_[_loc15_ + _loc20_];
               _loc22_.value = _loc23_.value;
               _loc22_.proxyId = _loc23_.proxyId;
               _loc22_.stabbingCount = _loc23_.stabbingCount;
               _loc20_++;
            }
            _loc21_ = int(_loc19_.length);
            _loc24_ = _loc15_ + 1;
            _loc20_ = 0;
            while(_loc20_ < _loc21_)
            {
               _loc23_ = _loc19_[_loc20_];
               _loc22_ = _loc14_[_loc24_ + _loc20_];
               _loc22_.value = _loc23_.value;
               _loc22_.proxyId = _loc23_.proxyId;
               _loc22_.stabbingCount = _loc23_.stabbingCount;
               _loc20_++;
            }
            _loc16_++;
            _loc14_[_loc15_].value = _loc10_[_loc12_];
            _loc14_[_loc15_].proxyId = _loc8_;
            _loc14_[_loc16_].value = _loc11_[_loc12_];
            _loc14_[_loc16_].proxyId = _loc8_;
            _loc14_[_loc15_].stabbingCount = _loc15_ == 0 ? 0 : _loc14_[_loc15_ - 1].stabbingCount;
            _loc14_[_loc16_].stabbingCount = _loc14_[_loc16_ - 1].stabbingCount;
            _loc6_ = _loc15_;
            while(_loc6_ < _loc16_)
            {
               ++_loc14_[_loc6_].stabbingCount;
               _loc6_++;
            }
            _loc6_ = _loc15_;
            while(_loc6_ < _loc9_ + 2)
            {
               _loc25_ = m_proxyPool[_loc14_[_loc6_].proxyId];
               if(_loc14_[_loc6_].IsLower())
               {
                  _loc25_.lowerBounds[_loc12_] = _loc6_;
               }
               else
               {
                  _loc25_.upperBounds[_loc12_] = _loc6_;
               }
               _loc6_++;
            }
            _loc12_++;
         }
         ++m_proxyCount;
         var _loc13_:int = 0;
         while(_loc13_ < m_queryResultCount)
         {
            if(ShouldCollide(_loc8_,m_queryResults[_loc13_]) != false)
            {
               _loc26_ = m_pairManager.Add(_loc8_,m_queryResults[_loc13_]);
               if(_loc26_ != null)
               {
                  _loc26_.userData = m_pairCallback.PairAdded(_loc7_.userData,m_proxyPool[m_queryResults[_loc13_]].userData);
                  _loc26_.SetReceived();
               }
            }
            _loc13_++;
         }
         m_queryResultCount = 0;
         IncrementTimeStamp();
         return _loc8_;
      }
      
      public function DestroyProxy(param1:uint) : *
      {
         var _loc6_:Array = null;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc11_:Array = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:b2Bound = null;
         var _loc15_:b2Bound = null;
         var _loc16_:int = 0;
         var _loc17_:uint = 0;
         var _loc18_:int = 0;
         var _loc19_:b2Proxy = null;
         var _loc20_:b2Proxy = null;
         var _loc21_:* = undefined;
         if(param1 == b2Pair.b2_nullProxy)
         {
            return;
         }
         Flush();
         var _loc2_:b2Proxy = m_proxyPool[param1];
         var _loc3_:uint = uint(2 * m_proxyCount);
         var _loc4_:int = 0;
         while(_loc4_ < 2)
         {
            _loc6_ = m_bounds[_loc4_];
            _loc7_ = uint(_loc2_.lowerBounds[_loc4_]);
            _loc8_ = uint(_loc2_.upperBounds[_loc4_]);
            _loc9_ = uint(_loc6_[_loc7_].value);
            _loc10_ = uint(_loc6_[_loc8_].value);
            _loc11_ = new Array();
            _loc13_ = _loc8_ - _loc7_ - 1;
            _loc12_ = 0;
            while(_loc12_ < _loc13_)
            {
               _loc11_[_loc12_] = new b2Bound();
               _loc14_ = _loc11_[_loc12_];
               _loc15_ = _loc6_[_loc7_ + 1 + _loc12_];
               _loc14_.value = _loc15_.value;
               _loc14_.proxyId = _loc15_.proxyId;
               _loc14_.stabbingCount = _loc15_.stabbingCount;
               _loc12_++;
            }
            _loc13_ = int(_loc11_.length);
            _loc16_ = int(_loc7_);
            _loc12_ = 0;
            while(_loc12_ < _loc13_)
            {
               _loc15_ = _loc11_[_loc12_];
               _loc14_ = _loc6_[_loc16_ + _loc12_];
               _loc14_.value = _loc15_.value;
               _loc14_.proxyId = _loc15_.proxyId;
               _loc14_.stabbingCount = _loc15_.stabbingCount;
               _loc12_++;
            }
            _loc11_ = new Array();
            _loc13_ = _loc3_ - _loc8_ - 1;
            _loc12_ = 0;
            while(_loc12_ < _loc13_)
            {
               _loc11_[_loc12_] = new b2Bound();
               _loc14_ = _loc11_[_loc12_];
               _loc15_ = _loc6_[_loc8_ + 1 + _loc12_];
               _loc14_.value = _loc15_.value;
               _loc14_.proxyId = _loc15_.proxyId;
               _loc14_.stabbingCount = _loc15_.stabbingCount;
               _loc12_++;
            }
            _loc13_ = int(_loc11_.length);
            _loc16_ = int(_loc8_ - 1);
            _loc12_ = 0;
            while(_loc12_ < _loc13_)
            {
               _loc15_ = _loc11_[_loc12_];
               _loc14_ = _loc6_[_loc16_ + _loc12_];
               _loc14_.value = _loc15_.value;
               _loc14_.proxyId = _loc15_.proxyId;
               _loc14_.stabbingCount = _loc15_.stabbingCount;
               _loc12_++;
            }
            _loc13_ = _loc3_ - 2;
            _loc17_ = _loc7_;
            while(_loc17_ < _loc13_)
            {
               _loc19_ = m_proxyPool[_loc6_[_loc17_].proxyId];
               if(_loc6_[_loc17_].IsLower())
               {
                  _loc19_.lowerBounds[_loc4_] = _loc17_;
               }
               else
               {
                  _loc19_.upperBounds[_loc4_] = _loc17_;
               }
               _loc17_++;
            }
            _loc13_ = int(_loc8_ - 1);
            _loc18_ = int(_loc7_);
            while(_loc18_ < _loc13_)
            {
               --_loc6_[_loc18_].stabbingCount;
               _loc18_++;
            }
            Query(new Array(),new Array(),_loc9_,_loc10_,_loc6_,_loc3_ - 2,_loc4_);
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc5_ < m_queryResultCount)
         {
            _loc20_ = m_proxyPool[m_queryResults[_loc5_]];
            _loc21_ = m_pairManager.Remove(param1,m_queryResults[_loc5_]);
            m_pairCallback.PairRemoved(_loc2_.userData,_loc20_.userData,_loc21_);
            _loc5_++;
         }
         m_queryResultCount = 0;
         IncrementTimeStamp();
         _loc2_.userData = null;
         _loc2_.overlapCount = b2_invalid;
         _loc2_.SetNext(m_freeProxy);
         m_freeProxy = param1;
         --m_proxyCount;
      }
      
      private function TestOverlap(param1:b2Proxy, param2:b2Proxy) : Boolean
      {
         var _loc4_:Array = null;
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            _loc4_ = m_bounds[_loc3_];
            if(_loc4_[param1.lowerBounds[_loc3_]].value > _loc4_[param2.upperBounds[_loc3_]].value)
            {
               return false;
            }
            if(_loc4_[param1.upperBounds[_loc3_]].value < _loc4_[param2.lowerBounds[_loc3_]].value)
            {
               return false;
            }
            _loc3_++;
         }
         return true;
      }
      
      public function Validate() : *
      {
         var _loc1_:b2Pair = null;
         var _loc2_:b2Proxy = null;
         var _loc3_:b2Proxy = null;
         var _loc4_:Boolean = false;
         var _loc10_:b2Bound = null;
         var _loc11_:uint = 0;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:b2Bound = null;
         var _loc15_:uint = 0;
         var _loc16_:b2Proxy = null;
         var _loc17_:b2Bound = null;
         var _loc5_:int = 0;
         while(_loc5_ < 2)
         {
            _loc10_ = m_bounds[_loc5_];
            _loc11_ = uint(2 * m_proxyCount);
            _loc12_ = 0;
            _loc13_ = 0;
            while(_loc13_ < _loc11_)
            {
               _loc14_ = _loc10_[_loc13_];
               if(_loc13_ > 0)
               {
                  _loc17_ = _loc10_[_loc13_ - 1];
               }
               _loc15_ = _loc14_.proxyId;
               _loc16_ = m_proxyPool[_loc14_.proxyId];
               if(_loc14_.IsLower() == true)
               {
                  _loc12_++;
               }
               else
               {
                  _loc12_--;
               }
               _loc13_++;
            }
            _loc5_++;
         }
         var _loc6_:Array = m_pairManager.GetPairs();
         var _loc7_:uint = uint(m_pairManager.GetCount());
         m_pairBuffer.sortOn(["proxyId1","proxyId2"],Array.NUMERIC);
         var _loc8_:int = 0;
         while(_loc8_ < m_pairBufferCount)
         {
            if(_loc8_ > 0)
            {
            }
            _loc1_ = m_pairManager.Find(m_pairBuffer[_loc8_].proxyId1,m_pairBuffer[_loc8_].proxyId2);
            _loc2_ = m_proxyPool[_loc1_.proxyId1];
            _loc3_ = m_proxyPool[_loc1_.proxyId2];
            _loc4_ = TestOverlap(_loc2_,_loc3_);
            if(_loc1_.IsRemoved() == true)
            {
            }
            _loc8_++;
         }
         var _loc9_:int = 0;
         while(_loc9_ < _loc7_)
         {
            _loc1_ = _loc6_[_loc9_];
            _loc2_ = m_proxyPool[_loc1_.proxyId1];
            _loc3_ = m_proxyPool[_loc1_.proxyId2];
            _loc4_ = TestOverlap(_loc2_,_loc3_);
            if(_loc1_.IsBuffered())
            {
               if(_loc1_.IsRemoved() == true)
               {
               }
            }
            _loc9_++;
         }
      }
      
      private function IncrementOverlapCount(param1:uint) : *
      {
         var _loc2_:b2Proxy = m_proxyPool[param1];
         if(_loc2_.timeStamp < m_timeStamp)
         {
            _loc2_.timeStamp = m_timeStamp;
            _loc2_.overlapCount = 1;
         }
         else
         {
            _loc2_.overlapCount = 2;
            m_queryResults[m_queryResultCount] = param1;
            ++m_queryResultCount;
         }
      }
      
      public function InRange(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc2_ = param1.minVertex.x;
         _loc3_ = param1.minVertex.y;
         _loc2_ -= m_worldAABB.maxVertex.x;
         _loc3_ -= m_worldAABB.maxVertex.y;
         _loc4_ = m_worldAABB.minVertex.x;
         _loc5_ = m_worldAABB.minVertex.y;
         _loc4_ -= param1.maxVertex.x;
         _loc5_ -= param1.maxVertex.y;
         _loc2_ = b2Math.b2Max(_loc2_,_loc4_);
         _loc3_ = b2Math.b2Max(_loc3_,_loc5_);
         return b2Math.b2Max(_loc2_,_loc3_) < 0;
      }
      
      private function AddBufferedPair(param1:uint, param2:uint) : *
      {
         if(ShouldCollide(param1,param2) == false)
         {
            return;
         }
         var _loc3_:b2Pair = m_pairManager.Add(param1,param2);
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.IsBuffered() == false)
         {
            if(m_pairBufferCount < b2Settings.b2_maxPairs)
            {
               _loc3_.SetBuffered();
               m_pairBuffer[m_pairBufferCount].proxyId1 = _loc3_.proxyId1;
               m_pairBuffer[m_pairBufferCount].proxyId2 = _loc3_.proxyId2;
               ++m_pairBufferCount;
            }
         }
         _loc3_.ClearRemoved();
      }
      
      public function MoveProxy(param1:uint, param2:b2AABB) : *
      {
         var _loc3_:uint = 0;
         var _loc4_:b2Bound = null;
         var _loc5_:b2Bound = null;
         var _loc6_:b2Bound = null;
         var _loc7_:uint = 0;
         var _loc8_:b2Proxy = null;
         var _loc14_:Array = null;
         var _loc15_:uint = 0;
         var _loc16_:uint = 0;
         var _loc17_:uint = 0;
         var _loc18_:uint = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:uint = 0;
         var _loc22_:b2Proxy = null;
         if(param1 == b2Pair.b2_nullProxy || b2Settings.b2_maxProxies <= param1)
         {
            return;
         }
         if(param2.IsValid() == false)
         {
            return;
         }
         var _loc9_:uint = uint(2 * m_proxyCount);
         var _loc10_:b2Proxy = m_proxyPool[param1];
         var _loc11_:Array = new Array();
         var _loc12_:Array = new Array();
         ComputeBounds(_loc11_,_loc12_,param2);
         var _loc13_:uint = 0;
         while(_loc13_ < 2)
         {
            _loc14_ = m_bounds[_loc13_];
            _loc15_ = uint(_loc10_.lowerBounds[_loc13_]);
            _loc16_ = uint(_loc10_.upperBounds[_loc13_]);
            _loc17_ = uint(_loc11_[_loc13_]);
            _loc18_ = uint(_loc12_[_loc13_]);
            _loc19_ = _loc17_ - _loc14_[_loc15_].value;
            _loc20_ = _loc18_ - _loc14_[_loc16_].value;
            _loc14_[_loc15_].value = _loc17_;
            _loc14_[_loc16_].value = _loc18_;
            if(_loc19_ < 0)
            {
               _loc3_ = _loc15_;
               while(_loc3_ > 0 && _loc17_ < _loc14_[_loc3_ - 1].value)
               {
                  _loc4_ = _loc14_[_loc3_];
                  _loc5_ = _loc14_[_loc3_ - 1];
                  _loc21_ = _loc5_.proxyId;
                  _loc22_ = m_proxyPool[_loc5_.proxyId];
                  ++_loc5_.stabbingCount;
                  if(_loc5_.IsUpper() == true)
                  {
                     if(TestOverlap(_loc10_,_loc22_))
                     {
                        AddBufferedPair(param1,_loc21_);
                     }
                     ++_loc22_.upperBounds[_loc13_];
                     ++_loc4_.stabbingCount;
                  }
                  else
                  {
                     ++_loc22_.lowerBounds[_loc13_];
                     --_loc4_.stabbingCount;
                  }
                  --_loc10_.lowerBounds[_loc13_];
                  _loc4_.Swap(_loc5_);
                  _loc3_--;
               }
            }
            if(_loc20_ > 0)
            {
               _loc3_ = _loc16_;
               while(_loc3_ < _loc9_ - 1 && _loc14_[_loc3_ + 1].value <= _loc18_)
               {
                  _loc4_ = _loc14_[_loc3_];
                  _loc6_ = _loc14_[_loc3_ + 1];
                  _loc7_ = _loc6_.proxyId;
                  _loc8_ = m_proxyPool[_loc7_];
                  ++_loc6_.stabbingCount;
                  if(_loc6_.IsLower() == true)
                  {
                     if(TestOverlap(_loc10_,_loc8_))
                     {
                        AddBufferedPair(param1,_loc7_);
                     }
                     --_loc8_.lowerBounds[_loc13_];
                     ++_loc4_.stabbingCount;
                  }
                  else
                  {
                     --_loc8_.upperBounds[_loc13_];
                     --_loc4_.stabbingCount;
                  }
                  ++_loc10_.upperBounds[_loc13_];
                  _loc4_.Swap(_loc6_);
                  _loc3_++;
               }
            }
            if(_loc19_ > 0)
            {
               _loc3_ = _loc15_;
               while(_loc3_ < _loc9_ - 1 && _loc14_[_loc3_ + 1].value <= _loc17_)
               {
                  _loc4_ = _loc14_[_loc3_];
                  _loc6_ = _loc14_[_loc3_ + 1];
                  _loc7_ = _loc6_.proxyId;
                  _loc8_ = m_proxyPool[_loc7_];
                  --_loc6_.stabbingCount;
                  if(_loc6_.IsUpper())
                  {
                     RemoveBufferedPair(param1,_loc7_);
                     --_loc8_.upperBounds[_loc13_];
                     --_loc4_.stabbingCount;
                  }
                  else
                  {
                     --_loc8_.lowerBounds[_loc13_];
                     ++_loc4_.stabbingCount;
                  }
                  ++_loc10_.lowerBounds[_loc13_];
                  _loc4_.Swap(_loc6_);
                  _loc3_++;
               }
            }
            if(_loc20_ < 0)
            {
               _loc3_ = _loc16_;
               while(_loc3_ > 0 && _loc18_ < _loc14_[_loc3_ - 1].value)
               {
                  _loc4_ = _loc14_[_loc3_];
                  _loc5_ = _loc14_[_loc3_ - 1];
                  _loc21_ = _loc5_.proxyId;
                  _loc22_ = m_proxyPool[_loc21_];
                  --_loc5_.stabbingCount;
                  if(_loc5_.IsLower() == true)
                  {
                     RemoveBufferedPair(param1,_loc21_);
                     ++_loc22_.lowerBounds[_loc13_];
                     --_loc4_.stabbingCount;
                  }
                  else
                  {
                     ++_loc22_.upperBounds[_loc13_];
                     ++_loc4_.stabbingCount;
                  }
                  --_loc10_.upperBounds[_loc13_];
                  _loc4_.Swap(_loc5_);
                  _loc3_--;
               }
            }
            _loc13_++;
         }
      }
   }
}

