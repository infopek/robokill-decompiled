package ObjectBase
{
   import GameScenes.GameScene;
   
   public class WallBase extends GameObjectBase
   {
      public var blocksDiagonal:Boolean = false;
      
      public function WallBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function _update() : void
      {
      }
   }
}

