package Weapons
{
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import GlobalSetup.Embeds;
   
   public class Key extends InventoryItem
   {
      public function Key()
      {
         super();
      }
      
      public function serializeFields() : Array
      {
         return [];
      }
      
      override public function inGameImage() : Class
      {
         return Embeds.key_1_embed;
      }
      
      override public function getGameObject(param1:GameScene) : GameObject
      {
         return new GameObject(param1,Embeds.key_1_embed,"AfterTextLayer",0,0);
      }
   }
}

