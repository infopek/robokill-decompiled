package ObjectBase
{
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   
   public class FloorDecalBase extends GameObject
   {
      public var images:Array;
      
      public function FloorDecalBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}

