package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.EnemyBulletBase;
   import ObjectConstructors.SpiderShot_constructor;
   import flash.display.Bitmap;
   
   public class SpiderShot extends EnemyBulletBase
   {
      public var shotTail:Array;
      
      public var heavyDamage:Boolean = false;
      
      public var releasedTicks:int = 0;
      
      public var released:Boolean = false;
      
      public function SpiderShot(param1:GameScene, param2:int, param3:int)
      {
         super(param1,SpiderShot_constructor.baseim_embed,SpiderShot_constructor.LayerName,param2,param3);
         SpiderShot_constructor.setup(param1,this);
         Bitmap(obj).smoothing = true;
      }
      
      override public function hasHitWall(param1:int = 0, param2:int = 0) : void
      {
         if(released)
         {
            super.hasHitWall(param1,param2);
         }
      }
      
      override public function _update() : void
      {
         super._update();
         additive = released;
         if(released)
         {
            speedMult += 0.02;
         }
         if(releasedTicks > 30)
         {
            if(releasedTicks % 15 > 7)
            {
               Bitmap(obj).bitmapData = shotTail[shotTail.length - 2];
            }
            else
            {
               Bitmap(obj).bitmapData = shotTail[shotTail.length - 1];
            }
         }
         else
         {
            setFrameFromRange(releasedTicks,30,shotTail);
         }
         if(released)
         {
            ++releasedTicks;
         }
      }
      
      override public function damage() : int
      {
         if(heavyDamage)
         {
            return super.damage() * 4;
         }
         return super.damage() * 2;
      }
      
      override public function kill() : void
      {
         Sounds.rocketHit.play();
         emitConditionalParticles("RocketExplosion");
         super.kill();
      }
   }
}

