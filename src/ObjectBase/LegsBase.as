package ObjectBase
{
   import GameObjects.GameObject;
   import GameObjects.GameObjectFilterRotateSlowly;
   import GameScenes.GameScene;
   
   public class LegsBase extends GameObject
   {
      public function LegsBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
         independentRotation = true;
         addFilter(new GameObjectFilterRotateSlowly(2));
      }
   }
}

