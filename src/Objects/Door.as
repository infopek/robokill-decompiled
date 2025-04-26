package Objects
{
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import ObjectConstructors.Door_constructor;
   import Scenes.MainScene;
   import Tools.Interpolation;
   import Tools.PathfindSquare;
   
   public class Door extends GameObject
   {
      public var targetGridX:int = 0;
      
      public var floorTileX:int;
      
      public var targetGridY:int = 0;
      
      public var openProgress:int = 0;
      
      public var opening:Boolean = false;
      
      public var dominant:Boolean = false;
      
      public var topMask:DoorMask;
      
      public var rotationCount:int = 0;
      
      public var openAnim:Array;
      
      public var floorTileY:int;
      
      public function Door(param1:GameScene, param2:int, param3:int)
      {
         super(param1,Door_constructor.baseim_embed,Door_constructor.LayerName,param2,param3);
         Door_constructor.setup(param1,this);
      }
      
      public function unlock(param1:GameObject) : void
      {
         emitConditionalParticles("Teleport");
         MainScene(gs).player.unlockPath(targetGridX,targetGridY);
         if(MainScene(gs).currentLevel)
         {
            if(MainScene(gs).currentLevel.overArrows)
            {
               param1 = MainScene(gs).currentLevel.overArrows[rotationCount];
               if(param1)
               {
                  param1.remove();
               }
            }
         }
      }
      
      public function setOpen(param1:Boolean) : void
      {
         if(param1)
         {
            openProgress = 100;
         }
         else
         {
            openProgress = 0;
         }
         setBitmap();
      }
      
      override public function _remove() : void
      {
         if(topMask)
         {
            topMask.remove();
         }
      }
      
      override public function _update() : void
      {
         var _loc3_:GameObject = null;
         var _loc4_:GameObject = null;
         var _loc1_:PathfindSquare = MainScene(gs).toPlayer.getField(floorTileX,floorTileY);
         if(!_loc1_.exists)
         {
            hide();
         }
         super._update();
         if(!dominant)
         {
            dominant = true;
            for each(_loc3_ in gs.objects)
            {
               if(_loc3_ != this)
               {
                  if(_loc3_ is Door)
                  {
                     if(Door(_loc3_).dominant)
                     {
                        dominant = false;
                     }
                  }
               }
            }
         }
         var _loc2_:* = MainScene(gs).countEnemies() == 0;
         if(MainScene(gs).countKeys() != 0)
         {
            _loc2_ = false;
         }
         if(MainScene(gs).player.pathLocked(targetGridX,targetGridY))
         {
            _loc2_ = false;
            if(MainScene(gs).countEnemies() == 0)
            {
               if(MainScene(gs).currentLevel.overArrows)
               {
                  if(!opening)
                  {
                     if(MainScene(gs).player.hasKey(0))
                     {
                        if(distanceToObject(MainScene(gs).player) < 100)
                        {
                           MainScene(gs).player.removeKey();
                           opening = true;
                           _loc4_ = MainScene(gs).player.hudKeys.copyCurrentIcon();
                           _loc4_.helper.slideTo(basex,basey,true,75,unlock);
                        }
                     }
                  }
               }
            }
         }
         if(MainScene(gs).player.inLevelEnd())
         {
            _loc2_ = false;
         }
         if(_loc2_)
         {
            if(openProgress == 0)
            {
               Sounds.doorOpen.play();
            }
            openProgress = Math.min(openProgress + 2.5,100);
         }
         else
         {
            openProgress = Math.max(openProgress - 2.5,0);
         }
         setBitmap();
         if(openProgress >= 0)
         {
            if(!topMask)
            {
               topMask = new DoorMask(gs,basex,basey);
               topMask.baseRotation = baseRotation;
            }
         }
         else if(MainScene(gs).fading == 0)
         {
            if(topMask)
            {
               topMask.remove();
               topMask = null;
            }
         }
         if(topMask)
         {
            topMask.baseAlpha = Interpolation.lockValue(openProgress / 30,0,1);
         }
         if(topMask)
         {
            topMask.hidden = hidden;
         }
      }
      
      public function setBitmap() : void
      {
         setFrameFromRange(openProgress,100,openAnim);
      }
   }
}

