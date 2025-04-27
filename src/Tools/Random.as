package Tools
{
   public class Random
   {
      public function Random()
      {
         super();
      }
      
      public static function randInt(param1:int, param2:int) : int
      {
         var _loc3_:Number = Math.random() - 0.001;
         return param1 + int(_loc3_ * (param2 - param1 + 1));
      }
      
      public static function randArrayElements(param1:Array, param2:int) : Array
      {
         var i:int = 0;
         var seen:Array = new Array();
         var result:Array = new Array();
         if(param1.length < param2)
         {
            return param1;
         }
         while(result.length < param2)
         {
            i = randInt(0,param1.length - 1);
            if(seen[i] != 1)
            {
               result.push(param1[i]);
               seen[i] = 1;
            }
         }
         return result;
      }
   }
}

