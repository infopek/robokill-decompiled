package ObjectBase
{
   import Audio.GameSound;
   import GameObjects.GameObjectFilterRotateSlowly;
   import GameScenes.GameScene;
   import Objects.SpiderGrenade;
   import Objects.SpiderLegs;
   import Objects.Swarm;
   import Scenes.MainScene;
   import Tools.Interpolation;
   
   public class SpiderSpitBase extends EnemyBase
   {
      public var lastShot:int = 0;
      
      public var shot:int = 0;
      
      public function SpiderSpitBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
         baseHealth *= 8;
         extraHealth *= 9;
         legs = new SpiderLegs(param1,0,0);
         addChild(legs);
         addFilter(new GameObjectFilterRotateSlowly(2));
      }
      
      override public function preKill() : void
      {
         super.preKill();
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            spawn(Swarm,basex,basey,toughness + 1);
            _loc1_++;
         }
      }
      
      override public function getFireSound() : GameSound
      {
         return Sounds.grenadeShoot;
      }
      
      override public function _update() : void
      {
         var _loc1_:SpiderGrenadeBase = null;
         if(blockUpdating())
         {
            super._update();
            return;
         }
         super._update();
         if(shot < 16)
         {
            moveRandomly(1);
            if(MainScene(gs).countEnemies() < 16)
            {
               if(ticks - lastShot > 50)
               {
                  if(Math.random() < 0.005)
                  {
                     lastShot = ticks;
                     ++shot;
                     _loc1_ = SpiderGrenade(shootBullet(0,0));
                     if(_loc1_)
                     {
                        _loc1_.difficulty = Interpolation.lockValueInt(toughness + 1,0,3);
                     }
                  }
               }
            }
         }
         else
         {
            moveTowardsPlayer(2);
         }
      }
      
      override public function _experience() : int
      {
         return 100;
      }
   }
}

