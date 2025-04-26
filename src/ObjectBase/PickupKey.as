package ObjectBase
{
   import GameObjects.GameObject;
   import GameObjects.GameObjectFilterBlink;
   import GameScenes.GameScene;
   import GlobalSetup.Embeds;
   import Scenes.MainScene;
   
   public class PickupKey extends PickupBase
   {
      public var pickMeUp:GameObject;
      
      public var created:int = -1000;
      
      public function PickupKey(param1:GameScene, param2:int, param3:int)
      {
         super(param1,Embeds.key_1_embed,"Floor",param2,param3);
      }
      
      override public function handlePlayerCollision() : void
      {
         super.handlePlayerCollision();
      }
      
      override public function _update() : void
      {
         super._update();
         if(MainScene(gs).lazyEnemiesCount == 0)
         {
            if(!pickMeUp)
            {
               pickMeUp = new GameObject(gs,null,"AbovePlayer",basex,basey - 20);
               pickMeUp.fontName = "Pixelation-34";
               pickMeUp.setText("PICK ME UP!",7);
               pickMeUp.addFilter(new GameObjectFilterBlink());
            }
         }
      }
      
      override public function serializeFields() : Array
      {
         return ["basex","basey"];
      }
      
      override public function _remove() : void
      {
         if(pickMeUp)
         {
            pickMeUp.remove();
         }
      }
      
      override public function playSound() : void
      {
         Sounds.pickupKey.play();
      }
      
      override public function pickup() : Boolean
      {
         MainScene(gs).player.addKey();
         return true;
      }
      
      override public function pickupName() : String
      {
         return "KEY";
      }
   }
}

