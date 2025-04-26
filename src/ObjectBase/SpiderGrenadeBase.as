package ObjectBase
{
   import GameScenes.GameScene;
   import Objects.Swarm;
   import Scenes.MainScene;
   import flash.geom.Point;
   
   public class SpiderGrenadeBase extends HulkBulletBase
   {
      public var difficulty:int = 1;
      
      public function SpiderGrenadeBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function kill() : void
      {
         var _loc1_:Point = null;
         var _loc2_:Swarm = null;
         if(MainScene(gs).countEnemies() != 0)
         {
            _loc1_ = tformed(0,-10);
            _loc2_ = new Swarm(gs,_loc1_.x,_loc1_.y);
            _loc2_.setupDifficulty(difficulty);
            emitConditionalParticles("TeleportSmall");
         }
         super.kill();
      }
   }
}

