package Engine.Common
{
   import Engine.Common.Math.b2Vec2;

   public class b2Settings
   {
      // Max unsigned short value (16-bit)
      public static const USHRT_MAX:int = 65535;

      // Mathematical constant Pi
      public static const b2_pi:Number = Math.PI;

      // Unit conversion constants (can be changed for scaling)
      public static const b2_lengthUnitsPerMeter:Number = 1;
      public static const b2_massUnitsPerKilogram:Number = 1;
      public static const b2_timeUnitsPerSecond:Number = 1;

      // Physics engine internal limits
      public static const b2_maxManifoldPoints:int = 2;         // Max contact points between two convex shapes
      public static const b2_maxShapesPerBody:int = 64;         // Max shapes a single rigid body can have
      public static const b2_maxPolyVertices:int = 8;           // Max vertices in a convex polygon
      public static const b2_maxProxies:int = 1024;             // Max entries in broad-phase proxy list
      public static const b2_maxPairs:int = 8 * b2_maxProxies;  // Max collision pairs in broad-phase

      // Tolerances for collision and constraint resolution
      public static const b2_linearSlop:Number = 0.005 * b2_lengthUnitsPerMeter; // Small linear gap allowed between objects
      public static const b2_angularSlop:Number = 2 / 180 * b2_pi;               // Small angular gap allowed (in radians)

      // Velocity below which restitution is not applied
      public static const b2_velocityThreshold:Number = 1 * b2_lengthUnitsPerMeter / b2_timeUnitsPerSecond;

      // Maximum position correction allowed (to avoid overshooting)
      public static const b2_maxLinearCorrection:Number = 0.2 * b2_lengthUnitsPerMeter;
      public static const b2_maxAngularCorrection:Number = 8 / 180 * b2_pi;

      // Position constraint softness (Baumgarte stabilization factor)
      public static const b2_contactBaumgarte:Number = 0.2;

      // Sleep thresholds for performance (bodies at rest)
      public static const b2_timeToSleep:Number = 0.5 * b2_timeUnitsPerSecond;
      public static const b2_linearSleepTolerance:Number = 0.01 * b2_lengthUnitsPerMeter / b2_timeUnitsPerSecond;
      public static const b2_angularSleepTolerance:Number = 2 / 180 / b2_timeUnitsPerSecond;

      public function b2Settings()
      {
         super();
      }

      /**
       * Internal assertion utility. Forces a crash if condition is false.
       * Used for debugging only. Will crash on null access to _assertVec.
       */
      public static function b2Assert(condition:Boolean) : void
      {
         var _assertVec:b2Vec2 = null;
         if (!condition)
         {
            ++_assertVec.x;  // Intentionally causes a null reference crash
         }
      }
   }
}
