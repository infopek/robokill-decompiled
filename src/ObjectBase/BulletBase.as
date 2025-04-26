package ObjectBase
{
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import Scenes.MainMenu;
   import Scenes.MainScene;
   import Weapons.WeaponBase;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class BulletBase extends GameObjectBase
   {
      public var wep:WeaponBase;
      
      public var keep:Boolean = false;
      
      public var speed:Number = 7;
      
      public var heavySprite:BitmapData;
      
      public var hitList:Object = new Object();
      
      public var angle:Number = 0;
      
      public var mediumSprite:BitmapData;
      
      public function BulletBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,"Floor",param4,param5);
         Bitmap(obj).smoothing = false;
         obj.cacheAsBitmap = true;
      }
      
      public function setAngle(param1:Number) : void
      {
         angle = param1;
         baseRotation = angle - 90;
      }
      
      override public function hasHitWall(param1:int = 0, param2:int = 0) : void
      {
         removeWithEffects();
      }
      
      override public function _update() : void
      {
         var _loc2_:GameObject = null;
         basex += cosd(angle) * speed;
         basey += sind(angle) * speed;
         baseRotation = angle - 90;
         Bitmap(obj).smoothing = true;
         Bitmap(obj).cacheAsBitmap = true;
         var _loc1_:MainScene = MainScene(gs);
         if(basex < _loc1_.startx + 10)
         {
            hasHitWall(-1,0);
         }
         else if(basex > _loc1_.endx - 10)
         {
            hasHitWall(1,0);
         }
         else if(basey < _loc1_.starty + 10)
         {
            hasHitWall(0,-1);
         }
         else if(basey > _loc1_.endy - 10)
         {
            hasHitWall(0,1);
         }
         for each(_loc2_ in gs.objects)
         {
            if(_loc2_ is EnemyBase)
            {
               if(!EnemyBase(_loc2_).falling)
               {
                  if(!EnemyBase(_loc2_).isTeleporting())
                  {
                     if(hits(EnemyBase(_loc2_)))
                     {
                        EnemyBase(_loc2_).hitBy(this);
                     }
                  }
               }
            }
         }
      }
      
      public function hits(param1:EnemyBase) : Boolean
      {
         return Math.abs(basex - param1.basex) < 30 && Math.abs(basey - param1.basey) < 30;
      }
      
      public function damage() : int
      {
         var _loc1_:Number = MainScene(gs).player.getDamageForLevel() / MainScene(gs).resistanceForLevel();
         if(MainScene(gs).currentEpisode == 8)
         {
            _loc1_ *= 1.1;
         }
         if(MainScene(gs).currentEpisode > 9)
         {
            _loc1_ *= 1.25;
         }
         if(_loc1_ < 1.01)
         {
            _loc1_ = 1.01;
         }
         return wep.damage() * _loc1_;
      }
      
      public function hasHit(param1:EnemyBase) : void
      {
         keep = false;
         wep.handleHit(this,param1);
         if(!keep)
         {
            Sounds.objectHit.play();
            remove();
         }
      }
      
      public function removeWithEffects() : void
      {
         Sounds.wallHit.play();
         if(MainMenu.levelOfDetail)
         {
            emitConditionalParticles("EnemyHit",basex,basey,true);
         }
         remove();
      }
   }
}

