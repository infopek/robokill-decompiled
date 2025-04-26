package Weapons
{
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import GlobalSetup.Embeds;
   import Scenes.MainScene;
   import Tools.Interpolation;
   import Tools.Random;
   import flash.display.Bitmap;
   
   public class ItemBase extends InventoryItem
   {
      public var attribute:int;
      
      public function ItemBase()
      {
         super();
         attribute = Random.randInt(attributeLow(),currentAttributeHigh());
         displayLevel();
      }
      
      public function serializeFields() : Array
      {
         return ["attribute"];
      }
      
      public function displayLevel(param1:Number = -999) : int
      {
         if(param1 < 0)
         {
            param1 = attribute;
         }
         var _loc2_:Number = Number(param1 / attributeHigh()) * 7;
         var _loc3_:int = int(_loc2_);
         return Interpolation.lockValueInt(_loc3_,0,7);
      }
      
      public function description() : String
      {
         return "";
      }
      
      public function currentAttributeHigh() : Number
      {
         var _loc1_:int = minimumEpisode();
         if(GameScene.currentScene is MainScene)
         {
            return Interpolation.linearInterpolateLock(attributeLow() * 1.2,attributeHigh(),Interpolation.fromTo(MainScene(GameScene.currentScene).currentEpisode - _loc1_,0,9 - _loc1_));
         }
         return attributeLow();
      }
      
      public function maxLevelCurrently() : int
      {
         return displayLevel(currentAttributeHigh());
      }
      
      override public function getGameObject(param1:GameScene) : GameObject
      {
         var _loc2_:Bitmap = new (icon())();
         var _loc3_:Bitmap = new Bitmap(Embeds.itemLevel[displayLevel()]);
         _loc3_.x = _loc2_.width - _loc3_.width;
         _loc2_.bitmapData.draw(_loc3_,_loc3_.transform.matrix);
         return new GameObject(param1,_loc2_,"AfterTextLayer",0,0);
      }
      
      public function attributeCost() : int
      {
         return 0;
      }
      
      override public function getText() : Array
      {
         return [["<ORANGE>ITEM: ","<ORANGE>" + name()],["",""],[description(),""],[description2(),""],["",""],["<ORANGE>VALUE: ","<ORANGE>$" + value()],[units(),modifyAttribute(String(attribute))]];
      }
      
      public function minimumEpisode() : int
      {
         return 0;
      }
      
      public function units() : String
      {
         return "";
      }
      
      public function modifyAttribute(param1:String) : String
      {
         return param1;
      }
      
      override public function _value() : int
      {
         return attributeCost() * attribute;
      }
      
      public function description2() : String
      {
         return "";
      }
      
      public function icon() : Class
      {
         return null;
      }
      
      public function attributeHigh() : int
      {
         return 0;
      }
      
      public function attributeLow() : int
      {
         return 0;
      }
   }
}

