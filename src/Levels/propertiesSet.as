package Levels
{
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import Objects.TreasureChest;
   import flash.display.Bitmap;
   
   public class propertiesSet
   {
      public static var levels:int = 18;
      
      public function propertiesSet()
      {
         super();
      }
      
      public function init(param1:int, param2:GameScene) : Array
      {
         var _loc4_:GameObject = null;
         var _loc3_:Array = new Array();
         if(param1 == 0)
         {
            createLevel0(_loc3_,param2);
         }
         return _loc3_;
      }
      
      public function getClasses(param1:int) : Array
      {
         var _loc2_:Array = new Array();
         if(param1 == 0)
         {
            return [TreasureChest];
         }
         return _loc2_;
      }
      
      public function createObject(param1:Array, param2:GameScene) : GameObject
      {
         var _loc3_:GameObject = null;
         if(param1.length > 0)
         {
            _loc3_ = new param1[0](param2,param1[1],param1[2]);
            if(param1[3] != 0)
            {
               if(_loc3_["images"])
               {
                  Bitmap(_loc3_.obj).bitmapData = _loc3_["images"][param1[3]];
                  _loc3_.baseWidth = _loc3_.obj.width;
                  _loc3_.baseHeight = _loc3_.obj.height;
                  _loc3_.animFrame = param1[3];
               }
            }
            if(param1.length > 4)
            {
               _loc3_.baseAlpha = param1[4];
            }
            if(param1.length > 5)
            {
               _loc3_.baseRotation = param1[5];
            }
            if(param1.length > 7)
            {
               _loc3_.baseScaleX = param1[6];
               _loc3_.baseScaleY = param1[7];
            }
            if(param1.length > 8)
            {
               _loc3_.baseBrightness = param1[8];
            }
            if(param1.length > 9)
            {
               _loc3_.additive = true;
            }
            return _loc3_;
         }
         return null;
      }
      
      internal function createLevel0(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[TreasureChest,403.3125,295.125,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
   }
}

