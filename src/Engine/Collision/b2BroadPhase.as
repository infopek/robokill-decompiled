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
         var tempVar_3:int = 0;
         var proxy_6:b2Proxy = null;
         var index_7:int = 0;
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
         tempVar_3 = 0;
         while(tempVar_3 < b2Settings.b2_maxProxies)
         {
            m_queryResults[tempVar_3] = 0;
            tempVar_3++;
         }
         m_bounds = new Array(2);
         tempVar_3 = 0;
         while(tempVar_3 < 2)
         {
            m_bounds[tempVar_3] = new Array(2 * b2Settings.b2_maxProxies);
            index_7 = 0;
            while(index_7 < 2 * b2Settings.b2_maxProxies)
            {
               m_bounds[tempVar_3][index_7] = new b2Bound();
               index_7++;
            }
            tempVar_3++;
         }
         tempVar_3 = 0;
         while(tempVar_3 < b2Settings.b2_maxPairs)
         {
            m_pairBuffer[tempVar_3] = new b2BufferedPair();
            tempVar_3++;
         }
         var coordX_4:Number = param1.upperCorner.x;
         var coordY_5:Number = param1.upperCorner.y;
         coordX_4 -= param1.lowerCorner.x;
         coordY_5 -= param1.lowerCorner.y;
         m_quantizationFactor.x = b2Settings.USHRT_MAX / coordX_4;
         m_quantizationFactor.y = b2Settings.USHRT_MAX / coordY_5;
         tempVar_3 = 0;
         while(tempVar_3 < b2Settings.b2_maxProxies - 1)
         {
            proxy_6 = new b2Proxy();
            m_proxyPool[tempVar_3] = proxy_6;
            proxy_6.SetNext(tempVar_3 + 1);
            proxy_6.timeStamp = 0;
            proxy_6.overlapCount = b2_invalid;
            proxy_6.userData = null;
            tempVar_3++;
         }
         proxy_6 = new b2Proxy();
         m_proxyPool[b2Settings.b2_maxProxies - 1] = proxy_6;
         proxy_6.SetNext(b2Pair.b2_nullProxy);
         proxy_6.timeStamp = 0;
         proxy_6.overlapCount = b2_invalid;
         proxy_6.userData = null;
         m_freeProxy = 0;
         m_pairBufferCount = 0;
         m_timeStamp = 1;
         m_queryResultCount = 0;
      }
      
      public static function BinarySearch(param1:Array, param2:int, param3:uint) : uint
      {
         var proxy_6:int = 0;
         var coordX_4:int = 0;
         var coordY_5:int = param2 - 1;
         while(coordX_4 <= coordY_5)
         {
            proxy_6 = (coordX_4 + coordY_5) / 2;
            if(param1[proxy_6].value > param3)
            {
               coordY_5 = proxy_6 - 1;
            }
            else
            {
               if(param1[proxy_6].value >= param3)
               {
                  return uint(proxy_6);
               }
               coordX_4 = proxy_6 + 1;
            }
         }
         return uint(coordX_4);
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
         var tempVar_3:b2Pair = null;
         var coordX_4:b2Proxy = null;
         var coordY_5:b2Proxy = null;
         var tempVar_1:uint = uint(m_pairManager.GetCount());
         m_pairBuffer.sortOn(["proxyId1","proxyId2"],Array.NUMERIC);
         var tempVar_2:int = 0;
         while(tempVar_2 < m_pairBufferCount)
         {
            if(tempVar_2 > 0)
            {
            }
            tempVar_3 = m_pairManager.Find(m_pairBuffer[tempVar_2].proxyId1,m_pairBuffer[tempVar_2].proxyId2);
            coordX_4 = m_proxyPool[tempVar_3.proxyId1];
            coordY_5 = m_proxyPool[tempVar_3.proxyId2];
            tempVar_2++;
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
         var proxy_6:uint = 0;
         var index_7:uint = 0;
         var tempVar_12:b2Proxy = null;
         var coordX_4:Array = new Array();
         var coordY_5:Array = new Array();
         ComputeBounds(coordX_4,coordY_5,param1);
         var tempVar_8:Array = [proxy_6];
         var tempVar_9:Array = [index_7];
         Query(tempVar_8,tempVar_9,coordX_4[0],coordY_5[0],m_bounds[0],2 * m_proxyCount,0);
         Query(tempVar_8,tempVar_9,coordX_4[1],coordY_5[1],m_bounds[1],2 * m_proxyCount,1);
         var tempVar_10:int = 0;
         var tempVar_11:int = 0;
         while(tempVar_11 < m_queryResultCount && tempVar_10 < param3)
         {
            tempVar_12 = m_proxyPool[m_queryResults[tempVar_11]];
            param2[tempVar_11] = tempVar_12.userData;
            tempVar_11++;
            tempVar_10++;
         }
         m_queryResultCount = 0;
         IncrementTimeStamp();
         return tempVar_10;
      }
      
      private function RemoveBufferedPair(param1:uint, param2:uint) : *
      {
         var tempVar_3:b2Pair = m_pairManager.Find(param1,param2);
         if(tempVar_3 == null)
         {
            return;
         }
         if(tempVar_3.IsBuffered() == false)
         {
            if(m_pairBufferCount < b2Settings.b2_maxPairs)
            {
               tempVar_3.SetBuffered();
               m_pairBuffer[m_pairBufferCount].proxyId1 = tempVar_3.proxyId1;
               m_pairBuffer[m_pairBufferCount].proxyId2 = tempVar_3.proxyId2;
               ++m_pairBufferCount;
            }
         }
         tempVar_3.SetRemoved();
      }
      
      public function Flush() : *
      {
         var tempVar_1:int = 0;
         var tempVar_3:b2Pair = null;
         var coordX_4:b2Proxy = null;
         var coordY_5:b2Proxy = null;
         var tempVar_2:int = 0;
         tempVar_1 = 0;
         while(tempVar_1 < m_pairBufferCount)
         {
            tempVar_3 = m_pairManager.Find(m_pairBuffer[tempVar_1].proxyId1,m_pairBuffer[tempVar_1].proxyId2);
            coordX_4 = m_proxyPool[tempVar_3.proxyId1];
            coordY_5 = m_proxyPool[tempVar_3.proxyId2];
            if(tempVar_3.IsRemoved())
            {
               if(tempVar_3.IsReceived())
               {
                  m_pairCallback.PairRemoved(coordX_4.userData,coordY_5.userData,tempVar_3.userData);
               }
               m_pairBuffer[tempVar_2].proxyId1 = tempVar_3.proxyId1;
               m_pairBuffer[tempVar_2].proxyId2 = tempVar_3.proxyId2;
               tempVar_2++;
            }
            else
            {
               tempVar_3.ClearBuffered();
               if(tempVar_3.IsReceived() == false)
               {
                  tempVar_3.userData = m_pairCallback.PairAdded(coordX_4.userData,coordY_5.userData);
                  tempVar_3.SetReceived();
               }
            }
            tempVar_1++;
         }
         tempVar_1 = 0;
         while(tempVar_1 < tempVar_2)
         {
            m_pairManager.Remove(m_pairBuffer[tempVar_1].proxyId1,m_pairBuffer[tempVar_1].proxyId2);
            tempVar_1++;
         }
         m_pairBufferCount = 0;
      }
      
      private function IncrementTimeStamp() : *
      {
         var tempVar_1:uint = 0;
         if(m_timeStamp == b2Settings.USHRT_MAX)
         {
            tempVar_1 = 0;
            while(tempVar_1 < b2Settings.b2_maxProxies)
            {
               m_proxyPool[tempVar_1].timeStamp = 0;
               tempVar_1++;
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
         var tempVar_11:int = 0;
         var tempVar_12:int = 0;
         var tempVar_13:b2Proxy = null;
         var tempVar_8:uint = BinarySearch(param5,param6,param3);
         var tempVar_9:uint = BinarySearch(param5,param6,param4);
         var tempVar_10:uint = tempVar_8;
         while(tempVar_10 < tempVar_9)
         {
            if(param5[tempVar_10].IsLower())
            {
               IncrementOverlapCount(param5[tempVar_10].proxyId);
            }
            tempVar_10++;
         }
         if(tempVar_8 > 0)
         {
            tempVar_11 = int(tempVar_8 - 1);
            tempVar_12 = int(param5[tempVar_11].stabbingCount);
            while(tempVar_12)
            {
               if(param5[tempVar_11].IsLower())
               {
                  tempVar_13 = m_proxyPool[param5[tempVar_11].proxyId];
                  if(tempVar_8 <= tempVar_13.upperBounds[param7])
                  {
                     IncrementOverlapCount(param5[tempVar_11].proxyId);
                     tempVar_12--;
                  }
               }
               tempVar_11--;
            }
         }
         param1[0] = tempVar_8;
         param2[0] = tempVar_9;
      }
      
      private function ComputeBounds(param1:Array, param2:Array, param3:b2AABB) : *
      {
         var coordX_4:Number = param3.lowerCorner.x;
         var coordY_5:Number = param3.lowerCorner.y;
         coordX_4 = b2Math.b2Min(coordX_4,m_worldAABB.upperCorner.x);
         coordY_5 = b2Math.b2Min(coordY_5,m_worldAABB.upperCorner.y);
         coordX_4 = b2Math.b2Max(coordX_4,m_worldAABB.lowerCorner.x);
         coordY_5 = b2Math.b2Max(coordY_5,m_worldAABB.lowerCorner.y);
         var proxy_6:Number = param3.upperCorner.x;
         var index_7:Number = param3.upperCorner.y;
         proxy_6 = b2Math.b2Min(proxy_6,m_worldAABB.upperCorner.x);
         index_7 = b2Math.b2Min(index_7,m_worldAABB.upperCorner.y);
         proxy_6 = b2Math.b2Max(proxy_6,m_worldAABB.lowerCorner.x);
         index_7 = b2Math.b2Max(index_7,m_worldAABB.lowerCorner.y);
         param1[0] = uint(m_quantizationFactor.x * (coordX_4 - m_worldAABB.lowerCorner.x)) & b2Settings.USHRT_MAX - 1;
         param2[0] = uint(m_quantizationFactor.x * (proxy_6 - m_worldAABB.lowerCorner.x)) & 0xFFFF | 1;
         param1[1] = uint(m_quantizationFactor.y * (coordY_5 - m_worldAABB.lowerCorner.y)) & b2Settings.USHRT_MAX - 1;
         param2[1] = uint(m_quantizationFactor.y * (index_7 - m_worldAABB.lowerCorner.y)) & 0xFFFF | 1;
      }
      
      public function ShouldCollide(param1:int, param2:int) : Boolean
      {
         var tempVar_3:b2Proxy = m_proxyPool[param1];
         var coordX_4:b2Proxy = m_proxyPool[param2];
         if(tempVar_3.groupIndex == coordX_4.groupIndex && tempVar_3.groupIndex != 0)
         {
            return tempVar_3.groupIndex > 0;
         }
         return (tempVar_3.maskBits & coordX_4.categoryBits) != 0 && (tempVar_3.categoryBits & coordX_4.maskBits) != 0;
      }
      
      public function CreateProxy(param1:b2AABB, param2:int, param3:int, param4:int, param5:*) : uint
      {
         var proxy_6:uint = 0;
         var index_7:b2Proxy = null;
         var coordX_14:Array = null;
         var coordY_15:uint = 0;
         var proxy_16:uint = 0;
         var index_17:Array = null;
         var tempVar_18:Array = null;
         var tempVar_19:Array = null;
         var tempVar_20:int = 0;
         var tempVar_21:int = 0;
         var tempVar_22:b2Bound = null;
         var tempVar_23:b2Bound = null;
         var coordX_24:int = 0;
         var coordY_25:b2Proxy = null;
         var proxy_26:b2Pair = null;
         if(m_freeProxy == b2Pair.b2_nullProxy)
         {
            return b2Pair.b2_nullProxy;
         }
         Flush();
         var tempVar_8:uint = m_freeProxy;
         index_7 = m_proxyPool[tempVar_8];
         m_freeProxy = index_7.GetNext();
         index_7.overlapCount = 0;
         index_7.groupIndex = param2;
         index_7.categoryBits = param3;
         index_7.maskBits = param4;
         index_7.userData = param5;
         var tempVar_9:uint = uint(2 * m_proxyCount);
         var tempVar_10:Array = new Array();
         var tempVar_11:Array = new Array();
         ComputeBounds(tempVar_10,tempVar_11,param1);
         var tempVar_12:int = 0;
         while(tempVar_12 < 2)
         {
            coordX_14 = m_bounds[tempVar_12];
            index_17 = [coordY_15];
            tempVar_18 = [proxy_16];
            Query(index_17,tempVar_18,tempVar_10[tempVar_12],tempVar_11[tempVar_12],coordX_14,tempVar_9,tempVar_12);
            coordY_15 = uint(index_17[0]);
            proxy_16 = uint(tempVar_18[0]);
            tempVar_19 = new Array();
            tempVar_21 = tempVar_9 - proxy_16;
            tempVar_20 = 0;
            while(tempVar_20 < tempVar_21)
            {
               tempVar_19[tempVar_20] = new b2Bound();
               tempVar_22 = tempVar_19[tempVar_20];
               tempVar_23 = coordX_14[proxy_16 + tempVar_20];
               tempVar_22.value = tempVar_23.value;
               tempVar_22.proxyId = tempVar_23.proxyId;
               tempVar_22.stabbingCount = tempVar_23.stabbingCount;
               tempVar_20++;
            }
            tempVar_21 = int(tempVar_19.length);
            coordX_24 = proxy_16 + 2;
            tempVar_20 = 0;
            while(tempVar_20 < tempVar_21)
            {
               tempVar_23 = tempVar_19[tempVar_20];
               tempVar_22 = coordX_14[coordX_24 + tempVar_20];
               tempVar_22.value = tempVar_23.value;
               tempVar_22.proxyId = tempVar_23.proxyId;
               tempVar_22.stabbingCount = tempVar_23.stabbingCount;
               tempVar_20++;
            }
            tempVar_19 = new Array();
            tempVar_21 = proxy_16 - coordY_15;
            tempVar_20 = 0;
            while(tempVar_20 < tempVar_21)
            {
               tempVar_19[tempVar_20] = new b2Bound();
               tempVar_22 = tempVar_19[tempVar_20];
               tempVar_23 = coordX_14[coordY_15 + tempVar_20];
               tempVar_22.value = tempVar_23.value;
               tempVar_22.proxyId = tempVar_23.proxyId;
               tempVar_22.stabbingCount = tempVar_23.stabbingCount;
               tempVar_20++;
            }
            tempVar_21 = int(tempVar_19.length);
            coordX_24 = coordY_15 + 1;
            tempVar_20 = 0;
            while(tempVar_20 < tempVar_21)
            {
               tempVar_23 = tempVar_19[tempVar_20];
               tempVar_22 = coordX_14[coordX_24 + tempVar_20];
               tempVar_22.value = tempVar_23.value;
               tempVar_22.proxyId = tempVar_23.proxyId;
               tempVar_22.stabbingCount = tempVar_23.stabbingCount;
               tempVar_20++;
            }
            proxy_16++;
            coordX_14[coordY_15].value = tempVar_10[tempVar_12];
            coordX_14[coordY_15].proxyId = tempVar_8;
            coordX_14[proxy_16].value = tempVar_11[tempVar_12];
            coordX_14[proxy_16].proxyId = tempVar_8;
            coordX_14[coordY_15].stabbingCount = coordY_15 == 0 ? 0 : coordX_14[coordY_15 - 1].stabbingCount;
            coordX_14[proxy_16].stabbingCount = coordX_14[proxy_16 - 1].stabbingCount;
            proxy_6 = coordY_15;
            while(proxy_6 < proxy_16)
            {
               ++coordX_14[proxy_6].stabbingCount;
               proxy_6++;
            }
            proxy_6 = coordY_15;
            while(proxy_6 < tempVar_9 + 2)
            {
               coordY_25 = m_proxyPool[coordX_14[proxy_6].proxyId];
               if(coordX_14[proxy_6].IsLower())
               {
                  coordY_25.lowerBounds[tempVar_12] = proxy_6;
               }
               else
               {
                  coordY_25.upperBounds[tempVar_12] = proxy_6;
               }
               proxy_6++;
            }
            tempVar_12++;
         }
         ++m_proxyCount;
         var tempVar_13:int = 0;
         while(tempVar_13 < m_queryResultCount)
         {
            if(ShouldCollide(tempVar_8,m_queryResults[tempVar_13]) != false)
            {
               proxy_26 = m_pairManager.Add(tempVar_8,m_queryResults[tempVar_13]);
               if(proxy_26 != null)
               {
                  proxy_26.userData = m_pairCallback.PairAdded(index_7.userData,m_proxyPool[m_queryResults[tempVar_13]].userData);
                  proxy_26.SetReceived();
               }
            }
            tempVar_13++;
         }
         m_queryResultCount = 0;
         IncrementTimeStamp();
         return tempVar_8;
      }
      
      public function DestroyProxy(param1:uint) : *
      {
         var proxy_6:Array = null;
         var index_7:uint = 0;
         var tempVar_8:uint = 0;
         var tempVar_9:uint = 0;
         var tempVar_10:uint = 0;
         var tempVar_11:Array = null;
         var tempVar_12:int = 0;
         var tempVar_13:int = 0;
         var coordX_14:b2Bound = null;
         var coordY_15:b2Bound = null;
         var proxy_16:int = 0;
         var index_17:uint = 0;
         var tempVar_18:int = 0;
         var tempVar_19:b2Proxy = null;
         var tempVar_20:b2Proxy = null;
         var tempVar_21:* = undefined;
         if(param1 == b2Pair.b2_nullProxy)
         {
            return;
         }
         Flush();
         var tempVar_2:b2Proxy = m_proxyPool[param1];
         var tempVar_3:uint = uint(2 * m_proxyCount);
         var coordX_4:int = 0;
         while(coordX_4 < 2)
         {
            proxy_6 = m_bounds[coordX_4];
            index_7 = uint(tempVar_2.lowerBounds[coordX_4]);
            tempVar_8 = uint(tempVar_2.upperBounds[coordX_4]);
            tempVar_9 = uint(proxy_6[index_7].value);
            tempVar_10 = uint(proxy_6[tempVar_8].value);
            tempVar_11 = new Array();
            tempVar_13 = tempVar_8 - index_7 - 1;
            tempVar_12 = 0;
            while(tempVar_12 < tempVar_13)
            {
               tempVar_11[tempVar_12] = new b2Bound();
               coordX_14 = tempVar_11[tempVar_12];
               coordY_15 = proxy_6[index_7 + 1 + tempVar_12];
               coordX_14.value = coordY_15.value;
               coordX_14.proxyId = coordY_15.proxyId;
               coordX_14.stabbingCount = coordY_15.stabbingCount;
               tempVar_12++;
            }
            tempVar_13 = int(tempVar_11.length);
            proxy_16 = int(index_7);
            tempVar_12 = 0;
            while(tempVar_12 < tempVar_13)
            {
               coordY_15 = tempVar_11[tempVar_12];
               coordX_14 = proxy_6[proxy_16 + tempVar_12];
               coordX_14.value = coordY_15.value;
               coordX_14.proxyId = coordY_15.proxyId;
               coordX_14.stabbingCount = coordY_15.stabbingCount;
               tempVar_12++;
            }
            tempVar_11 = new Array();
            tempVar_13 = tempVar_3 - tempVar_8 - 1;
            tempVar_12 = 0;
            while(tempVar_12 < tempVar_13)
            {
               tempVar_11[tempVar_12] = new b2Bound();
               coordX_14 = tempVar_11[tempVar_12];
               coordY_15 = proxy_6[tempVar_8 + 1 + tempVar_12];
               coordX_14.value = coordY_15.value;
               coordX_14.proxyId = coordY_15.proxyId;
               coordX_14.stabbingCount = coordY_15.stabbingCount;
               tempVar_12++;
            }
            tempVar_13 = int(tempVar_11.length);
            proxy_16 = int(tempVar_8 - 1);
            tempVar_12 = 0;
            while(tempVar_12 < tempVar_13)
            {
               coordY_15 = tempVar_11[tempVar_12];
               coordX_14 = proxy_6[proxy_16 + tempVar_12];
               coordX_14.value = coordY_15.value;
               coordX_14.proxyId = coordY_15.proxyId;
               coordX_14.stabbingCount = coordY_15.stabbingCount;
               tempVar_12++;
            }
            tempVar_13 = tempVar_3 - 2;
            index_17 = index_7;
            while(index_17 < tempVar_13)
            {
               tempVar_19 = m_proxyPool[proxy_6[index_17].proxyId];
               if(proxy_6[index_17].IsLower())
               {
                  tempVar_19.lowerBounds[coordX_4] = index_17;
               }
               else
               {
                  tempVar_19.upperBounds[coordX_4] = index_17;
               }
               index_17++;
            }
            tempVar_13 = int(tempVar_8 - 1);
            tempVar_18 = int(index_7);
            while(tempVar_18 < tempVar_13)
            {
               --proxy_6[tempVar_18].stabbingCount;
               tempVar_18++;
            }
            Query(new Array(),new Array(),tempVar_9,tempVar_10,proxy_6,tempVar_3 - 2,coordX_4);
            coordX_4++;
         }
         var coordY_5:int = 0;
         while(coordY_5 < m_queryResultCount)
         {
            tempVar_20 = m_proxyPool[m_queryResults[coordY_5]];
            tempVar_21 = m_pairManager.Remove(param1,m_queryResults[coordY_5]);
            m_pairCallback.PairRemoved(tempVar_2.userData,tempVar_20.userData,tempVar_21);
            coordY_5++;
         }
         m_queryResultCount = 0;
         IncrementTimeStamp();
         tempVar_2.userData = null;
         tempVar_2.overlapCount = b2_invalid;
         tempVar_2.SetNext(m_freeProxy);
         m_freeProxy = param1;
         --m_proxyCount;
      }
      
      private function TestOverlap(param1:b2Proxy, param2:b2Proxy) : Boolean
      {
         var coordX_4:Array = null;
         var tempVar_3:int = 0;
         while(tempVar_3 < 2)
         {
            coordX_4 = m_bounds[tempVar_3];
            if(coordX_4[param1.lowerBounds[tempVar_3]].value > coordX_4[param2.upperBounds[tempVar_3]].value)
            {
               return false;
            }
            if(coordX_4[param1.upperBounds[tempVar_3]].value < coordX_4[param2.lowerBounds[tempVar_3]].value)
            {
               return false;
            }
            tempVar_3++;
         }
         return true;
      }
      
      public function Validate() : *
      {
         var tempVar_1:b2Pair = null;
         var tempVar_2:b2Proxy = null;
         var tempVar_3:b2Proxy = null;
         var coordX_4:Boolean = false;
         var tempVar_10:b2Bound = null;
         var tempVar_11:uint = 0;
         var tempVar_12:uint = 0;
         var tempVar_13:uint = 0;
         var coordX_14:b2Bound = null;
         var coordY_15:uint = 0;
         var proxy_16:b2Proxy = null;
         var index_17:b2Bound = null;
         var coordY_5:int = 0;
         while(coordY_5 < 2)
         {
            tempVar_10 = m_bounds[coordY_5];
            tempVar_11 = uint(2 * m_proxyCount);
            tempVar_12 = 0;
            tempVar_13 = 0;
            while(tempVar_13 < tempVar_11)
            {
               coordX_14 = tempVar_10[tempVar_13];
               if(tempVar_13 > 0)
               {
                  index_17 = tempVar_10[tempVar_13 - 1];
               }
               coordY_15 = coordX_14.proxyId;
               proxy_16 = m_proxyPool[coordX_14.proxyId];
               if(coordX_14.IsLower() == true)
               {
                  tempVar_12++;
               }
               else
               {
                  tempVar_12--;
               }
               tempVar_13++;
            }
            coordY_5++;
         }
         var proxy_6:Array = m_pairManager.GetPairs();
         var index_7:uint = uint(m_pairManager.GetCount());
         m_pairBuffer.sortOn(["proxyId1","proxyId2"],Array.NUMERIC);
         var tempVar_8:int = 0;
         while(tempVar_8 < m_pairBufferCount)
         {
            if(tempVar_8 > 0)
            {
            }
            tempVar_1 = m_pairManager.Find(m_pairBuffer[tempVar_8].proxyId1,m_pairBuffer[tempVar_8].proxyId2);
            tempVar_2 = m_proxyPool[tempVar_1.proxyId1];
            tempVar_3 = m_proxyPool[tempVar_1.proxyId2];
            coordX_4 = TestOverlap(tempVar_2,tempVar_3);
            if(tempVar_1.IsRemoved() == true)
            {
            }
            tempVar_8++;
         }
         var tempVar_9:int = 0;
         while(tempVar_9 < index_7)
         {
            tempVar_1 = proxy_6[tempVar_9];
            tempVar_2 = m_proxyPool[tempVar_1.proxyId1];
            tempVar_3 = m_proxyPool[tempVar_1.proxyId2];
            coordX_4 = TestOverlap(tempVar_2,tempVar_3);
            if(tempVar_1.IsBuffered())
            {
               if(tempVar_1.IsRemoved() == true)
               {
               }
            }
            tempVar_9++;
         }
      }
      
      private function IncrementOverlapCount(param1:uint) : *
      {
         var tempVar_2:b2Proxy = m_proxyPool[param1];
         if(tempVar_2.timeStamp < m_timeStamp)
         {
            tempVar_2.timeStamp = m_timeStamp;
            tempVar_2.overlapCount = 1;
         }
         else
         {
            tempVar_2.overlapCount = 2;
            m_queryResults[m_queryResultCount] = param1;
            ++m_queryResultCount;
         }
      }
      
      public function InRange(param1:b2AABB) : Boolean
      {
         var tempVar_2:Number = NaN;
         var tempVar_3:Number = NaN;
         var coordX_4:Number = NaN;
         var coordY_5:Number = NaN;
         tempVar_2 = param1.lowerCorner.x;
         tempVar_3 = param1.lowerCorner.y;
         tempVar_2 -= m_worldAABB.upperCorner.x;
         tempVar_3 -= m_worldAABB.upperCorner.y;
         coordX_4 = m_worldAABB.lowerCorner.x;
         coordY_5 = m_worldAABB.lowerCorner.y;
         coordX_4 -= param1.upperCorner.x;
         coordY_5 -= param1.upperCorner.y;
         tempVar_2 = b2Math.b2Max(tempVar_2,coordX_4);
         tempVar_3 = b2Math.b2Max(tempVar_3,coordY_5);
         return b2Math.b2Max(tempVar_2,tempVar_3) < 0;
      }
      
      private function AddBufferedPair(param1:uint, param2:uint) : *
      {
         if(ShouldCollide(param1,param2) == false)
         {
            return;
         }
         var tempVar_3:b2Pair = m_pairManager.Add(param1,param2);
         if(tempVar_3 == null)
         {
            return;
         }
         if(tempVar_3.IsBuffered() == false)
         {
            if(m_pairBufferCount < b2Settings.b2_maxPairs)
            {
               tempVar_3.SetBuffered();
               m_pairBuffer[m_pairBufferCount].proxyId1 = tempVar_3.proxyId1;
               m_pairBuffer[m_pairBufferCount].proxyId2 = tempVar_3.proxyId2;
               ++m_pairBufferCount;
            }
         }
         tempVar_3.ClearRemoved();
      }
      
      public function MoveProxy(param1:uint, param2:b2AABB) : *
      {
         var tempVar_3:uint = 0;
         var coordX_4:b2Bound = null;
         var coordY_5:b2Bound = null;
         var proxy_6:b2Bound = null;
         var index_7:uint = 0;
         var tempVar_8:b2Proxy = null;
         var coordX_14:Array = null;
         var coordY_15:uint = 0;
         var proxy_16:uint = 0;
         var index_17:uint = 0;
         var tempVar_18:uint = 0;
         var tempVar_19:int = 0;
         var tempVar_20:int = 0;
         var tempVar_21:uint = 0;
         var tempVar_22:b2Proxy = null;
         if(param1 == b2Pair.b2_nullProxy || b2Settings.b2_maxProxies <= param1)
         {
            return;
         }
         if(param2.IsValid() == false)
         {
            return;
         }
         var tempVar_9:uint = uint(2 * m_proxyCount);
         var tempVar_10:b2Proxy = m_proxyPool[param1];
         var tempVar_11:Array = new Array();
         var tempVar_12:Array = new Array();
         ComputeBounds(tempVar_11,tempVar_12,param2);
         var tempVar_13:uint = 0;
         while(tempVar_13 < 2)
         {
            coordX_14 = m_bounds[tempVar_13];
            coordY_15 = uint(tempVar_10.lowerBounds[tempVar_13]);
            proxy_16 = uint(tempVar_10.upperBounds[tempVar_13]);
            index_17 = uint(tempVar_11[tempVar_13]);
            tempVar_18 = uint(tempVar_12[tempVar_13]);
            tempVar_19 = index_17 - coordX_14[coordY_15].value;
            tempVar_20 = tempVar_18 - coordX_14[proxy_16].value;
            coordX_14[coordY_15].value = index_17;
            coordX_14[proxy_16].value = tempVar_18;
            if(tempVar_19 < 0)
            {
               tempVar_3 = coordY_15;
               while(tempVar_3 > 0 && index_17 < coordX_14[tempVar_3 - 1].value)
               {
                  coordX_4 = coordX_14[tempVar_3];
                  coordY_5 = coordX_14[tempVar_3 - 1];
                  tempVar_21 = coordY_5.proxyId;
                  tempVar_22 = m_proxyPool[coordY_5.proxyId];
                  ++coordY_5.stabbingCount;
                  if(coordY_5.IsUpper() == true)
                  {
                     if(TestOverlap(tempVar_10,tempVar_22))
                     {
                        AddBufferedPair(param1,tempVar_21);
                     }
                     ++tempVar_22.upperBounds[tempVar_13];
                     ++coordX_4.stabbingCount;
                  }
                  else
                  {
                     ++tempVar_22.lowerBounds[tempVar_13];
                     --coordX_4.stabbingCount;
                  }
                  --tempVar_10.lowerBounds[tempVar_13];
                  coordX_4.Swap(coordY_5);
                  tempVar_3--;
               }
            }
            if(tempVar_20 > 0)
            {
               tempVar_3 = proxy_16;
               while(tempVar_3 < tempVar_9 - 1 && coordX_14[tempVar_3 + 1].value <= tempVar_18)
               {
                  coordX_4 = coordX_14[tempVar_3];
                  proxy_6 = coordX_14[tempVar_3 + 1];
                  index_7 = proxy_6.proxyId;
                  tempVar_8 = m_proxyPool[index_7];
                  ++proxy_6.stabbingCount;
                  if(proxy_6.IsLower() == true)
                  {
                     if(TestOverlap(tempVar_10,tempVar_8))
                     {
                        AddBufferedPair(param1,index_7);
                     }
                     --tempVar_8.lowerBounds[tempVar_13];
                     ++coordX_4.stabbingCount;
                  }
                  else
                  {
                     --tempVar_8.upperBounds[tempVar_13];
                     --coordX_4.stabbingCount;
                  }
                  ++tempVar_10.upperBounds[tempVar_13];
                  coordX_4.Swap(proxy_6);
                  tempVar_3++;
               }
            }
            if(tempVar_19 > 0)
            {
               tempVar_3 = coordY_15;
               while(tempVar_3 < tempVar_9 - 1 && coordX_14[tempVar_3 + 1].value <= index_17)
               {
                  coordX_4 = coordX_14[tempVar_3];
                  proxy_6 = coordX_14[tempVar_3 + 1];
                  index_7 = proxy_6.proxyId;
                  tempVar_8 = m_proxyPool[index_7];
                  --proxy_6.stabbingCount;
                  if(proxy_6.IsUpper())
                  {
                     RemoveBufferedPair(param1,index_7);
                     --tempVar_8.upperBounds[tempVar_13];
                     --coordX_4.stabbingCount;
                  }
                  else
                  {
                     --tempVar_8.lowerBounds[tempVar_13];
                     ++coordX_4.stabbingCount;
                  }
                  ++tempVar_10.lowerBounds[tempVar_13];
                  coordX_4.Swap(proxy_6);
                  tempVar_3++;
               }
            }
            if(tempVar_20 < 0)
            {
               tempVar_3 = proxy_16;
               while(tempVar_3 > 0 && tempVar_18 < coordX_14[tempVar_3 - 1].value)
               {
                  coordX_4 = coordX_14[tempVar_3];
                  coordY_5 = coordX_14[tempVar_3 - 1];
                  tempVar_21 = coordY_5.proxyId;
                  tempVar_22 = m_proxyPool[tempVar_21];
                  --coordY_5.stabbingCount;
                  if(coordY_5.IsLower() == true)
                  {
                     RemoveBufferedPair(param1,tempVar_21);
                     ++tempVar_22.lowerBounds[tempVar_13];
                     --coordX_4.stabbingCount;
                  }
                  else
                  {
                     ++tempVar_22.upperBounds[tempVar_13];
                     ++coordX_4.stabbingCount;
                  }
                  --tempVar_10.upperBounds[tempVar_13];
                  coordX_4.Swap(coordY_5);
                  tempVar_3--;
               }
            }
            tempVar_13++;
         }
      }
   }
}

