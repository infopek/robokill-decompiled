package Scenes
{
   import Audio.*;
   import GameLevels.*;
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import InventoryScreen.*;
   import Layouts.*;
   import LevelGridTools.LevelGrid;
   import Levels.*;
   import MapDisplay.*;
   import Misc.SpawnPoints;
   import ObjectBase.*;
   import ObjectConstructors.*;
   import Objects.*;
   import Particles.*;
   import SceneConstructors.*;
   import Serialization.Profile;
   import Serialization.SerializedObject;
   import Templates.RewardText;
   import Tools.*;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import flash.utils.*;
   
   public class MainScene extends GameScene
   {
      public static var doorWidth:int = 30;
      
      public static var edge:int = 0;
      
      public var nofloorstartx:int;
      
      public var nofloorstarty:int;
      
      public var floor:GameObject;
      
      public var lazyEnemiesCount:int = 0;
      
      public var fadingLevelComplete:Boolean = false;
      
      public var removeWhenFaded:Array = new Array();
      
      public var fadeOverlay:GameObject;
      
      public var fading:int = 0;
      
      public var toPlayer:PathfindToPoint = new PathfindToPoint(20,15);
      
      public var spawnPoints:SpawnPoints = new SpawnPoints();
      
      public var currentEpisode:int = 0;
      
      public var messageQueue:Array = null;
      
      public var deathSequence:int = 0;
      
      public var startx:int;
      
      public var starty:int;
      
      public var nofloorendy:int;
      
      public var nofloorendx:int;
      
      public var fadeTime:int = 15;
      
      public var menuButton:GameObject;
      
      public var currentLevel:GameLevel;
      
      public var fadingLatch:Boolean = false;
      
      public var floorMarks:Array = new Array();
      
      public var mapButton:GameObject;
      
      public var inventoryButton:GameObject;
      
      public var queuedCost:int = 0;
      
      public var player:PlayerBase;
      
      public var oldGridX:int;
      
      public var oldGridY:int;
      
      public var oldlx:int = 0;
      
      public var oldly:int = 0;
      
      public var _setFinishSequence:Boolean = false;
      
      public var partialFinishCount:int = 0;
      
      public var endx:int;
      
      public var endy:int;
      
      public function MainScene()
      {
         super();
         floor = new GameObject(this,Embeds.floor_base_jpg,"",400,300);
      }
      
      public static function getLogicalSquareX(param1:Number) : int
      {
         var _loc2_:Number = param1 - 10;
         var _loc3_:int = int(Math.floor(_loc2_ / 52));
         if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         if(_loc3_ > 800 / 52)
         {
            _loc3_ = 800 / 52;
         }
         return _loc3_;
      }
      
      public static function getLogicalSquareY(param1:Number) : int
      {
         var _loc2_:Number = param1 - 14;
         var _loc3_:int = int(Math.floor(_loc2_ / 52));
         if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         if(_loc3_ > 600 / 52)
         {
            _loc3_ = 600 / 52;
         }
         return _loc3_;
      }
      
      public function applyToFloor(floorDamages:Array) : *
      {
         floorMarks = floorDamages;

         var floorDamage:Array = null;
         var i:int = 0;
         for (i = 0; i < floorDamages.length; i++)
         {
            floorDamage = floorDamages[i];
            floor.drawToImage(floorDamage[0],floorDamage[1],floorDamage[2],floorDamage[3],floorDamage[4],floorDamage[5],
               BlendMode.NORMAL,new Rectangle(nofloorstartx,nofloorstarty,nofloorendx - nofloorstartx,nofloorendy - nofloorstarty),
               [floorDamage[6],floorDamage[7],floorDamage[8],1]
            );
         }
      }
      
      override public function particleKilledCallback(param1:Particle) : void
      {
         if(param1.StayAfterDeath)
         {
            markFloor(param1.b.bitmapData,param1.b.x,param1.b.y,param1.Rotation,param1.xscale,param1.yscale,param1.red,param1.green,param1.blue);
         }
      }
      
      public function regenerateGrid(param1:int, param2:int) : void
      {
         player.lg.setCellData(param1,param2,"Explored",null);
         player.lg.setCellData(param1,param2,"Regenerate",true);
         if(spawnPoints.contains(param1,param2))
         {
            spawnPoints.removePoint(param1,param2);
         }
      }
      
      public function setGlow(param1:GameObject, param2:Boolean = false) : void
      {
         if(param2)
         {
            if(param1.obj.filters.length < 1)
            {
               param1.obj.filters = [new GlowFilter(16777215)];
            }
         }
         else if(param1.obj.filters.length > 0)
         {
            param1.obj.filters = [];
         }
      }
      
      public function resetPlayer() : void
      {
         var _loc1_:LevelGrid = player.lg;
         var _loc2_:PlayerBase = player;
         player = new Player(this,400,300);
         player.lg = _loc1_;
         player.keyCount = _loc2_.keyCount;
         player.level = _loc2_.level;
         player.experience = _loc2_.experience;
         player.money = _loc2_.money;
         player.totalKills = _loc2_.totalKills;
         player.weapons = _loc2_.weapons;
         player.inventory = _loc2_.inventory;
         player.items = _loc2_.items;
         player.shopHelp = _loc2_.shopHelp;
         player.mapHelp = _loc2_.mapHelp;
         player.inventoryHelp = _loc2_.inventoryHelp;
         player.roomsExplored = _loc2_.roomsExplored;
         player.expediatedDrop = _loc2_.expediatedDrop;
      }
      
      override public function _register(param1:Sprite) : void
      {
         var _loc2_:MainScene_constructor = new MainScene_constructor();
         _loc2_.register(this,param1,true);
      }
      
      public function getSquare(param1:Number, param2:Number) : PathfindSquare
      {
         var _loc3_:int = getLogicalSquareX(param1);
         var _loc4_:int = getLogicalSquareY(param2);
         return toPlayer.getField(_loc3_,_loc4_);
      }
      
      public function countEnemies() : int
      {
         var go:GameObject = null;
         var count:int = 0;
         for each(go in objects)
         {
            if(go is EnemyBase)
            {
               count++;
            }
         }
         return count;
      }
      
      public function assignDifficultyToOne(param1:Class, param2:int) : void
      {
         var _loc3_:Array = getGroup(param1);
         if(_loc3_.length > 0)
         {
            _loc3_[Random.randInt(0,_loc3_.length - 1)].setupDifficulty(param2);
         }
      }
      
      override public function init() : void
      {
         player = new Player(this,400,300);
         newLevel();
         inventoryButton = new GameObject(this,SimpleButton,"TextLayer",0,0);
         mapButton = new GameObject(this,SimpleButton,"TextLayer",0,0);
         menuButton = new GameObject(this,SimpleButton,"TextLayer",0,0);
         inventoryButton.setupButton(Embeds.button_inv_png,"");
         mapButton.setupButton(Embeds.button_map_png,"");
         menuButton.setupButton(Embeds.button_menu_png,"");
         var _loc1_:Layout = horiz([inventoryButton,mapButton,menuButton],3);
         horiz([mapButton,inventoryButton,menuButton],3,800 - _loc1_.width() / 2 - 1,600 - _loc1_.height() / 2 + 3);
         var _loc2_:GameSoundScene = GameSoundScene.forName("Main");
         _loc2_.volumeTarget = 0.4;
      }
      
      public function spawnPointPresent() : Boolean
      {
         var _loc1_:GameObject = null;
         for each(_loc1_ in objects)
         {
            if(_loc1_ is RespawnPoint)
            {
               return true;
            }
         }
         return false;
      }
      
      public function goalQuota() : int
      {
         if(currentEpisode == 2 || currentEpisode == 7 || currentEpisode == 8)
         {
            return 4;
         }
         return 3;
      }
      
      public function getEnemyDifficulty() : int
      {
         if(currentEpisode == 0)
         {
            return 0;
         }
         if(currentEpisode == 1)
         {
            return Math.random() < 0.1 ? 1 : 0;
         }
         return 0;
      }
      
      public function metaUpdate() : void
      {
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         if(fading == 0)
         {
            if(countKeys() == 0)
            {
               if(countEnemies() == 0)
               {
                  if(spawnPointPresent())
                  {
                     spawnPoints.setPoint(player.gridx,player.gridy);
                  }
               }
            }
         }
         if(!player._removed)
         {
            if(fading == 0)
            {
               if(messageQueue)
               {
                  _loc4_ = 0;
                  while(_loc4_ < messageQueue.length)
                  {
                     RewardText.createRewardText(this,400,300 + _loc4_ * 40,messageQueue[_loc4_],"TextLayer",-1,1,_loc4_ * 100,100);
                     _loc4_++;
                  }
                  messageQueue = null;
                  if(queuedCost)
                  {
                     player.money -= queuedCost;
                     queuedCost = 0;
                     if(player.money < 0)
                     {
                        player.money = 0;
                     }
                  }
               }
            }
         }
         if(!player._removed)
         {
            if(countKeys() == 0)
            {
               if(countEnemies() == 0 && fading == 0)
               {
                  player.lg.setCellData(player.gridx,player.gridy,"Explored",true);
                  if(player.lg.getCellData(player.gridx,player.gridy,"Finish") != null)
                  {
                     startFinishSequence();
                  }
                  if(player.lg.getCellData(player.gridx,player.gridy,"PartialFinish") != null)
                  {
                     player.lg.setCellData(player.gridx,player.gridy,"PartialFinish",null);
                     player.lg.setCellData(player.gridx,player.gridy,"Complete",true);
                     if(doPartialFinish())
                     {
                        player.lg.setCellData(player.gridx,player.gridy,"Finish",true);
                        startFinishSequence();
                     }
                  }
               }
            }
         }
         if(!paused && player._removed && !_setFinishSequence)
         {
            ++deathSequence;
            if(deathSequence > 250)
            {
               finishDeath();
               fading = 1;
               deathSequence = 0;
            }
         }
         else
         {
            deathSequence = 0;
         }
         var _loc1_:int = player.logicalSquareX();
         var _loc2_:int = player.logicalSquareY();
         var _loc3_:PathfindSquare = toPlayer.getField(_loc1_,_loc2_);
         toPlayer.reconstructGraph(_loc1_,_loc2_);
         toPlayer.lazyUpdate();
         altLevelEndCheck();
         doCollisions();
         if(fading < 3)
         {
            fadingLatch = true;
         }
         if(fading == 3)
         {
            if(fadingLatch)
            {
               fadingLatch = false;
               _loc5_ = false;
               if(player._removed)
               {
                  player.queuedLevelUp = false;
                  player.queuedExperience = 0;
                  _loc5_ = true;
               }
               if(!player._removed)
               {
                  if(player.queuedLevelUp)
                  {
                     player.doLevelUp();
                     _loc5_ = true;
                  }
               }
               if(!_loc5_)
               {
                  player.triggerHelp();
               }
            }
         }
      }
      
      public function removeParticle(param1:Particle) : void
      {
         param1.deathCallback = null;
         param1.toKill = true;
      }
      
      public function moveEnemiesAwayFromPlayer() : void
      {
         var _loc1_:GameObject = null;
         var _loc2_:EnemyBase = null;
         var _loc3_:int = 0;
         for each(_loc1_ in objects)
         {
            if(_loc1_ is EnemyBase)
            {
               if(!EnemyBase(_loc1_).setsImpassable)
               {
                  if(!player.seekSpawnPoint)
                  {
                     if(player.distanceToObject(_loc1_) < 200)
                     {
                        _loc2_ = EnemyBase(_loc1_);
                        _loc3_ = 0;
                        while(_loc3_ < 20)
                        {
                           _loc1_.basex = -16 + 52 * (Math.random() * 16);
                           _loc1_.basey = -12 + 52 * (Math.random() * 14);
                           if(_loc1_.distanceToObject(player) > 400)
                           {
                              if(!_loc2_.noExistGreedy())
                              {
                                 if(!_loc2_.collidesWithAnything())
                                 {
                                    if(_loc1_.basex > 50 && _loc1_.basex < 750 && _loc1_.basey > 50 && _loc1_.basey < 550)
                                    {
                                       break;
                                    }
                                 }
                              }
                           }
                           if(_loc3_ == 20 - 1)
                           {
                              trace("no fit for enemy: rmeoving");
                              _loc1_.remove();
                           }
                           _loc3_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function someOtherCollision() : void
      {
         var _loc2_:GameObject = null;
         var _loc3_:Array = null;
         var _loc4_:GameObject = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:* = false;
         var _loc20_:* = false;
         var _loc21_:* = false;
         var _loc22_:* = false;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:Boolean = false;
         var _loc1_:Array = new Array();
         for each(_loc2_ in objects)
         {
            if(_loc2_ is FloorProp || _loc2_ is TreasureChestBase)
            {
               _loc1_.push(_loc2_);
            }
         }
         _loc3_ = new Array();
         for each(_loc4_ in objects)
         {
            if(_loc4_ is GameObjectBase && !(_loc4_ is FloorProp || _loc4_ is IdiotLightBase))
            {
               if(!(_loc4_ is RespawnPointBase))
               {
                  if(_loc4_ is EnemyBase ? EnemyBase(_loc4_).pushable : true)
                  {
                     if(GameObjectBase(_loc4_).collidesWithWalls)
                     {
                        _loc3_.push(_loc4_);
                     }
                  }
               }
            }
         }
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = GameObjectBase(_loc4_).collisionWidth();
            _loc6_ = GameObjectBase(_loc4_).collisionHeight();
            for each(_loc2_ in _loc1_)
            {
               _loc7_ = _loc4_.basex - _loc5_ / 2;
               _loc8_ = _loc4_.basex + _loc5_ / 2;
               _loc9_ = _loc4_.basey - _loc6_ / 2;
               _loc10_ = _loc4_.basey + _loc6_ / 2;
               _loc11_ = _loc4_.lastX - _loc5_ / 2;
               _loc12_ = _loc4_.lastX + _loc5_ / 2;
               _loc13_ = _loc4_.lastY - _loc6_ / 2;
               _loc14_ = _loc4_.lastY + _loc6_ / 2;
               _loc15_ = GameObjectBase(_loc2_).collisionWidth();
               _loc16_ = GameObjectBase(_loc2_).collisionHeight();
               _loc17_ = _loc14_ > _loc2_.basey - _loc16_ / 2 && _loc13_ < _loc2_.basey + _loc16_ / 2;
               _loc18_ = _loc12_ > _loc2_.basex - _loc15_ / 2 && _loc11_ < _loc2_.basex + _loc15_ / 2;
               _loc19_ = _loc11_ >= _loc2_.basex + _loc15_ / 2;
               _loc20_ = _loc12_ <= _loc2_.basex - _loc15_ / 2;
               _loc21_ = _loc13_ >= _loc2_.basey + _loc16_ / 2;
               _loc22_ = _loc14_ <= _loc2_.basey - _loc16_ / 2;
               _loc23_ = 0;
               _loc24_ = 0;
               if(!(_loc17_ || _loc18_))
               {
                  _loc17_ = _loc10_ > _loc2_.basey - _loc16_ / 2 && _loc9_ < _loc2_.basey + _loc16_ / 2;
                  _loc18_ = _loc8_ > _loc2_.basex - _loc15_ / 2 && _loc7_ < _loc2_.basex + _loc15_ / 2;
               }
               if(_loc4_.ticks <= 1)
               {
                  _loc19_ = true;
                  _loc20_ = true;
                  _loc21_ = true;
                  _loc22_ = true;
               }
               _loc25_ = false;
               if(_loc17_)
               {
                  if(_loc7_ < _loc2_.basex + _loc15_ / 2 && _loc19_)
                  {
                     if(_loc7_ >= _loc2_.basex)
                     {
                        _loc23_ = 1;
                        _loc4_.basex = _loc2_.basex + _loc15_ / 2 + _loc5_ / 2;
                        _loc25_ = true;
                     }
                  }
                  if(_loc8_ > _loc2_.basex - _loc15_ / 2 && _loc20_)
                  {
                     if(_loc8_ < _loc2_.basex)
                     {
                        _loc23_ = -1;
                        _loc4_.basex = _loc2_.basex - _loc15_ / 2 - _loc5_ / 2;
                        _loc25_ = true;
                     }
                  }
               }
               if(_loc18_)
               {
                  if(_loc9_ < _loc2_.basey + _loc16_ / 2 && _loc21_)
                  {
                     if(_loc9_ >= _loc2_.basey)
                     {
                        _loc24_ = 1;
                        _loc4_.basey = _loc2_.basey + _loc16_ / 2 + _loc6_ / 2;
                        _loc25_ = true;
                     }
                  }
                  if(_loc10_ > _loc2_.basey - _loc16_ / 2 && _loc22_)
                  {
                     if(_loc10_ < _loc2_.basey)
                     {
                        _loc24_ = -1;
                        _loc4_.basey = _loc2_.basey - _loc16_ / 2 - _loc6_ / 2;
                        _loc25_ = true;
                     }
                  }
               }
               if(_loc25_)
               {
                  if(_loc4_ is GameObjectBase)
                  {
                     GameObjectBase(_loc4_).hasHitWall(_loc23_,_loc24_);
                     GameObjectBase(_loc4_).wallHitCount = GameObjectBase(_loc4_).wallHitCount + 2;
                  }
                  if(_loc2_ is FloorProp)
                  {
                     FloorProp(_loc2_).hasBeenHit(_loc4_);
                  }
               }
            }
         }
      }
      
      public function markFloor(param1:BitmapData, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number = 1, param8:Number = 0, param9:Number = 0) : void
      {
         var _loc11_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:PathfindSquare = null;
         var _loc10_:int = 0;
         while(_loc10_ <= 2)
         {
            _loc11_ = 0;
            while(_loc11_ <= 2)
            {
               _loc12_ = param2 + _loc10_ * param1.width / 2;
               _loc13_ = param3 + _loc11_ * param1.height / 2;
               _loc14_ = getLogicalSquareX(_loc12_);
               _loc15_ = getLogicalSquareY(_loc13_);
               _loc16_ = toPlayer.getField(_loc14_,_loc15_);
               if(!!_loc16_ ? !_loc16_.exists : true)
               {
                  return;
               }
               _loc11_++;
            }
            _loc10_++;
         }
         floor.drawToImage(param1,param2,param3,param4,param5,param6,BlendMode.NORMAL,new Rectangle(nofloorstartx,nofloorstarty,nofloorendx - nofloorstartx,nofloorendy - nofloorstarty),[param7,param8,param9,1]);
         floorMarks.push([param1,param2,param3,param4,param5,param6,param7,param8,param9]);
      }
      
      public function doEnemyDifficulty() : void
      {
         if (currentEpisode == 0) {
            assignDifficultyToGroup(GruntBase,1);
            assignDifficultyToGroup(Grunt,1);
         }
         if(currentEpisode == 1)
         {
            assignDifficultyToOne(GruntBase,1);
            assignDifficultyToGroup(SwarmBase,1,4);
         }
         if(currentEpisode == 2)
         {
            assignDifficultyToGroup(GruntBase,1,4);
            assignDifficultyToGroup(Spider,1,1);
            assignDifficultyToGroup(SwarmBase,1);
            assignDifficultyToGroup(SpawnBase,1,1);
         }
         if(currentEpisode == 3)
         {
            assignDifficultyToGroup(Grunt,1);
            assignDifficultyToGroup(Grunt,2,1);
            assignDifficultyToGroup(SpawnBase,1,4);
            assignDifficultyToGroup(Turret,2,1);
            assignDifficultyToGroup(Hulk,2,1);
            assignDifficultyToGroup(Spider,1);
            assignDifficultyToGroup(SwarmBase,1);
            assignDifficultyToGroup(SwarmBase,2,1);
         }
         if(currentEpisode == 4)
         {
            assignDifficultyToGroup(Grunt,1);
            assignDifficultyToGroup(Grunt,2,4);
            assignDifficultyToGroup(Spawn,1);
            assignDifficultyToGroup(Spider,1);
            assignDifficultyToGroup(Turret,2,2);
            assignDifficultyToGroup(Swarm,1);
            assignDifficultyToGroup(Swarm,2,4);
            assignDifficultyToGroup(Hulk,1,4);
            assignDifficultyToGroup(Hover,1,2);
            assignDifficultyToGroup(SpiderGunner,1,2);
         }
         if(currentEpisode == 5)
         {
            assignDifficultyToGroup(Grunt,2);
            assignDifficultyToGroup(Spawn,1);
            assignDifficultyToGroup(Spider,1);
            assignDifficultyToGroup(Spider,2,1);
            assignDifficultyToGroup(Turret,1,4);
            assignDifficultyToGroup(Swarm,2);
            assignDifficultyToGroup(Hulk,1);
            assignDifficultyToGroup(Hover,1,4);
            assignDifficultyToGroup(SpiderGunner,1,4);
            assignDifficultyToGroup(GunFighter,1,1);
            assignDifficultyToGroup(BigTurret,1,1);
            assignDifficultyToGroup(ShootingGrunt,1,4);
         }
         if(currentEpisode == 6)
         {
            assignDifficultyToGroup(Grunt,2);
            assignDifficultyToGroup(Spawn,2,1);
            assignDifficultyToGroup(Spider,2,2);
            assignDifficultyToGroup(Turret,1);
            assignDifficultyToGroup(Swarm,2);
            assignDifficultyToGroup(Hulk,2);
            assignDifficultyToGroup(Hover,2,1);
            assignDifficultyToGroup(SpiderGunner,1);
            assignDifficultyToGroup(GunFighter,1);
            assignDifficultyToGroup(BigTurret,1);
            assignDifficultyToGroup(ShootingGrunt,1);
            assignDifficultyToGroup(BigFlyBot,1,1);
            assignDifficultyToGroup(SpiderSpit,1,1);
         }
         if(currentEpisode == 7)
         {
            assignDifficultyToGroup(Grunt,2);
            assignDifficultyToGroup(Spawn,2,4);
            assignDifficultyToGroup(Spider,2,4);
            assignDifficultyToGroup(Turret,2,1);
            assignDifficultyToGroup(Swarm,2);
            assignDifficultyToGroup(Hulk,2,1);
            assignDifficultyToGroup(Hover,2,2);
            assignDifficultyToGroup(SpiderGunner,2,2);
            assignDifficultyToGroup(GunFighter,1);
            assignDifficultyToGroup(BigTurret,1);
            assignDifficultyToGroup(ShootingGrunt,2,4);
            assignDifficultyToGroup(BigFlyBot,1,4);
            assignDifficultyToGroup(SpiderSpit,1,4);
            assignDifficultyToGroup(RoboWalker,1,1);
            assignDifficultyToGroup(MineLayer,1,2);
            assignDifficultyToGroup(HoverSwarm,1,4);
         }
         if(currentEpisode == 8)
         {
            assignDifficultyToGroup(Grunt,2);
            assignDifficultyToGroup(Spawn,2);
            assignDifficultyToGroup(Spider,2);
            assignDifficultyToGroup(Turret,2,4);
            assignDifficultyToGroup(Swarm,2);
            assignDifficultyToGroup(Hulk,2,4);
            assignDifficultyToGroup(Hover,2,4);
            assignDifficultyToGroup(SpiderGunner,2,4);
            assignDifficultyToGroup(GunFighter,2,1);
            assignDifficultyToGroup(BigTurret,2,1);
            assignDifficultyToGroup(ShootingGrunt,2);
            assignDifficultyToGroup(BigFlyBot,1);
            assignDifficultyToGroup(SpiderSpit,1);
            assignDifficultyToGroup(RoboWalker,1);
            assignDifficultyToGroup(MineLayer,1);
            assignDifficultyToGroup(Sleeper,1,2);
            assignDifficultyToGroup(HoverSwarm,1);
            assignDifficultyToGroup(Inertia,1,2);
         }
         if(currentEpisode == 9)
         {
            assignDifficultyToGroup(Grunt,2);
            assignDifficultyToGroup(Spawn,2);
            assignDifficultyToGroup(Spider,2);
            assignDifficultyToGroup(Turret,2);
            assignDifficultyToGroup(Swarm,2);
            assignDifficultyToGroup(Hulk,2);
            assignDifficultyToGroup(Hover,2);
            assignDifficultyToGroup(SpiderGunner,2);
            assignDifficultyToGroup(GunFighter,2);
            assignDifficultyToGroup(BigTurret,2);
            assignDifficultyToGroup(ShootingGrunt,2);
            assignDifficultyToGroup(BigFlyBot,2,1);
            assignDifficultyToGroup(SpiderSpit,2,1);
            assignDifficultyToGroup(RoboWalker,2,1);
            assignDifficultyToGroup(MineLayer,2,1);
            assignDifficultyToGroup(Sleeper,1);
            assignDifficultyToGroup(HoverSwarm,2,4);
            assignDifficultyToGroup(Inertia,1);
            assignDifficultyToGroup(HoverSpawn,1);
         }
         if(currentEpisode == 10)
         {
            assignDifficultyToGroup(Grunt,3);
            assignDifficultyToGroup(Spawn,3);
            assignDifficultyToGroup(Spider,3);
            assignDifficultyToGroup(Turret,3);
            assignDifficultyToGroup(Swarm,3);
            assignDifficultyToGroup(Hulk,3);
            assignDifficultyToGroup(Hover,3);
            assignDifficultyToGroup(SpiderGunner,3);
            assignDifficultyToGroup(GunFighter,2);
            assignDifficultyToGroup(BigTurret,2);
            assignDifficultyToGroup(ShootingGrunt,3);
            assignDifficultyToGroup(BigFlyBot,2);
            assignDifficultyToGroup(SpiderSpit,3,1);
            assignDifficultyToGroup(RoboWalker,2);
            assignDifficultyToGroup(MineLayer,2);
            assignDifficultyToGroup(Sleeper,2,1);
            assignDifficultyToGroup(HoverSwarm,3);
            assignDifficultyToGroup(Inertia,2,1);
         }
         if(currentEpisode == 11)
         {
            assignDifficultyToGroup(Grunt,3);
            assignDifficultyToGroup(Spawn,3);
            assignDifficultyToGroup(Spider,3);
            assignDifficultyToGroup(Turret,3);
            assignDifficultyToGroup(Swarm,3);
            assignDifficultyToGroup(Hulk,3);
            assignDifficultyToGroup(Hover,3);
            assignDifficultyToGroup(SpiderGunner,3);
            assignDifficultyToGroup(GunFighter,2);
            assignDifficultyToGroup(BigTurret,3,1);
            assignDifficultyToGroup(ShootingGrunt,3);
            assignDifficultyToGroup(BigFlyBot,3,1);
            assignDifficultyToGroup(SpiderSpit,3,1);
            assignDifficultyToGroup(RoboWalker,2);
            assignDifficultyToGroup(MineLayer,2);
            assignDifficultyToGroup(Sleeper,2);
            assignDifficultyToGroup(HoverSwarm,3);
            assignDifficultyToGroup(Inertia,2);
            assignDifficultyToGroup(Beserker,1);
         }
         if(currentEpisode == 12)
         {
            assignDifficultyToGroup(Grunt,3);
            assignDifficultyToGroup(Spawn,3);
            assignDifficultyToGroup(Spider,3);
            assignDifficultyToGroup(Turret,3);
            assignDifficultyToGroup(Swarm,3);
            assignDifficultyToGroup(Hulk,3);
            assignDifficultyToGroup(Hover,3);
            assignDifficultyToGroup(SpiderGunner,3);
            assignDifficultyToGroup(GunFighter,3,1);
            assignDifficultyToGroup(BigTurret,3);
            assignDifficultyToGroup(ShootingGrunt,3);
            assignDifficultyToGroup(BigFlyBot,3,1);
            assignDifficultyToGroup(SpiderSpit,3,1);
            assignDifficultyToGroup(RoboWalker,2);
            assignDifficultyToGroup(MineLayer,3,1);
            assignDifficultyToGroup(Sleeper,3,1);
            assignDifficultyToGroup(HoverSwarm,3);
            assignDifficultyToGroup(Inertia,3,1);
            assignDifficultyToGroup(Beserker,1);
         }
      }
      
      public function assignDifficultyToGroup(
         enemyType:Class, 
         param2:int, 
         param3:int = -1
      ) : void
      {
         var _loc5_:EnemyBase = null;
         if(param2 == 2 && param3 != -1)
         {
            assignDifficultyToGroup(enemyType,1);
         }
         if(param2 == 3 && param3 != -1)
         {
            assignDifficultyToGroup(enemyType,2);
         }
         var _loc4_:Array = getGroup(enemyType);
         if(param3 != -1)
         {
            _loc4_ = Random.randArrayElements(_loc4_,param3);
         }
         for each(_loc5_ in _loc4_)
         {
            _loc5_.setupDifficulty(param2);
         }
      }
      
      public function initLevel(param1:Array) : Array
      {
         var go:GameObject = null;
         var ogo:GameObject = null;
         var levelArray:Array = param1;
         var objs:Array = levelArray[0].init(levelArray[1],this);
         for each(go in objs)
         {
            go.basex += 52 * 15 * (levelArray[2] - 0.5);
            go.basey += 52 * 11 * (levelArray[3] - 0.5);
            if(go is GameObjectBase)
            {
               for each(ogo in objects)
               {
                  if(ogo != go)
                  {
                     if(ogo is FloorProp)
                     {
                        if(FloorProp(ogo).logicalSquareX() == GameObjectBase(go).logicalSquareX())
                        {
                           if(FloorProp(ogo).logicalSquareY() == GameObjectBase(go).logicalSquareY())
                           {
                              ogo.remove();
                           }
                        }
                     }
                  }
               }
            }
            if(go is EnemyBase)
            {
               EnemyBase(go).setupDifficulty(0);
            }
         }
         objs = objs.filter(function(param1:Object, param2:int, param3:Array):Boolean
         {
            return !GameObject(param1)._removed;
         });
         return objs;
      }
      
      public function hasCommWindow() : Boolean
      {
         var _loc1_:GameObject = null;
         for each(_loc1_ in objects)
         {
            if(_loc1_ is CommWindow)
            {
               return true;
            }
         }
         return false;
      }
      
      public function setExists(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc4_:PathfindSquare = toPlayer.getField(param1,param2);
         if(!_loc4_)
         {
            return;
         }
         _loc4_.exists = param3;
      }
      
      public function justFinishedFading() : Boolean
      {
         return fading == fadeTime + 8;
      }
      
      public function altLevelEndCheck() : void
      {
         if(!canMoveRooms())
         {
            return;
         }
         oldGridX = player.gridx;
         oldGridY = player.gridy;
         var _loc1_:Boolean = false;
         if((player.basex >= 800 - edge || player.basex <= edge) && (player.basey > 300 - doorWidth && player.basey < 300 + doorWidth))
         {
            if(player.basex > 400)
            {
               if(player.canMove(1,0))
               {
                  if(player.hasKeysFor(player.gridx + 1,player.gridy))
                  {
                     _loc1_ = true;
                     player.destBaseX = 40;
                     player.destBaseY = player.basey;
                     player.gridx += 1;
                  }
               }
            }
            else if(player.canMove(-1,0))
            {
               if(player.hasKeysFor(player.gridx - 1,player.gridy))
               {
                  player.destBaseX = 760;
                  player.destBaseY = player.basey;
                  _loc1_ = true;
                  --player.gridx;
               }
            }
         }
         if((player.basey >= 600 - edge || player.basey <= edge) && (player.basex >= 400 - doorWidth && player.basex <= 400 + doorWidth))
         {
            if(player.basey > 300)
            {
               if(player.canMove(0,1))
               {
                  if(player.hasKeysFor(player.gridx,player.gridy + 1))
                  {
                     _loc1_ = true;
                     player.destBaseX = player.basex;
                     player.destBaseY = 40;
                     player.gridy += 1;
                  }
               }
            }
            else if(player.canMove(0,-1))
            {
               if(player.hasKeysFor(player.gridx,player.gridy - 1))
               {
                  _loc1_ = true;
                  player.destBaseX = player.basex;
                  player.destBaseY = 560;
                  --player.gridy;
               }
            }
         }
         if(_loc1_)
         {
            fading = 1;
         }
      }
      
      public function countUnopenedChests() : int
      {
         var _loc2_:GameObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in objects)
         {
            if(_loc2_ is TreasureChestBase)
            {
               if(!TreasureChestBase(_loc2_).opened)
               {
                  _loc1_++;
               }
            }
         }
         return _loc1_;
      }
      
      public function doCollisions() : void
      {
         var _loc1_:GameObject = null;
         var _loc4_:int = 0;
         var _loc5_:GameObject = null;
         var _loc6_:int = 0;
         var _loc7_:EnemyBase = null;
         var _loc8_:EnemyBase = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Boolean = false;
         var _loc2_:Array = new Array(200);
         var _loc3_:int = 0;
         for each(_loc1_ in objects)
         {
            if(_loc1_ is EnemyBase)
            {
               _loc2_[_loc3_] = _loc1_;
               _loc3_++;
            }
         }
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc3_)
            {
               if(_loc4_ != _loc6_)
               {
                  _loc7_ = _loc2_[_loc4_];
                  _loc8_ = _loc2_[_loc6_];
                  _loc9_ = _loc7_.basex - _loc8_.basex;
                  _loc10_ = _loc7_.basey - _loc8_.basey;
                  if(_loc9_ > -40 && _loc9_ < 40)
                  {
                     if(_loc10_ > -40 && _loc10_ < 40)
                     {
                        if(_loc7_.distanceToObject(_loc8_) < _loc7_.dist + _loc8_.dist)
                        {
                           _loc11_ = _loc7_.angleToObject(_loc8_);
                           if(_loc7_.pushable && _loc8_.pushable)
                           {
                              _loc7_.basex -= Math.cos(_loc11_ * Math.PI / 180) * 0.5;
                              _loc7_.basey -= Math.sin(_loc11_ * Math.PI / 180) * 0.5;
                              _loc8_.basex += Math.cos(_loc11_ * Math.PI / 180) * 0.5;
                              _loc8_.basey += Math.sin(_loc11_ * Math.PI / 180) * 0.5;
                              _loc7_.enemyHitCount += 2;
                              _loc8_.enemyHitCount += 2;
                              _loc7_.pushing(_loc8_);
                           }
                        }
                     }
                  }
               }
               _loc6_++;
            }
            _loc4_++;
         }
         someOtherCollision();
      }
      
      public function setPassable(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc4_:PathfindSquare = toPlayer.getField(param1,param2);
         if(!_loc4_)
         {
            return;
         }
         _loc4_.passable = param3;
      }
      
      public function startFinishSequence() : void
      {
         if(countEnemies() != 0)
         {
            return;
         }
         if(_setFinishSequence)
         {
            return;
         }
         if(countEnemyBullets() != 0)
         {
            return;
         }
         if(countUnopenedChests() != 0)
         {
            return;
         }
         if(!currentLevel.lastRoomCanEnd())
         {
            return;
         }
         if(rescueShipBlocking())
         {
            return;
         }
         _setFinishSequence = true;
         var _loc1_:int = int(Profile.current.lookup("currentmission"));
         if(_loc1_ < currentEpisode + 1)
         {
            _loc1_ = currentEpisode + 1;
            Profile.current.store("currentmission",_loc1_);
         }
         var _loc2_:CommWindow = new CommWindow(this,0,0,true);
      }
      
      public function makeParticlesFall(param1:Particle) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:PathfindSquare = null;
         if(param1.StayAfterDeath)
         {
            if(param1.x < startx + 16)
            {
               if(param1.dx < 0)
               {
                  param1.dx *= -1;
               }
               if(param1.dx < 1)
               {
                  param1.dx = 1;
               }
            }
            if(param1.x > endx - 16)
            {
               if(param1.dx > 0)
               {
                  param1.dx *= -1;
               }
               if(param1.dx > -1)
               {
                  param1.dx = -1;
               }
            }
            if(param1.y < starty + 16)
            {
               if(param1.dy < 0)
               {
                  param1.dy *= -1;
               }
               if(param1.dy < 1)
               {
                  param1.dy = 1;
               }
            }
            if(param1.y > endy - 16)
            {
               if(param1.dy > 0)
               {
                  param1.dy *= -1;
               }
               if(param1.dy > -1)
               {
                  param1.dy = -1;
               }
            }
         }
         if(param1.identifier == "Fall")
         {
            _loc2_ = getLogicalSquareX(param1.x);
            _loc3_ = getLogicalSquareY(param1.y);
            _loc4_ = toPlayer.getField(_loc2_,_loc3_);
            if(param1.x < 780 && param1.y < 580 && param1.x > 20 && param1.y > 20)
            {
               if(!_loc4_.exists)
               {
                  param1.StartAlpha -= 0.01;
                  param1.EndAlpha -= 0.01;
                  if(param1.StartAlpha < 0 && Boolean(param1.EndAlpha))
                  {
                     param1.toKill = true;
                  }
               }
            }
         }
      }
      
      public function levelEndCheck() : void
      {
         var _loc2_:GameObject = null;
         var _loc1_:Boolean = false;
         for each(_loc2_ in objects)
         {
            if(_loc2_ is EnemyBase)
            {
               if(EnemyBase(_loc2_).blocksNewLevel)
               {
                  _loc1_ = true;
               }
            }
         }
         if(!_loc1_)
         {
            for each(_loc2_ in objects)
            {
               if(_loc2_ is EnemyBase)
               {
                  _loc2_.remove();
               }
            }
            newLevel();
         }
      }
      
      public function resistanceForLevel() : Number
      {
         return 1 + 3 * currentEpisode * 0.05;
      }
      
      public function finishDeath() : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         regenerateGrid(player.gridx,player.gridy);
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            if(regenerateRandomPoint())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         if(_loc1_ > 0)
         {
            if(_loc1_ == 1)
            {
               _loc3_ = "ROBOTS HAVE RECLAIMED 1 ROOM";
            }
            else
            {
               _loc3_ = "ROBOTS HAVE RECLAIMED " + _loc1_ + " ROOMS";
            }
            _loc4_ = (player.level + 1) * 50;
            if(_loc4_ > player.money)
            {
               _loc4_ = player.money;
            }
            queuedCost = _loc4_;
            if(_loc4_ > 0)
            {
               messageQueue = [_loc3_,"DEATH TAKES A TOLL OF -$" + _loc4_];
            }
            else
            {
               messageQueue = [_loc3_];
            }
         }
      }
      
      public function countKeys() : int
      {
         var _loc2_:GameObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in objects)
         {
            if(_loc2_ is PickupKey)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function doPartialFinish() : Boolean
      {
         ++partialFinishCount;
         RewardText.createRewardText(this,400,300,partialFinishCount + "/" + goalQuota() + " " + goalText(),"TextLayer",-1,1,0,150);
         if(partialFinishCount >= goalQuota())
         {
            partialFinishCount = 0;
            return true;
         }
         return false;
      }
      
      public function changeLevel(param1:Boolean = true) : void
      {
         var _loc3_:GameObject = null;
         var _loc2_:Array = new Array();
         var idx:Boolean = true;
         for each(_loc3_ in objects)
         {
            if(_loc3_ is GameObjectBase)
            {
               if(!(_loc3_ is PlayerBase))
               {
                  if(_loc3_ is EnemyBase || _loc3_ is PickupBase || _loc3_ is FloorProp || _loc3_ is RespawnPoint || _loc3_ is ShopTile || _loc3_ is ShuttleBase)
                  {
                     if(_loc3_ is ShuttleBase ? countEnemies() > 0 : true)
                     {
                        if(_loc3_ is EnemyBase ? EnemyBase(_loc3_).saveBetweenLevels() : true)
                        {
                           _loc2_.push(SerializedObject.serialize(_loc3_));
                        }
                     }
                  }
                  _loc3_.remove();
               }
            }
         }
         if(param1)
         {
            player.lg.setCellData(oldGridX,oldGridY,"Data",_loc2_);
            player.lg.setCellData(oldGridX,oldGridY,"FloorDamage",floorMarks);
            player.lg.setCellData(oldGridX,oldGridY,"GameLevel",currentLevel);
         }
         newLevel();
      }
      
      public function canMoveRooms() : Boolean
      {
         if(countEnemies() > 0)
         {
            return false;
         }
         if(fading > 0)
         {
            return false;
         }
         if(player.inLevelEnd())
         {
            return false;
         }
         if(countKeys() > 0)
         {
            return false;
         }
         if(player._removed)
         {
            return false;
         }
         return true;
      }
      
      public function countEnemyBullets() : int
      {
         var _loc2_:GameObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in objects)
         {
            if(_loc2_ is EnemyBulletBase)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function initCurrentLevel() : void
      {
         currentLevel.overArrowsCreated = false;
         currentLevel.gs = this;
         startx = currentLevel.startx;
         starty = currentLevel.starty;
         endx = currentLevel.endx;
         endy = currentLevel.endy;
         nofloorstartx = currentLevel.nofloorstartx;
         nofloorstarty = currentLevel.nofloorstarty;
         nofloorendx = currentLevel.nofloorendx;
         nofloorendy = currentLevel.nofloorendy;
      }
      
      public function rescueShipBlocking() : Boolean
      {
         var _loc1_:GameObject = null;
         for each(_loc1_ in objects)
         {
            if(_loc1_ is Shuttle)
            {
               if(Shuttle(_loc1_).fading < 200)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function regenerateRandomPoint() : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < player.lg.grid.length)
         {
            _loc3_ = 0;
            while(_loc3_ < player.lg.grid[_loc2_].length)
            {
               if(player.lg.getCell(_loc3_,_loc2_) > 0)
               {
                  if(_loc3_ != player.lg.startx || _loc2_ != player.lg.starty)
                  {
                     if(player.lg.getCellData(_loc3_,_loc2_,"Complete") == null)
                     {
                        if(player.lg.getCellData(_loc3_,_loc2_,"Explored") == true)
                        {
                           _loc4_ = -1;
                           while(_loc4_ < 2)
                           {
                              _loc5_ = -1;
                              while(_loc5_ < 2)
                              {
                                 if(_loc5_ == 0 || _loc4_ == 0)
                                 {
                                    if(player.lg.getCell(_loc3_ + _loc5_,_loc2_ + _loc4_) > 0)
                                    {
                                       if(player.lg.getCellData(_loc3_ + _loc5_,_loc2_ + _loc4_,"Explored") != true)
                                       {
                                          _loc1_.push([_loc3_,_loc2_]);
                                       }
                                    }
                                 }
                                 _loc5_ += 1;
                              }
                              _loc4_ += 1;
                           }
                        }
                     }
                  }
               }
               _loc3_++;
            }
            _loc2_++;
         }
         if(_loc1_.length > 0)
         {
            _loc6_ = Random.randInt(0,_loc1_.length - 1);
            regenerateGrid(_loc1_[_loc6_][0],_loc1_[_loc6_][1]);
            return true;
         }
         return false;
      }
      
      public function getGroup(param1:Class) : Array
      {
         var _loc3_:GameObject = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in objects)
         {
            if(_loc3_ is param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function newLevel() : void
      {
         var _loc1_:GameObject = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:Class = null;
         var _loc6_:GameObject = null;
         flushParticles();
         for each(_loc1_ in objects)
         {
            if(_loc1_ is PickupText || _loc1_ is Door || _loc1_ is FloorProp || _loc1_ is FreeFloorDecal)
            {
               _loc1_.remove();
            }
         }
         syncRemoved();
         toPlayer = new PathfindToPoint(800 / 40,600 / 40);
         if(!player.lg.getCellData(player.gridx,player.gridy,"Data"))
         {
            _loc2_ = Math.abs(player.gridx - player.lg.startx) + Math.abs(player.gridy - player.lg.starty);
            currentLevel = generateLevelBasedOnDistance(_loc2_);
            currentLevel.gs = this;
            Bitmap(floor.obj).bitmapData = currentLevel.getFloor(true);
            initCurrentLevel();
            floorMarks = new Array();
         }
         else
         {
            _loc3_ = player.lg.getCellData(player.gridx,player.gridy,"Data") as Array;
            _loc4_ = 0;
            var len:int = _loc3_.length;
            while(_loc4_ < _loc3_.length)
            {
               _loc5_ = getDefinitionByName(_loc3_[_loc4_].typeName) as Class;
               _loc1_ = GameObject(new _loc5_(this,0,0));
               _loc3_[_loc4_].applyTo(_loc1_);
               if(_loc1_ is EnemyBase)
               {
                  EnemyBase(_loc1_).setupDifficulty(EnemyBase(_loc1_).toughness);
               }
               _loc4_++;
            }
            if(player.lg.getCellData(player.gridx,player.gridy,"Regenerate") == true)
            {
               player.lg.setCellData(player.gridx,player.gridy,"Regenerate",false);
               for each(_loc1_ in objects)
               {
                  if(_loc1_ is EnemyBase)
                  {
                     EnemyBase(_loc1_).kill();
                  }
               }
               update();
               generateLevelBasedOnDistance(1,true);
               for each(_loc1_ in objects)
               {
                  for each(_loc6_ in objects)
                  {
                     if(_loc1_ != _loc6_)
                     {
                        if(!(_loc1_._removed || _loc6_._removed))
                        {
                           if(_loc1_ is PickupBase && _loc6_ is PickupBase)
                           {
                              if(_loc1_.basex == _loc6_.basex && _loc1_.basey == _loc6_.basey)
                              {
                                 _loc6_.remove();
                              }
                           }
                        }
                     }
                  }
               }
            }
            currentLevel = GameLevel(player.lg.getCellData(player.gridx,player.gridy,"GameLevel"));
            currentLevel.gs = this;
            Bitmap(floor.obj).bitmapData = currentLevel.getFloor(false);
            initCurrentLevel();
            applyToFloor(player.lg.getCellData(player.gridx,player.gridy,"FloorDamage") as Array);
            player.lg.setCellData(player.gridx,player.gridy,"Data",null);
         }
         if(player.lg.getCellData(player.gridx,player.gridy,"Start"))
         {
            if(currentEpisode == 0)
            {
               new Ship(this,200,300);
            }
            if(player.lg.getCellData(player.gridx,player.gridy,"CommPlayed") != true)
            {
               player.lg.setCellData(player.gridx,player.gridy,"CommPlayed",true);
               new CommWindow(this,400,20);
            }
         }
         if(player.lg.getCellData(player.gridx,player.gridy,"Finish"))
         {
            if(currentEpisode == 6)
            {
               new Ship(this,200,300);
            }
         }
         if(player.seekSpawnPoint)
         {
            for each(_loc1_ in objects)
            {
               if(_loc1_ is RespawnPoint)
               {
                  player.basex = _loc1_.basex;
                  player.basey = _loc1_.basey;
                  player.seekSpawnPoint = false;
               }
            }
         }
         moveEnemiesAwayFromPlayer();
         lazyEnemiesCount = countEnemies();
      }
      
      public function goalText() : String
      {
         if(currentEpisode == 2)
         {
            return "MANUFACTURING UNITS DESTROYED";
         }
         if(currentEpisode == 4)
         {
            return "SHUTTLES RESCUED";
         }
         if(currentEpisode == 7)
         {
            return "ASSASSIN BOTS DESTROYED";
         }
         if(currentEpisode == 8)
         {
            return "RARE WEAPONS FOUND";
         }
         return "";
      }
      
      override public function _update() : void
      {
         var _loc3_:GameObject = null;
         var _loc4_:Array = null;
         var _loc1_:* = false;
         var _loc2_:* = false;
         if(!player.inventoryHelp)
         {
            _loc2_ = Ticks % 100 > 50;
         }
         else if(!player.mapHelp)
         {
            _loc1_ = Ticks % 100 > 50;
         }
         setGlow(mapButton,_loc1_);
         setGlow(inventoryButton,_loc2_);
         if(player._removed)
         {
            if(player.experience >= player.experienceForLevel())
            {
               player.experience = player.experienceForLevel() - 1;
            }
         }
         if(_paused)
         {
            if(player.expSoundChannel)
            {
               if(player.expSoundChannel.playing())
               {
                  player.expSoundChannel.stop();
               }
            }
         }
         player.setHud();
         if(!fadeOverlay)
         {
            fadeOverlay = new GameObject(this,GraphicsTools.createFilledSprite(800,600,4278190080),"AfterTextLayer",400,300);
            fadeOverlay.hide();
         }
         lazyEnemiesCount = countEnemies();
         applyToParticles(makeParticlesFall);
         if(!HUDDisplay.any())
         {
            if(fading)
            {
               ++fading;
               paused = fading < fadeTime;
               if(fading == fadeTime + 5)
               {
                  applyToParticles(removeParticle);
                  for each(_loc3_ in removeWhenFaded)
                  {
                     _loc3_.remove();
                  }
                  for each(_loc3_ in objects)
                  {
                     if(_loc3_ is RewardText)
                     {
                        _loc3_.remove();
                     }
                     if(_loc3_ is ControlHelp)
                     {
                        ControlHelp(_loc3_).roomChange();
                     }
                  }
                  removeWhenFaded = new Array();
                  if(fadingLevelComplete)
                  {
                     ++currentEpisode;
                     spawnPoints = new SpawnPoints();
                     if(player._removed)
                     {
                        resetPlayer();
                     }
                     player.lg = new LevelGrid();
                     player.lg.init(currentEpisode);
                     player.gridx = player.lg.startx;
                     player.gridy = player.lg.starty;
                     player.seekSpawnPoint = true;
                     player.teleporting = 0;
                     player.teleportOffset = 0;
                     player.keyCount = 0;
                     fadingLevelComplete = false;
                     _setFinishSequence = false;
                     changeLevel(false);
                  }
                  else if(player._removed)
                  {
                     oldGridX = player.gridx;
                     oldGridY = player.gridy;
                     resetPlayer();
                     _loc4_ = spawnPoints.getPoint(oldGridX,oldGridY);
                     if(!_loc4_)
                     {
                        _loc4_ = [player.lg.startx,player.lg.starty];
                     }
                     player.gridx = _loc4_[0];
                     player.gridy = _loc4_[1];
                     player.seekSpawnPoint = true;
                     changeLevel();
                  }
                  else
                  {
                     player.basex = player.destBaseX;
                     player.basey = player.destBaseY;
                     changeLevel();
                  }
                  player.save();
               }
               if(fading > fadeTime * 3)
               {
                  fading = 0;
               }
               fadeOverlay.updateDespitePaused = true;
               fadeOverlay.show();
               if(fading < fadeTime)
               {
                  fadeOverlay.baseAlpha = Interpolation.linearInterpolate(0,1,Interpolation.fromTo(fading,0,fadeTime));
               }
               else if(fading < fadeTime * 2)
               {
                  fadeOverlay.baseAlpha = 1;
               }
               else
               {
                  fadeOverlay.baseAlpha = Interpolation.linearInterpolate(1,0,Interpolation.fromTo(fading,fadeTime * 2,fadeTime * 3));
               }
            }
            else
            {
               fadeOverlay.hide();
            }
         }
         currentLevel.gs = this;
         currentLevel.update();
         if(currentEpisode == 8)
         {
            if(player.lg.getCellData(player.gridx,player.gridy,"PartialFinish"))
            {
               for each(_loc3_ in objects)
               {
                  if(_loc3_ is TreasureChestBase)
                  {
                     TreasureChestBase(_loc3_).giveWeapon = true;
                  }
               }
            }
         }
         if(countEnemies() == 0 && !currentLevel.overArrowsCreated)
         {
            currentLevel.createOverArrows();
         }
         metaUpdate();
         if(!hasCommWindow())
         {
            if(fading == 0)
            {
               if(Boolean(Input.i.keyHit(73)) || Boolean(Input.i.keyHit(81)) || inventoryButton.mHit())
               {
                  player.inventoryHelp = true;
                  HUDDisplay.open(this,Inventory);
               }
               if(Boolean(Input.i.keyHit(77)) || Boolean(Input.i.keyHit(69)) || mapButton.mHit())
               {
                  player.mapHelp = true;
                  HUDDisplay.open(this,Map);
               }
               if(Boolean(Input.i.keyHit(80)) || Boolean(Input.i.keyHit(27)) || menuButton.mHit())
               {
                  HUDDisplay.open(this,PauseMenu);
               }
            }
         }
         Input.i.keyHit(73);
         Input.i.keyHit(77);
         Input.i.keyHit(85);
         Input.i.keyHit(80);
         Input.i.keyHit(27);
         Input.i.keyHit(81);
         Input.i.keyHit(69);
      }
      
      public function squareExists(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:int = getLogicalSquareX(param1);
         var _loc4_:int = getLogicalSquareY(param2);
         var _loc5_:PathfindSquare = toPlayer.getField(_loc3_,_loc4_);
         if(_loc5_)
         {
            return _loc5_.exists;
         }
         return false;
      }
      
      public function generateLevelBasedOnDistance(
         param1:int, 
         removeRegenerated:Boolean = false
      ) : GameLevel
      {
         var objectsOnCell:Array = null;
         var go:GameObject = null;
         var cellData:Array = player.lg.getCellData(
            player.gridx,
            player.gridy,
            "PredefinedLevel") as Array;

         for (var i:int = 0; i < cellData.length; i++)
         {
            objectsOnCell = initLevel(cellData[i] as Array);
            for each(go in objectsOnCell)
            {
               if(go is PickupBase || go is TreasureChestBase)
               {
                  if(removeRegenerated)
                  {
                     go.remove();
                  }
               }
            }
         }
         doEnemyDifficulty();
         var _loc6_:GameLevel = new GameLevel();
         _loc6_.ambushRoom = player.lg.getCellData(player.gridx,player.gridy,"Ambush") == true;
         return _loc6_;
      }
   }
}

