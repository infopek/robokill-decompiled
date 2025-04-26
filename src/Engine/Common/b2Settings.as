package Engine.Common
{
   import Engine.Common.Math.b2Vec2;
   
   public class b2Settings
   {
      public static const USHRT_MAX:int = 65535;
      
      public static const b2_pi:Number = Math.PI;
      
      public static const b2_lengthUnitsPerMeter:Number = 1;
      
      public static const b2_massUnitsPerKilogram:Number = 1;
      
      public static const b2_timeUnitsPerSecond:Number = 1;
      
      public static const b2_maxManifoldPoints:int = 2;
      
      public static const b2_maxShapesPerBody:int = 64;
      
      public static const b2_maxPolyVertices:int = 8;
      
      public static const b2_maxProxies:int = 1024;
      
      public static const b2_maxPairs:int = 8 * b2_maxProxies;
      
      public static const b2_linearSlop:Number = 0.005 * b2_lengthUnitsPerMeter;
      
      public static const b2_angularSlop:Number = 2 / 180 * b2_pi;
      
      public static const b2_velocityThreshold:Number = 1 * b2_lengthUnitsPerMeter / b2_timeUnitsPerSecond;
      
      public static const b2_maxLinearCorrection:Number = 0.2 * b2_lengthUnitsPerMeter;
      
      public static const b2_maxAngularCorrection:Number = 8 / 180 * b2_pi;
      
      public static const b2_contactBaumgarte:Number = 0.2;
      
      public static const b2_timeToSleep:Number = 0.5 * b2_timeUnitsPerSecond;
      
      public static const b2_linearSleepTolerance:Number = 0.01 * b2_lengthUnitsPerMeter / b2_timeUnitsPerSecond;
      
      public static const b2_angularSleepTolerance:Number = 2 / 180 / b2_timeUnitsPerSecond;
      
      public function b2Settings()
      {
         super();
      }
      
      public static function b2Assert(param1:Boolean) : *
      {
         var _loc2_:b2Vec2 = null;
         if(!param1)
         {
            ++_loc2_.x;
         }
      }
   }
}

