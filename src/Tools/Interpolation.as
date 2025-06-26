package Tools
{
   import flash.geom.Point;

   public class Interpolation
   {
      public function Interpolation()
      {
         super();
      }

      public static function squareSquareInterpolateLock(from:Number, to:Number, t:Number):Number
      {
         return squareSquareInterpolate(from, to, lockValue(t, 0, 1));
      }

      public static function distanceToAngle(a:Number, b:Number):Number
      {
         while (abs(b - a) > 181)
         {
            b -= sgn(b - a) * 360;
         }
         return abs(b - a);
      }

      public static function squareInterpolate(from:Number, to:Number, t:Number):Number
      {
         return from + (to - from) * Math.pow(t, 2);
      }

      public static function fromTo(value:Number, from:Number, to:Number):Number
      {
         return (value - from) / (to - from);
      }

      public static function lockValue(value:Number, min:Number, max:Number):Number
      {
         if (value < min) return min;
         if (value > max) return max;
         return value;
      }

      public static function squareSquareInterpolate(from:Number, to:Number, t:Number):Number
      {
         t *= 2;
         if (t < 1)
         {
            return from + (to - from) * Math.pow(t, 2) / 2;
         }
         return from + (to - from) * (-Math.pow(t - 2, 2) + 2) / 2;
      }

      public static function sqrtInterpolate(from:Number, to:Number, t:Number):Number
      {
         return from + (to - from) * Math.sqrt(t);
      }

      public static function lockValueInt(value:int, min:int, max:int):int
      {
         if (value < min) return min;
         if (value > max) return max;
         return value;
      }

      public static function dampenInterpolateLock(from:Number, to:Number, t:Number):Number
      {
         return dampenInterpolate(from, to, lockValue(t, 0, 1));
      }

      public static function sqrtInterpolateLock(from:Number, to:Number, t:Number):Number
      {
         return sqrtInterpolate(from, to, lockValue(t, 0, 1));
      }

      public static function flipAngleLeft(angle:Number):Number
      {
         return angle - 360;
      }

      public static function linearInterpolateLock(from:Number, to:Number, t:Number):Number
      {
         return linearInterpolate(from, to, lockValue(t, 0, 1));
      }

      public static function squareInterpolateLock(from:Number, to:Number, t:Number):Number
      {
         return squareInterpolate(from, to, lockValue(t, 0, 1));
      }

      public static function fromToLock(value:Number, from:Number, to:Number):Number
      {
         return lockValue(fromTo(value, from, to), 0, 1);
      }

      public static function abs(value:Number):Number
      {
         return Math.abs(value);
      }

      public static function tendTowards(current:Number, target:Number, step:Number):Number
      {
         if (Math.abs(target - current) < Math.abs(step))
         {
            return target;
         }
         return target > current ? current + step : current - step;
      }

      public static function flipAngleRight(angle:Number):Number
      {
         return angle + 360;
      }

      public static function tendTowardsVector(x1:Number, y1:Number, x2:Number, y2:Number, maxDist:Number):Point
      {
         var dx:Number = x2 - x1;
         var dy:Number = y2 - y1;

         if (dx == 0 && dy == 0)
         {
            return new Point(x2, y2);
         }

         if (dx * dx + dy * dy <= maxDist * maxDist)
         {
            return new Point(x2, y2);
         }

         var angle:Number = Math.atan2(dy, dx);
         var newX:Number = x1 + Math.cos(angle) * maxDist;
         var newY:Number = y1 + Math.sin(angle) * maxDist;

         return new Point(newX, newY);
      }

      public static function directionToAngle(from:Number, to:Number):Number
      {
         while (abs(to - from) > 181)
         {
            to -= sgn(to - from) * 360;
         }
         return sgn(to - from);
      }

      public static function sgn(value:Number):Number
      {
         if (value < 0) return -1;
         if (value == 0) return 0;
         return 1;
      }

      public static function linearInterpolate(from:Number, to:Number, t:Number):Number
      {
         return from + (to - from) * t;
      }

      public static function tendTowardsAngle(current:Number, target:Number, step:Number):Number
      {
         while (abs(target - current) > 181)
         {
            target -= sgn(target - current) * 360;
         }
         return tendTowards(current, target, step);
      }

      public static function dampenInterpolate(from:Number, to:Number, t:Number):Number
      {
         t = Math.sqrt(t);
         var dampFactor:Number = 1 - Math.sin(15 * (Math.pow(t, 2.5) - 5) / Math.PI) * Math.pow(1 - t, 2) / 0.95;
         return from + dampFactor * (to - from);
      }
   }
}
