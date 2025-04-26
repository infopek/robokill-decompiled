package ObjectBase
{
   import GameScenes.GameScene;
   import Scenes.MainScene;
   
   public class EnemyBulletBase extends GameObjectBase
   {
      public var toughness:int = 0;
      
      public var speedMult:Number = 0.9 + Math.random() * 0.2;
      
      public var playRicochet:Boolean = false;
      
      public var damageMult:Number = 1;
      
      public function EnemyBulletBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
         additive = true;
      }
      
      override public function hasHitWall(param1:int = 0, param2:int = 0) : void
      {
         if(playRicochet)
         {
            Sounds.wallHit.play();
         }
         kill();
      }
      
      override public function kill() : void
      {
         emitConditionalParticles("EnemyHit");
         remove();
      }
      
      override public function _update() : void
      {
         var _loc1_:MainScene = null;
         super._update();
         _loc1_ = MainScene(gs);
         basex += cosd(baseRotation - 90) * 3.5 * speedMult;
         basey += sind(baseRotation - 90) * 3.5 * speedMult;
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
      }
      
      override public function handlePlayerCollision() : void
      {
         emitConditionalParticles("BulletHitPlayer",MainScene(gs).player.basex,MainScene(gs).player.basey,true);
         MainScene(gs).player.handleHit(this);
         kill();
         Sounds.objectHit.play();
      }
      
      override public function canFall() : Boolean
      {
         return false;
      }
      
      public function damage() : int
      {
         return damageMult * (8 + 6 * toughness);
      }
   }
}

