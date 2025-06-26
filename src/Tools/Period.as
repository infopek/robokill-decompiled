package Tools
{
   public class Period
   {
      public function Period()
      {
         super();
      }

      /**
       * Generates a value between 0 and 1 that follows a rising and falling waveform across a cycle.
       * 
       * @param time       Current time or counter value (e.g., frame count)
       * @param period     Length of the full period (e.g., 120 frames)
       * @param riseStart  Time when the rise phase starts (inclusive)
       * @param riseEnd    Time when the rise phase ends and peak is reached
       * @param fallStart  Time when falling begins (remains at 1 until this point)
       * @param fallEnd    Time when the value falls back to 0
       */
      public static function getPeriod(time:int, period:int, riseStart:int, riseEnd:int, fallStart:int, fallEnd:int):Number
      {
         var phaseOffset:int = time % period;

         if (phaseOffset < riseStart)
         {
            return 0;
         }

         if (phaseOffset < riseEnd)
         {
            return Interpolation.linearInterpolate(0, 1, Interpolation.fromTo(phaseOffset, riseStart, riseEnd));
         }

         if (phaseOffset < fallStart)
         {
            return 1;
         }

         return Interpolation.linearInterpolateLock(1, 0, Interpolation.fromTo(phaseOffset, fallStart, fallEnd));
      }
   }
}
