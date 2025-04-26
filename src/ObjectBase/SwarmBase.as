package ObjectBase
{
   import GameObjects.GameObjectFilterRotateSlowly;
   import GameScenes.GameScene;
   import Scenes.MainScene;
   
   public class SwarmBase extends EnemyBase
   {
      public var moveSpeed:Number = 1.5;
      
      public function SwarmBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
         addFilter(new GameObjectFilterRotateSlowly(5));
         extraHealth /= 2;
         dist = 8;
      }
      
      override public function hitBy(param1:BulletBase, param2:int = 0) : void
      {
         super.hitBy(param1,param2);
         MainScene(gs).currentLevel.enragedBugs = true;
      }
      
      override public function itemDropLevel() : int
      {
         return 0;
      }
      
      override public function _update() : void
      {
         if(blockUpdating())
         {
            super._update();
            return;
         }
         super._update();
         doMovement();
      }
      
      override public function _experience() : int
      {
         return 5;
      }
      
      public function doMovement() : void
      {
         if(!MainScene(gs).currentLevel.enragedBugs)
         {
            moveRandomly(1,200);
         }
         else
         {
            _moveTowardsPlayer();
         }
      }
      
      public function _moveTowardsPlayer() : void
      {
         moveTowardsPlayer(moveSpeed);
      }
   }
}

