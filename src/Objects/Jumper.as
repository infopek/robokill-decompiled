package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.SwarmBase;
   import ObjectConstructors.Jumper_constructor;
   import Scenes.MainScene;
   
   public class Jumper extends SwarmBase
   {
      public var state:int = 0;
      
      public var stateJumping:int = 1;
      
      public var stateRunning:int = 0;
      
      public function Jumper(param1:GameScene = null, param2:int = 0, param3:int = 0)
      {
         if(!param1)
         {
            param1 = GameScene.current();
         }
         super(param1,Jumper_constructor.baseim_embed,Jumper_constructor.LayerName,param2,param3);
         Jumper_constructor.setup(param1,this);
         baseHealth *= 80;
         moveSpeed = 2;
      }
      
      override public function _update() : void
      {
         super._update();
         if(!MainScene(gs).player._removed)
         {
            if(Math.abs(dx) + Math.abs(dy) > 0)
            {
               doLegsSpeed(1);
            }
         }
      }
   }
}

