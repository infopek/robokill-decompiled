package Tools
{
   public class Random
   {
      public function Random()
      {
         super();
      }

      /**
       * Returns a random integer between min (inclusive) and max (inclusive).
       */
      public static function randInt(min:int, max:int):int
      {
         // Slight bias adjustment to avoid hitting upper bound
         var randBase:Number = Math.random() - 0.001;
         return min + int(randBase * (max - min + 1));
      }

      /**
       * Returns a new array containing 'count' unique random elements from the input array.
       */
      public static function randArrayElements(source:Array, count:int):Array
      {
         var seen:Array = [];
         var result:Array = [];

         if (source.length < count)
         {
            return source;
         }

         while (result.length < count)
         {
            var index:int = randInt(0, source.length - 1);

            if (seen[index] != 1)
            {
               result.push(source[index]);
               seen[index] = 1;
            }
         }

         return result;
      }
   }
}
