package ObjectBase
{
   import GameScenes.GameScene;
   import Scenes.MainScene;
   import Tools.Interpolation;
   
   public class StaticLaserBase extends EnemyLaserBase
   {
      public var hasHit:Boolean = false;
      
      public var baseWidthHack:Number = 0;
      
      public var baseHeightHack:Number = 0;
      
      public function StaticLaserBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function spriteCollidesWith(param1:GameObjectBase, param2:Number = 1) : Boolean
      {
         var _loc3_:Number = baseWidth;
         var _loc4_:Number = baseHeight;
         baseWidth = baseWidthHack;
         baseHeight = baseHeightHack;
         var _loc5_:Boolean = super.spriteCollidesWith(param1,param2);
         baseWidth = _loc3_;
         baseHeight = _loc4_;
         return _loc5_;
      }
      
      override public function _update() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = NaN;
         baseRotation = Math.atan2(endy - starty,endx - startx) * 180 / Math.PI - 90;
         _loc1_ = 30;
         _loc2_ = dist(startx,starty,endx,endy);
         _loc1_ = 100;
         basex = Interpolation.linearInterpolate(startx,endx,0.5);
         basey = Interpolation.linearInterpolate(starty,endy,0.5);
         baseScaleX = 0.5 + Math.random();
         baseScaleY = _loc2_ / baseHeight;
         if(Math.abs(starty - endy) > Math.abs(startx - endx))
         {
            baseWidthHack = 8;
            baseHeightHack = _loc2_ * 2;
         }
         else
         {
            baseWidthHack = _loc2_ * 2;
            baseHeightHack = 8;
         }
         if(ticks > _loc1_)
         {
            remove();
         }
      }
      
      override public function hasHitWall(param1:int = 0, param2:int = 0) : void
      {
      }
      
      override public function handlePlayerCollision() : void
      {
         var _loc1_:int = 0;
         if(!hasHit)
         {
            MainScene(gs).player.handleHit(this);
            Sounds.playerLaserHit.play();
            MainScene(gs).player.emitConditionalParticles("LaserHit");
            _loc1_ = 0;
            while(_loc1_ < 5)
            {
               MainScene(gs).player.emitConditionalParticles("EnemyHit");
               _loc1_++;
            }
            hasHit = true;
         }
      }
   }
}

