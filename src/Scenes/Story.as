package Scenes
{
   import Audio.GameSound;
   import Audio.GameSoundChannel;
   import GameObjects.GameObject;
   import GameObjects.GameObjectFilterShift;
   import GameObjects.GameObjectFilterTextType;
   import GameScenes.GameScene;
   import GlobalSetup.Embeds;
   import SceneConstructors.Story_constructor;
   import Tools.GraphicsTools;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageQuality;
   
   public class Story extends GameScene
   {
      public static var introTrackPlay:GameSoundChannel;
      
      public var textSound:GameSoundChannel;
      
      public var skipped:Boolean = false;
      
      public var fading:GameObject;
      
      public var skip:GameObject;
      
      public function Story()
      {
         super();
         setStoryText(this,"MERCENARY SHIP: DARKSTAR \nLOCATION: ENTERING ORBIT AROUND MARS",finishSound);
         updateWhenRemoving = true;
         MainMenu.readPrefs();
         GameSound.globalMusicVolume = MainMenu.musicEnabled ? 1 : 0;
         GameSound.globalSoundVolume = MainMenu.soundEnabled ? 1 : 0;
         fading = new GameObject(this,GraphicsTools.createFilledSprite(800,600,4278190080),"AfterTextLayer",400,300);
      }
      
      public static function setStoryText(param1:GameScene, param2:String, param3:Function = null) : void
      {
         var _loc4_:GameObject = new GameObject(param1,null,"TextLayer",7,80);
         _loc4_.setText("",20);
         var _loc5_:GameObjectFilterTextType = new GameObjectFilterTextType();
         _loc5_.txt = param2;
         _loc5_.speed = 1.25;
         _loc5_.finishCallback = param3;
         _loc4_.addFilter(_loc5_);
         _loc4_.baseHandleX = 0;
         _loc4_.baseHandleY = 0;
      }
      
      override public function _update() : void
      {
         var _loc1_:GameObject = null;
         if(fading)
         {
            fading.baseAlpha -= 0.02;
            if(fading.baseAlpha < 0)
            {
               fading.remove();
               fading = null;
            }
         }
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
         if(Ticks == 700 && !skipped)
         {
            pushScene(new Story2(),true);
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
      }
      
      override public function _register(param1:Sprite) : void
      {
         var _loc2_:Story_constructor = new Story_constructor();
         _loc2_.register(this,param1,true);
      }
      
      override public function init() : void
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc6_:GameObjectFilterShift = null;
         skip = MainMenu.addNormalStyledButton(this,"SKIP",Embeds.levelup_ok_png,Embeds.levelup_ok_over_png,"",-25);
         skip.basex = 734;
         skip.basey = 537;
         Sounds.introTrack.isMusic = true;
         introTrackPlay = Sounds.introTrack.play();
         var _loc1_:Stage = m.stage;
         if(_loc1_)
         {
            if(MainMenu.levelOfDetail)
            {
               _loc1_.quality = StageQuality.BEST;
            }
            else
            {
               _loc1_.quality = StageQuality.MEDIUM;
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < 4)
         {
            _loc3_ = [649 + 300,232,430,491];
            _loc4_ = [442,93,507,253];
            _loc5_ = new GameObject(this,new Bitmap(Embeds.asteroids[_loc2_]),"",_loc3_[_loc2_],_loc4_[_loc2_]);
            _loc6_ = new GameObjectFilterShift();
            _loc6_.dx = 0.75 * -[1,0.75,0.4,0.2][_loc2_];
            _loc5_.addFilter(_loc6_);
            _loc2_++;
         }
      }
      
      public function finishSound() : void
      {
         textSound.stop();
      }
   }
}

