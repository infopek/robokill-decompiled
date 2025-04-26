package Objects
{
   import Audio.GameSoundChannel;
   import Audio.GameSoundScene;
   import GameObjects.GameObject;
   import GameObjects.GameObjectFilter;
   import GameObjects.GameObjectFilterFadeInOut;
   import GameScenes.GameScene;
   import GlobalSetup.Embeds;
   import ObjectConstructors.CommWindow_constructor;
   import PremiumContent.PremiumContentNotifier;
   import Scenes.End;
   import Scenes.MainMenu;
   import Scenes.MainScene;
   import Tools.Logging;
   import flash.display.SimpleButton;
   
   public class CommWindow extends GameObject
   {
      public var text:GameObject;
      
      public var displayText:String = "THE MAIN LIFT IS OFFLINE.     \nTRY AND FIND A SERVICE LIFT TO DECK 1.         \nGOOD LUCK.";
      
      public var killButton:GameObject;
      
      public var finishLevel:Boolean = false;
      
      public var chan:GameSoundChannel;
      
      public var displayTextOptions:Array = ["THE MAIN LIFT IS OFFLINE.     \nLOCATE THE SERVICE LIFT TO DECK 1.         \nGOOD LUCK.","WE NEED TO CLEAR THE DECKS ONE BY... \nHANG ON, SOMETHING IS JAMMING OUR COMS.                     \n... *(GARBLED TAUNT)*","LOCATE AND DESTROY THE FOUR MAIN ROBOT\nMANUFACTURING UNITS ON THIS DECK.","THIS IS THE POWER GENERATION FACILITY.\nWE NEED TO CUT THE POWER TO THE DECKS BELOW.\nFIND THE CONTROL COMPUTER AND SHUT IT DOWN.","I\'M GETTING DISTRESS CALLS FROM SURVIVORS TRAPPED IN THE SHUTTLE BAYS.\nTHEY ARE BEING HELD CAPTIVE BY ENEMY ROBOTS.\nDO WHAT YOU CAN TO HELP THEM.","WE ARE RELOCATING THE SHIP TO A DOCK ON THE UPPER DECKS.\nMAKE YOUR WAY TO THE NEXT LEVEL AND DESTROY ANYTHING THAT MOVES.","MAYDAY! MAYDAY!        \nTHE SHIP IS UNDER ATTACK. \nGET TO THE DOCKING BAY IMMEDIATELY.","THE ENEMY ARE PREPARING ASSASSIN BOTS TO USE AGAINST YOU.   \nHUNT THEM DOWN BEFORE THEY\'RE FULLY COMPLETE.","WE EXPECT HEAVY RESISTANCE ON THE COMMAND DECK ABOVE.\nRAID THE ARMOURY, AND LOCATE THE FOUR RARE WEAPONS ON THIS LEVEL."
      ,"THE ORBITAL STABILIZER SYSTEMS HAVE BEEN HACKED. THE ENEMY IS ATTEMPTING\nTO COLLIDE THE STATION WITH A POPULATED AREA ON MARS. WE HAVE NO\nCHOICE. FIND THE COMMAND ROOM AND RESET THE STATION COURSE FOR THE SUN.","WE NEED TO BUY TIME TO FIND THE SURVIVORS. LOCATE AND\nHACK INTO THE ENGINE SYSTEMS TO ACTIVATE THE RETRO BOOSTERS.","WE\'VE TRACED THE COMMUNICATION SIGNAL TO THIS LEVEL.\nLOCATE THE SURVIVORS AND GUIDE THEM BACK TO THE SHIP.","MAYDAY! MAYDAY!    \nSHIP UNDER ATTACK. RELOCATING TO MAINTENANCE DECK 57.\nRENDEZVOUS FOR IMMEDIATE EXTRACTION."];
      
      public var foreman:Foreman;
      
      public var killed:Boolean = false;
      
      public var endOfLevelText:String = "EXCELLENT. MISSION COMPLETE.";
      
      public function CommWindow(param1:GameScene, param2:int, param3:int, param4:Boolean = false)
      {
         displayText = displayTextOptions[MainScene(param1).currentEpisode];
         if(param4)
         {
            displayText = endOfLevelText;
         }
         if(!displayText)
         {
            displayText = "";
         }
         param2 = 400;
         param3 = 120;
         super(param1,CommWindow_constructor.baseim_embed,CommWindow_constructor.LayerName,param2,param3);
         CommWindow_constructor.setup(param1,this);
         var _loc5_:GameObjectFilterFadeInOut = new GameObjectFilterFadeInOut();
         _loc5_.FadeIn = 1;
         _loc5_.FadeInDuration = 30;
         _loc5_.FadeOut = 1;
         _loc5_.FadeOutTime = 400 + displayText.length * 4;
         _loc5_.FadeOutDuration = 20;
         addFilter(_loc5_);
         updateDespitePaused = true;
         finishLevel = param4;
         killButton = new GameObject(param1,SimpleButton,"AfterTextLayer",640 - 678 + 329 - 9 + 6,145 + 10 + 4);
         killButton.setupButton(Embeds.ok_png,"Skip");
         _loc5_ = new GameObjectFilterFadeInOut();
         _loc5_.FadeIn = 1;
         _loc5_.FadeInDuration = 30;
         _loc5_.FadeOut = 1;
         _loc5_.FadeOutTime = 400 + displayText.length * 4;
         _loc5_.FadeOutDuration = 20;
         killButton.addFilter(_loc5_);
      }
      
      override public function _remove() : void
      {
         var _loc1_:GameSoundScene = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         killButton.remove();
         if(!finishLevel)
         {
            if(MainScene(gs).currentEpisode == 0)
            {
               Logging.Log("robokill","startgame");
               new ControlHelp(gs,180,295);
            }
         }
         if(finishLevel)
         {
            Logging.Log("robokill","finishlevel");
            if(MainScene(gs).currentEpisode == 12)
            {
               MainScene(gs).pushScene(new End(),true);
            }
            else if(MainScene(gs).currentEpisode == 3 && !PremiumContentNotifier.registered)
            {
               MainMenu.popUpNag = true;
               gs.pushScene(new MainMenu(),true);
            }
            else
            {
               MainScene(gs).fading = 1;
               MainScene(gs).fadingLevelComplete = true;
            }
         }
         else
         {
            _loc1_ = GameSoundScene.forName("Main");
            _loc1_.setBackgroundMusic(Sounds.droneBig,2000);
         }
         if(MainScene(gs))
         {
            if(MainScene(gs).player)
            {
               if(MainScene(gs).player.obj)
               {
                  if(MainScene(gs).player.obj.root)
                  {
                     _loc2_ = MainScene(gs).player.obj.root.loaderInfo.url.split("/")[2];
                     _loc3_ = _loc2_.split(".");
                     _loc4_ = _loc3_[_loc3_.length - 2];
                  }
               }
            }
         }
      }
      
      override public function _init() : void
      {
         foreman = new Foreman(gs,0,0);
         addChild(foreman);
         foreman.basex = -244;
         foreman.basey = foreman.baseHeight / 2 - baseHeight / 2 + 4;
         foreman.isTalking = true;
      }
      
      override public function _update() : void
      {
         var _loc2_:int = 0;
         var _loc3_:GameObjectFilterFadeInOut = null;
         var _loc1_:String = displayText;
         if(finishLevel)
         {
            _loc2_ = MainScene(gs).currentEpisode;
            if(_loc2_ == 1)
            {
               _loc1_ = "EXCELLENT. COMMUNICATIONS RESTORED.";
            }
            else if(_loc2_ == 4)
            {
               _loc1_ = "WELL DONE. ALL SURVIVORS HAVE BEEN SAFELY LAUNCHED.";
            }
            else if(_loc2_ == 6)
            {
               _loc1_ = "GOOD WORK.    \nDOCKING BAY SECURE.";
            }
            else if(_loc2_ == 9)
            {
               _loc1_ = "WE\'VE RECEIVED A DISTRESS CALL.\nSURVIVORS ARE BARRICADED IN ON THE MAINTENANCE LEVEL.";
            }
         }
         if(foreman)
         {
            foreman.isTalking = !!chan ? chan.playing() : false;
         }
         if(chan)
         {
            if(chan.playing())
            {
               if(chan.chan.leftPeak < 0.1)
               {
                  foreman.isTalking = false;
               }
            }
         }
         if(MainScene(gs).currentEpisode == 1)
         {
            if(foreman.isTalking)
            {
               if(ticks > 520)
               {
                  foreman.isTalking = false;
               }
            }
         }
         if(!killed)
         {
            if(ticks == 40)
            {
               text = new GameObject(gs,null,"AfterTextLayer",246,74);
               if(MainScene(gs).currentEpisode == 9)
               {
                  text.basex -= 32;
               }
               text.baseHandleX = 0;
               text.baseHandleY = 0;
               text.setText("",18);
               _loc3_ = new GameObjectFilterFadeInOut();
               _loc3_.FadeOut = 1;
               _loc3_.FadeOutTime = 400 + displayText.length * 4 - 40;
               _loc3_.FadeOutDuration = 20;
               text.addFilter(_loc3_);
               if(finishLevel)
               {
                  _loc2_ = MainScene(gs).currentEpisode;
                  trace(_loc2_);
                  if(_loc2_ == 1)
                  {
                     chan = Sounds.missionCompleteDescriptive.playSpecific(2);
                  }
                  else if(_loc2_ == 4)
                  {
                     chan = Sounds.missionCompleteDescriptive.playSpecific(5);
                  }
                  else if(_loc2_ == 6)
                  {
                     chan = Sounds.missionCompleteDescriptive.playSpecific(7);
                  }
                  else if(_loc2_ == 9)
                  {
                     chan = Sounds.missionCompleteDescriptive.playSpecific(10);
                  }
                  else
                  {
                     chan = Sounds.missionComplete.playSpecific(0);
                  }
               }
               else
               {
                  chan = Sounds.Quest.playSpecific(MainScene(gs).currentEpisode);
               }
            }
            else if(ticks > 40)
            {
               if(text)
               {
                  text.setText(_loc1_.substr(0,(ticks - 40 + 2) / 5));
               }
            }
         }
         if(killButton.mHit())
         {
            if(!killed)
            {
               killed = true;
               addFilter(killFilter());
               killButton.addFilter(killFilter());
               if(text)
               {
                  text.addFilter(killFilter());
               }
               if(chan)
               {
                  chan.stop();
                  chan = null;
               }
            }
         }
      }
      
      public function killFilter() : GameObjectFilter
      {
         var _loc1_:GameObjectFilterFadeInOut = new GameObjectFilterFadeInOut();
         _loc1_.FadeOut = 1;
         _loc1_.FadeOutTime = 0;
         _loc1_.FadeOutDuration = 20;
         _loc1_.FadeOutKill = 1;
         return _loc1_;
      }
   }
}

