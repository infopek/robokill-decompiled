package Weapons
{
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import Layouts.Layout;
   import Layouts.LayoutOverhang;
   
   public class InventoryItem
   {
      public var gs:GameScene;
      
      public var inShop:Boolean = false;
      
      public function InventoryItem()
      {
         super();
      }
      
      public function getText() : Array
      {
         return null;
      }
      
      public function plural() : Boolean
      {
         return false;
      }
      
      public function getGameObject(param1:GameScene) : GameObject
      {
         return null;
      }
      
      public function properties() : String
      {
         return "";
      }
      
      public function value() : int
      {
         var _loc1_:int = 1;
         if(inShop)
         {
            _loc1_ *= 7;
         }
         return _loc1_ * _value();
      }
      
      public function name() : String
      {
         return "HURTINATOR 5000";
      }
      
      public function playerMinLevel() : int
      {
         return 0;
      }
      
      public function _value() : int
      {
         return 100;
      }
      
      public function pair(param1:String, param2:String) : Layout
      {
         if(param1 == "")
         {
            param1 = " ";
         }
         if(param2 == "")
         {
            param2 = " ";
         }
         return LayoutOverhang.Horiz([gs.text(param1,20),gs.text(param2,20)],8,120,0);
      }
      
      public function inGameImage() : Class
      {
         return null;
      }
   }
}

