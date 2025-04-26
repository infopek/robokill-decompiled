package Objects
{
   import GameObjects.*;
   import GameScenes.GameScene;
   import GlobalSetup.Embeds;
   import ObjectBase.*;
   import ObjectConstructors.*;
   import Scenes.MainScene;
   import flash.display.*;
   
   public class FlameThrowerTile extends FloorProp
   {
      public var master:Boolean = false;
      
      public var slave:Boolean = false;
      
      public function FlameThrowerTile(param1:GameScene, param2:int, param3:int)
      {
         super(param1,param2,param3);
         FlameThrowerTile_constructor.setup(param1,this);
         Bitmap(obj).bitmapData = new Embeds.flamethrowertile_png().bitmapData;
         useAnimFrame = false;
         animFrame = 999;
      }
      
      public function period() : int
      {
         return 100;
      }
      
      override public function _update() : void
      {
         var _loc1_:GameObject = null;
         super._update();
         for each(_loc1_ in children)
         {
            _loc1_.tformFromParent = true;
         }
         if(!slave)
         {
            if(ticks % period() == 0)
            {
               shoot();
            }
         }
      }
      
      public function effectivedx() : int
      {
         if(sind(effectiveAngle()) < -0.9)
         {
            return -1;
         }
         if(sind(effectiveAngle()) > 0.9)
         {
            return 1;
         }
         return 0;
      }
      
      public function effectivedy() : int
      {
         if(cosd(effectiveAngle()) < -0.9)
         {
            return -1;
         }
         if(cosd(effectiveAngle()) > 0.9)
         {
            return 1;
         }
         return 0;
      }
      
      public function effectiveAngle() : Number
      {
         var _loc1_:Number = baseRotation + 180;
         if(baseScaleY < 0)
         {
            _loc1_ += 180;
         }
         return _loc1_;
      }
      
      public function shoot() : void
      {
         var _loc1_:BigTurretBullet = null;
         _loc1_ = new BigTurretBullet(gs,basex,basey);
         _loc1_.rotate(effectiveAngle());
         _loc1_.basex += effectivedx() * 30;
         _loc1_.basey -= effectivedy() * 50;
         _loc1_.playRicochet = false;
         _loc1_.damageOverride = MainScene(gs).player.getShieldsForLevel() / 10;
         Sounds.flameTurretFire.play();
      }
   }
}

