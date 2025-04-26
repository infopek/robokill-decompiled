package SceneConstructors
{
   import GameObjects.GameObject;
   import GameObjects.GameObjectFilter;
   import GameScenes.GameScene;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class MainScene_constructor
   {
      public function MainScene_constructor()
      {
         super();
      }
      
      public function register(param1:GameScene, param2:Sprite, param3:Boolean = false) : void
      {
         var _loc4_:GameObject = null;
         var _loc5_:GameObjectFilter = null;
         if(!param3)
         {
            param1.m = new MovieClip();
         }
         if(!param3)
         {
            param2.addChild(param1.m);
         }
      }
   }
}

