package Scenes
{
   import Audio.GameSoundChannel;
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import GlobalSetup.Embeds;
   import Objects.StoryShip1;
   import SceneConstructors.Story3_constructor;
   import Tools.Interpolation;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class Story3 extends GameScene
   {
      public var textSound:GameSoundChannel;
      
      public var ship:StoryShip1;
      
      public var skipped:Boolean = false;
      
      public var skip:GameObject;
      
      public function Story3()
      {
         super();
         Story.setStoryText(this,"MISSION: LIBERATE TITAN PRIME",finishSound);
         updateWhenRemoving = true;
      }
      
      override public function _update() : void
      {
         var _loc1_:GameObject = null;
         for each(_loc1_ in objects)
         {
            if(_loc1_.obj is Bitmap)
            {
               Bitmap(_loc1_.obj).smoothing = true;
            }
         }
         if(Ticks == 40)
         {
            textSound = Sounds.textPrint.play();
         }
         if(Ticks == 560 && !skipped)
         {
            pushScene(new MainMenu(),true,100);
         }
         if(!skipped)
         {
            if(skip.mHit())
            {
               pushScene(new MainMenu(),true);
               Story.introTrackPlay.stop(250);
               skipped = true;
            }
         }
         ship.basex = Interpolation.linearInterpolate(-50,300,Ticks / 700);
      }
      
      override public function _register(param1:Sprite) : void
      {
         var _loc2_:Story3_constructor = new Story3_constructor();
         _loc2_.register(this,param1,true);
         ship = new StoryShip1(this,0,400);
      }
      
      override public function init() : void
      {
         skip = MainMenu.addNormalStyledButton(this,"SKIP",Embeds.levelup_ok_png,Embeds.levelup_ok_over_png,"",-25);
         skip.basex = 734;
         skip.basey = 537;
      }
      
      public function finishSound() : void
      {
         textSound.stop();
      }
   }
}

