package ObjectBase
{
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import GlobalSetup.Embeds;
   import Objects.Cash;
   import Objects.PickupText;
   import Scenes.MainScene;
   import Weapons.WeaponGenerator;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class TreasureChestBase extends PickupBase
   {
      public var opened:Boolean = false;
      
      public var open:BitmapData;
      
      public var spawnEnemies:Boolean = true;
      
      public var giveWeapon:Boolean = false;
      
      public function TreasureChestBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function canOpen() : Boolean
      {
         if(MainScene(gs).countEnemies() == 0)
         {
            return true;
         }
         return false;
      }
      
      override public function _update() : void
      {
         var _loc1_:Boolean = !opened && MainScene(gs).lazyEnemiesCount > 0;
         var _loc2_:GameObject = helper.conditionallyCreateChild(Embeds.treasurelocked_png,"locked",_loc1_);
         if(distanceToPlayer() < 52)
         {
            pickup();
         }
         MainScene(gs).setPassable(logicalSquareX(),logicalSquareY(),false);
         if(!(_loc1_ || opened))
         {
            helper.fadeChildren(1,100);
         }
         else
         {
            helper.fadeChildren(0,10);
         }
         if(opened)
         {
            Bitmap(obj).bitmapData = open;
         }
      }
      
      override public function serializeFields() : Array
      {
         var _loc1_:Array = super.serializeFields();
         _loc1_.push("opened");
         _loc1_.push("spawnEnemies");
         return _loc1_;
      }
      
      override public function pickup() : Boolean
      {
         var _loc1_:PickupWeapon = null;
         var _loc2_:int = 0;
         var _loc3_:Cash = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(!opened && canOpen())
         {
            new PickupText(gs,basex,basey - 32,"TREASURE!",16764727);
            Sounds.treasureOpen.play();
            opened = true;
            if(giveWeapon)
            {
               _loc1_ = new PickupWeapon(gs,basex,basey);
               _loc1_.wep = WeaponGenerator.generateWeapon(100,MainScene(gs).player.level,true);
               _loc1_.dy = 3;
            }
            else
            {
               _loc2_ = 0;
               while(_loc2_ < 10)
               {
                  _loc3_ = new Cash(gs,basex,basey);
                  _loc4_ = 90 + (_loc2_ - 4) * 15 + (Math.random() - 0.5) * 4;
                  _loc5_ = 4 + Math.random() * 2;
                  _loc3_.dx = cosd(_loc4_) * _loc5_;
                  _loc3_.dy = sind(_loc4_) * _loc5_;
                  _loc2_++;
               }
            }
         }
         return false;
      }
   }
}

