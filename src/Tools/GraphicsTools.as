package Tools
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class GraphicsTools
   {
      public function GraphicsTools()
      {
         super();
      }
      
      public static function createFilledSprite(param1:int, param2:int, param3:int) : Bitmap
      {
         var _loc4_:BitmapData = new BitmapData(param1,param2,false,param3);
         return new Bitmap(_loc4_);
      }
   }
}

