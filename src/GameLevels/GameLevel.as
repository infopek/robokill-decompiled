package GameLevels
{
   import Audio.GameSoundChannel;
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import ObjectBase.*;
   import Objects.*;
   import Scenes.*;
   import Templates.RewardText;
   import Tools.GraphicsTools;
   import Tools.Interpolation;
   import Tools.Debug;
   import flash.display.*;
   import flash.filters.*;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   
   public class GameLevel
   {
      public static var ambientChannel:GameSoundChannel;
      
      public var nofloorstartx:Number = 0;
      
      public var endy:Number = 600;
      
      public var hadWeapon:Boolean = false;
      
      public var tileCount:int;
      
      public var nofloorstarty:Number = 0;
      
      public var overArrowsCreated:Boolean = false;
      
      public var ambushRoom:Boolean = false;
      
      public var machineRoomProgress:int = 0;
      
      public var decalNum:int = -1;
      
      public var floorPos:Array;
      
      public var triggeredHelp:Boolean = false;
      
      public var hadItem:Boolean = false;
      
      public var enragedBugs:Boolean = false;
      
      public var startx:Number = 0;
      
      public var starty:Number = 0;
      
      public var hasHadTrap:Boolean = false;
      
      public var ambushProgress:int = 0;
      
      public var lastRoomProgress:int = 0;
      
      public var nofloorendx:Number = 800;
      
      public var nofloorendy:Number = 600;
      
      public var gs:GameScene;
      
      public var endx:Number = 800;
      
      public var overArrows:Array;
      
      public function GameLevel()
      {
         super();
      }
      
      public function rotationTargetX(param1:int) : int
      {
         var _loc2_:PlayerBase = MainScene(gs).player;
         if(param1 == 1)
         {
            return _loc2_.gridx + 1;
         }
         if(param1 == 3)
         {
            return _loc2_.gridx - 1;
         }
         return _loc2_.gridx;
      }
      
      public function updateLastRoom() : void
      {
         var _loc3_:EnemyBase = null;
         var _loc4_:int = 0;
         var _loc1_:MainScene = MainScene(gs);
         var _loc2_:PlayerBase = _loc1_.player;
         if(_loc2_._removed)
         {
            lastRoomProgress = 0;
            return;
         }
         if(isMachineRoom())
         {
            updateMachineRoom();
         }
         if(isLastRoom())
         {
            if(lastRoomProgress == 0 && MainScene(gs).countEnemies() == 0)
            {
               lastRoomProgress = 1;
            }
            if(lastRoomProgress > 0)
            {
               ++lastRoomProgress;
               if(lastRoomProgress == 100)
               {
                  RewardText.createRewardText(gs,400,300,"INCOMING!","TextLayer",16730174);
                  Sounds.trap.play();
               }
               if(lastRoomProgress <= 1000)
               {
                  if(lastRoomProgress % 100 == 0)
                  {
                     _loc3_ = new Sleeper(gs,400,200);
                     _loc3_.shouldTeleport = true;
                     _loc4_ = 0;
                     while(_loc4_ < 100)
                     {
                        _loc3_.basex = -16 + 52 * (Math.random() * 16);
                        _loc3_.basey = -12 + 52 * (Math.random() * 14);
                        _loc3_.setupDifficulty(1);
                        if(_loc3_.distanceToObject(_loc2_) > 400)
                        {
                           if(!_loc3_.noExistGreedy())
                           {
                              if(!_loc3_.collidesWithAnything())
                              {
                                 if(_loc3_.basex > 50 && _loc3_.basex < 750 && _loc3_.basey > 50 && _loc3_.basey < 550)
                                 {
                                    break;
                                 }
                              }
                           }
                        }
                        _loc4_++;
                     }
                  }
               }
            }
         }
      }
      
      public function decalZOrderChange(param1:GameObject) : Boolean
      {
         if(param1 is FreeFloorDecal)
         {
            return FreeFloorDecal(param1).animFrame >= 79 && FreeFloorDecal(param1).animFrame <= 83;
         }
         return false;
      }
      
      public function createOverArrows() : void
      {
         var _loc3_:Class = null;
         var _loc4_:Boolean = false;
         var _loc5_:GameObject = null;
         var _loc1_:PlayerBase = MainScene(gs).player;
         if(_loc1_.inLevelEnd())
         {
            return;
         }
         overArrowsCreated = true;
         overArrows = new Array(4);
         var _loc2_:int = 0;
         while(_loc2_ < 4)
         {
            if(validRoom(_loc2_))
            {
               _loc3_ = Embeds.arrow_png;
               _loc4_ = false;
               if(MainScene(gs).player.pathLocked(rotationTargetX(_loc2_),rotationTargetY(_loc2_)))
               {
                  _loc3_ = Embeds.keyrequired_png;
                  _loc4_ = true;
                  _loc5_ = new GameObjectBase(gs,_loc3_,"TextLayer",400,300);
                  _loc5_.basex += _loc1_.cosd(_loc2_ * 90 - 90) * 350;
                  _loc5_.basey += _loc1_.sind(_loc2_ * 90 - 90) * 250;
                  GameObjectBase(_loc5_).collidesWithWalls = false;
                  if(!_loc4_)
                  {
                     _loc5_.baseRotation = _loc2_ * 90;
                  }
                  overArrows[_loc2_] = _loc5_;
               }
            }
            _loc2_++;
         }
      }
      
      public function isFloorLevel(param1:Array) : Boolean
      {
         var _loc2_:Array = param1[0].getClasses(param1[1]);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            if(_loc2_[_loc3_] != FloorProp)
            {
               return false;
            }
            _loc3_++;
         }
         return true;
      }
      
      public function rotationTargetY(param1:int) : int
      {
         var _loc2_:PlayerBase = MainScene(gs).player;
         if(param1 == 0)
         {
            return _loc2_.gridy - 1;
         }
         if(param1 == 2)
         {
            return _loc2_.gridy + 1;
         }
         return _loc2_.gridy;
      }
      
      public function updateMachineRoom() : void
      {
         var _loc1_:GameObject = null;
         ++machineRoomProgress;
         if(machineRoomProgress == 1)
         {
            Sounds.machineOn.play();
            return;
         }
         for each(_loc1_ in gs.objects)
         {
            if(_loc1_ is Pulse)
            {
               if(machineRoomProgress < 300)
               {
                  Pulse(_loc1_).baseAlpha = Pulse(_loc1_).baseAlpha * Interpolation.linearInterpolateLock(0,1,(machineRoomProgress - 200) / 100);
               }
            }
         }
      }
      
      public function isMachineRoom() : Boolean
      {
         var _loc1_:MainScene = MainScene(gs);
         var _loc2_:PlayerBase = _loc1_.player;
         if(_loc1_.currentEpisode == 10)
         {
            if(_loc2_.lg.getCellData(_loc2_.gridx,_loc2_.gridy,"Finish") != null)
            {
               return true;
            }
         }
         return false;
      }
      
      public function update() : void
      {
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:GameObject = null;
         updateLastRoom();
         if(ambushRoom)
         {
            hasHadTrap = true;
            ++ambushProgress;
            if(ambushProgress == 100)
            {
               RewardText.createRewardText(gs,400,300,"AMBUSH!","TextLayer",16730174);
               Sounds.trap.play();
            }
            if(ambushProgress > 150)
            {
               _loc1_ = MainScene(gs).player.obj.root.loaderInfo.url.split("/")[2];
               _loc2_ = _loc1_.split(".");
               _loc3_ = _loc2_[_loc2_.length - 2];
               ambushRoom = false;
            }
         }
         if(tileCount < 100)
         {
            if(!ambientChannel)
            {
               ambientChannel = Sounds.cavern.play(true,0,100);
            }
         }
         else if(ambientChannel)
         {
            ambientChannel.stop(100);
            ambientChannel = null;
         }
         if(overArrowsCreated)
         {
            if(MainScene(gs).countEnemies() != 0)
            {
               for each(_loc4_ in overArrows)
               {
                  _loc4_.remove();
               }
               overArrows = null;
               overArrowsCreated = false;
            }
         }
      }
      
      public function rotationTargetFloorTileY(param1:int) : int
      {
         if(param1 == 0)
         {
            return 0;
         }
         if(param1 == 2)
         {
            return 10;
         }
         return 5;
      }
      
      public function rotationPointsToGrid(param1:int, param2:int, param3:int) : Boolean
      {
         var _loc4_:PlayerBase = MainScene(gs).player;
         if(param1 == 0)
         {
            return param2 == _loc4_.gridx && param3 == _loc4_.gridy - 1;
         }
         if(param1 == 1)
         {
            return param2 == _loc4_.gridx + 1 && param3 == _loc4_.gridy;
         }
         if(param1 == 2)
         {
            return param2 == _loc4_.gridx && param3 == _loc4_.gridy + 1;
         }
         return param2 == _loc4_.gridx - 1 && param3 == _loc4_.gridy;
      }
      
      public function rotationTargetFloorTileX(param1:int) : int
      {
         if(param1 == 1)
         {
            return 14;
         }
         if(param1 == 3)
         {
            return 0;
         }
         return 7;
      }
      
      public function isLastRoom() : Boolean
      {
         var _loc1_:MainScene = MainScene(gs);
         var _loc2_:PlayerBase = _loc1_.player;
         if(_loc1_.currentEpisode == 9)
         {
            if(_loc2_.lg.getCellData(_loc2_.gridx,_loc2_.gridy,"Finish") != null)
            {
               return true;
            }
         }
         return false;
      }
      
      public function lastRoomCanEnd() : Boolean
      {
         if(!isLastRoom())
         {
            return true;
         }
         return lastRoomProgress > 1000;
      }
      
      public function getFloor(param1:Boolean) : BitmapData
      {
         var _loc2_:PlayerBase = null;
         var _loc10_:GameObject = null;
         var _loc11_:Bitmap = null;
         var _loc12_:Bitmap = null;
         var _loc13_:Bitmap = null;
         var _loc14_:Bitmap = null;
         var _loc15_:ColorTransform = null;
         var _loc18_:int = 0;
         var _loc19_:Array = null;
         var _loc20_:Bitmap = null;
         tileCount = 0;
         _loc2_ = MainScene(gs).player;
         var cells:Array = _loc2_.lg.getCellData(_loc2_.gridx,_loc2_.gridy,"PredefinedLevel") as Array;
         var _loc4_:Array = cells[0];
         var _loc5_:Array = _loc4_[0].init(_loc4_[1],gs);

         var i:int = 0;
         var j:int = 0;

         for (i = 1; i < cells.length; i++)
         {
            if(param1)
            {
               if(isFloorLevel(cells[i]))
               {
                  _loc19_ = MainScene(gs).initLevel(cells[i]);
                  for each(_loc10_ in _loc19_)
                  {
                     _loc5_.push(_loc10_);
                  }
               }
            }
         }
         var _loc7_:Array = new Array();
         floorPos = new Array();
         for (i = 0; i < 32; i++)
         {
            floorPos[i] = new Array();
            _loc7_[i] = new Array();
            for (j = 0; j < 32; j++)
            {
               floorPos[i][j] = -1;
            }
         }
         for (i = 0; i < MainScene(gs).toPlayer.width; i++)
         {
            for (j = 0; j < MainScene(gs).toPlayer.height; j++)
            {
               MainScene(gs).setPassable(i,j,false);
               MainScene(gs).setExists(i,j,false);
            }
         }
         for each(_loc10_ in gs.objects)
         {
            if(_loc10_ is FloorTile)
            {
               floorPos[int(_loc10_.basey / 52)][int(_loc10_.basex / 52)] = _loc10_.animFrame;
               _loc7_[int(_loc10_.basey / 52)][int(_loc10_.basex / 52)] = _loc10_.obj;
               MainScene(gs).setPassable(FloorTile(_loc10_).logicalSquareX(),FloorTile(_loc10_).logicalSquareY(),true);
               MainScene(gs).setExists(FloorTile(_loc10_).logicalSquareX(),FloorTile(_loc10_).logicalSquareY(),true);
               _loc10_.remove();
               ++tileCount;
            }
         }
         for each(_loc10_ in _loc5_)
         {
            if(_loc10_ is FloorProp)
            {
               if(!param1)
               {
                  _loc10_.remove();
               }
            }
         }
         _loc11_ = GraphicsTools.createFilledSprite(800,600,4294967295);
         _loc12_ = new Embeds.floor_base_jpg();
         _loc13_ = new Embeds.walls_png();
         _loc14_ = new Embeds.floor_tile_edge_png();
         if(MainScene(gs).currentEpisode == 0)
         {
            _loc15_ = new ColorTransform(1.1,1,1);
         }
         else if(MainScene(gs).currentEpisode == 1)
         {
            _loc15_ = new ColorTransform(1,1.05,1.3);
         }
         else if(MainScene(gs).currentEpisode == 2)
         {
            _loc15_ = new ColorTransform(1.2,1.1,1);
         }
         else if(MainScene(gs).currentEpisode == 3)
         {
            _loc15_ = new ColorTransform(1,1.1,1.5);
         }
         else if(MainScene(gs).currentEpisode == 4)
         {
            _loc15_ = new ColorTransform(0.9,0.95,0.9);
         }
         else if(MainScene(gs).currentEpisode == 5)
         {
            _loc15_ = new ColorTransform(1.1,1,1);
         }
         else if(MainScene(gs).currentEpisode == 6)
         {
            _loc15_ = new ColorTransform(1,1.05,1.4);
         }
         else if(MainScene(gs).currentEpisode == 9)
         {
            _loc15_ = new ColorTransform(1,1.2,1.6);
         }

         for (i = 0; i < 800 / 52; i++)
         {
            for (j = 0; j < 800 / 52; j++)
            {
               if(floorPos[j][i] >= 0)
               {
                  _loc20_ = _loc7_[j][i];
                  _loc20_.x = i * 52 + 10;
                  _loc20_.y = j * 52 + 14;
                  _loc11_.bitmapData.draw(_loc20_,_loc20_.transform.matrix);
               }
            }
         }

         _loc11_.bitmapData.draw(_loc12_,null,_loc15_,BlendMode.MULTIPLY);
         var _loc16_:Array = [0,1,2,3,4,1,0,3,4,2,5,5,5];
         var _loc17_:Bitmap = new Bitmap(Embeds.pit[_loc16_[MainScene(gs).currentEpisode]]);
         for (i = 0; i < 800 / 52; i++)
         {
            for (j = 0; j < 800 / 52; j++)
            {
               if(floorPos[j][i] == -1)
               {
                  _loc11_.bitmapData.draw(_loc17_,null,null,null,new Rectangle(i * 52 + 10,j * 52 + 14,52,52));
               }
            }
         }

         for each(_loc10_ in gs.objects)
         {
            if(_loc10_ is FloorDecalBase && !(_loc10_ is FreeFloorDecal) || decalZOrderChange(_loc10_))
            {
               _loc10_.syncObj();
               if(Bitmap(_loc10_.obj).bitmapData)
               {
                  _loc11_.bitmapData.draw(Bitmap(_loc10_.obj).bitmapData,_loc10_.obj.transform.matrix,new ColorTransform(_loc10_.baseBrightness,_loc10_.baseBrightness,_loc10_.baseBrightness,_loc10_.baseAlpha),_loc10_.additive ? BlendMode.ADD : BlendMode.NORMAL,null,true);
               }
               _loc10_.remove();
            }
         }
         _loc11_.bitmapData.draw(_loc13_);
         _loc2_ = MainScene(gs).player;
         _loc18_ = 256;
         _loc11_.bitmapData.draw(_loc17_,null,null,null,new Rectangle(0,0,startx,600));
         _loc11_.bitmapData.draw(_loc17_,null,null,null,new Rectangle(endx,0,_loc18_,600));
         _loc11_.bitmapData.draw(_loc17_,null,null,null,new Rectangle(0,0,800,starty));
         _loc11_.bitmapData.draw(_loc17_,null,null,null,new Rectangle(0,endy,800,_loc18_));
         nofloorstartx = startx;
         nofloorstarty = starty;
         nofloorendx = endx;
         nofloorendy = endy;
         startx = 0;
         endx = 800;
         starty = 0;
         endy = 600;
         createDoors();
         for each(_loc10_ in gs.objects)
         {
            if(_loc10_ is FreeFloorDecal && !decalZOrderChange(_loc10_))
            {
               _loc10_.syncObj();
               if(_loc10_.animFrame != 85)
               {
                  if(_loc10_.animFrame == 74)
                  {
                     _loc10_.hidden = true;
                     trace(_loc10_);
                  }
                  else
                  {
                     if(Bitmap(_loc10_.obj).bitmapData)
                     {
                        _loc11_.bitmapData.draw(Bitmap(_loc10_.obj).bitmapData,_loc10_.obj.transform.matrix,new ColorTransform(_loc10_.baseBrightness,_loc10_.baseBrightness,_loc10_.baseBrightness,_loc10_.baseAlpha),_loc10_.additive ? BlendMode.ADD : BlendMode.NORMAL,null,true);
                     }
                     _loc10_.remove();
                  }
               }
            }
         }
         return _loc11_.bitmapData;
      }
      
      public function pickupValid(param1:PickupBase) : Boolean
      {
         if(hadWeapon && param1 is PickupWeapon)
         {
            return false;
         }
         if(hadItem && param1 is PickupItem)
         {
            return false;
         }
         if(param1 is PickupWeapon)
         {
            hadWeapon = true;
         }
         if(param1 is PickupItem)
         {
            hadItem = true;
         }
         return true;
      }
      
      public function validRoom(param1:int) : Boolean
      {
         var _loc2_:PlayerBase = MainScene(gs).player;
         var _loc3_:* = false;
         if(param1 == 0)
         {
            _loc3_ = _loc2_.lg.getCell(_loc2_.gridx,_loc2_.gridy - 1) > 0;
         }
         else if(param1 == 1)
         {
            _loc3_ = _loc2_.lg.getCell(_loc2_.gridx + 1,_loc2_.gridy) > 0;
         }
         else if(param1 == 2)
         {
            _loc3_ = _loc2_.lg.getCell(_loc2_.gridx,_loc2_.gridy + 1) > 0;
         }
         else if(param1 == 3)
         {
            _loc3_ = _loc2_.lg.getCell(_loc2_.gridx - 1,_loc2_.gridy) > 0;
         }
         return _loc3_;
      }
      
      public function createDoors() : void
      {
         var _loc3_:Door = null;
         var _loc1_:PlayerBase = MainScene(gs).player;
         var _loc2_:int = 0;
         while(_loc2_ < 4)
         {
            if(validRoom(_loc2_))
            {
               _loc3_ = new Door(gs,400,300);
               _loc3_.basex += _loc3_.cosd(_loc2_ * 90 - 90) * (400 - _loc3_.baseHeight / 2);
               _loc3_.basey += _loc3_.sind(_loc2_ * 90 - 90) * (300 - _loc3_.baseHeight / 2);
               if(_loc3_.basex > 600)
               {
                  _loc3_.basex += 1;
               }
               if(_loc3_.basey > 500)
               {
                  _loc3_.basey += 1;
               }
               _loc3_.baseRotation = _loc2_ * 90;
               _loc3_.targetGridX = rotationTargetX(_loc2_);
               _loc3_.targetGridY = rotationTargetY(_loc2_);
               _loc3_.floorTileX = rotationTargetFloorTileX(_loc2_);
               _loc3_.floorTileY = rotationTargetFloorTileY(_loc2_);
               _loc3_.rotationCount = _loc2_;
               if(MainScene(gs).player.pathLocked(_loc3_.targetGridX,_loc3_.targetGridY))
               {
                  _loc3_.setOpen(false);
               }
               else if(MainScene(gs).countEnemies() == 0)
               {
                  _loc3_.setOpen(true);
               }
               else if(rotationPointsToGrid(_loc2_,MainScene(gs).oldGridX,MainScene(gs).oldGridY))
               {
                  _loc3_.setOpen(true);
                  Sounds.doorClose.play();
               }
               else
               {
                  _loc3_.setOpen(false);
               }
            }
            _loc2_++;
         }
      }
      
      public function expediateAmbush() : void
      {
         var _loc1_:GameObject = null;
         if(ambushRoom)
         {
            for each(_loc1_ in gs.objects)
            {
               if(_loc1_ is EnemyBase)
               {
                  EnemyBase(_loc1_).expediateTeleport();
               }
            }
            if(ambushProgress < 100)
            {
               RewardText.createRewardText(gs,400,300,"AMBUSH!","TextLayer",16730174);
               Sounds.trap.play();
            }
            ambushRoom = false;
         }
      }
   }
}

