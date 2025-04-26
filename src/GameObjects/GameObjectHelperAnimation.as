package GameObjects
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class GameObjectHelperAnimation
   {
      public var go:GameObject;
      
      public function GameObjectHelperAnimation(param1:GameObject)
      {
         super();
         go = param1;
      }
      
      public function update() : void
      {
      }
      
      public function setFrame(param1:BitmapData) : void
      {
         Bitmap(go.obj).bitmapData = param1;
         go.baseWidth = param1.width;
         go.baseHeight = param1.height;
      }
   }
}

