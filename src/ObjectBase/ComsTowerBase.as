package ObjectBase
{
   import GameScenes.GameScene;
   
   public class ComsTowerBase extends EnemyBase
   {
      public function ComsTowerBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
         baseHealth *= 20;
         toughness = 3;
         pushable = false;
         setsImpassable = true;
      }
      
      override public function _update() : void
      {
         if(blockUpdating())
         {
            super._update();
            return;
         }
         super._update();
         toughness = 3;
      }
      
      override public function _experience() : int
      {
         return 0;
      }
      
      override public function shrapnelCount() : int
      {
         return 20;
      }
   }
}

