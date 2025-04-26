package ObjectBase
{
   import Audio.GameSound;
   import GameObjects.GameObject;
   import GameObjects.GameObjectFilter;
   import GameObjects.GameObjectFilterRotateSlowly;
   import GameScenes.GameScene;
   import GlobalSetup.Embeds;
   import Objects.BigTurret;
   import Objects.BigTurretBullet;
   import Objects.BossBullet;
   import Objects.DroidBullet;
   import Objects.EnemyLaser;
   import Objects.GruntBullet;
   import Objects.GunFighter;
   import Objects.HulkBullet;
   import Objects.HunterBullet;
   import Objects.ShootingGrunt;
   import Objects.SleeperBullet;
   import Objects.SpiderGrenade;
   import Objects.SpiderGunner;
   import Objects.SpiderGunnerShot;
   import Objects.SpiderShot;
   import Objects.WalkerTurret;
   import Scenes.MainMenu;
   import Scenes.MainScene;
   import Tools.Interpolation;
   import Tools.PathfindSquare;
   import Tools.Random;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class EnemyBase extends GameObjectBase
   {
      public static var levelMult:Array = [1.28,4.7,3.98,6.15,5.02,6.05,10.39,7.42,5.69,9.09,8,8,8];
      
      public static var toughnessMult:Array = [1,4,10,20];
      
      internal var lastDestX:int = -1;
      
      internal var lastDestY:int = -1;
      
      public var canMoveToPlayer:Boolean = false;
      
      public var determineMoveToPlayer:Boolean = false;
      
      public var legs:LegsBase;
      
      public var hasBeenFrozen:Boolean = false;
      
      public var lastHit:int = 100;
      
      public var slowAroundCornersSetRotation:Boolean = true;
      
      public var hasSetupSlowRotation:Boolean = false;
      
      public var rotateTowardsPlayer:Boolean = true;
      
      public var setsImpassable:Boolean = false;
      
      public var endTicks:int = 0;
      
      public var health:int = 4;
      
      public var b:Number = 0.61;
      
      public var g:Number = -0.54;
      
      public var blocksNewLevel:Boolean = true;
      
      public var r:Number = 1.18;
      
      public var pushable:Boolean = true;
      
      public var save:Boolean = true;
      
      public var extraHealth:int = 40;
      
      public var baseHealth:int = 5;
      
      public var forceRandom:int = 0;
      
      public var lastRandomMovementX:int;
      
      public var lastRandomMovementY:int;
      
      public var toughness:int = 0;
      
      public var dx:Number = 0;
      
      public var nextSquarePosY:Number = 0;
      
      public var nextSquarePosX:Number = 0;
      
      public var facePlayer:Boolean = false;
      
      public var frozen:int = 0;
      
      public var _killed:Boolean = false;
      
      public var dy:Number = 0;
      
      public var legs2:GameObject;
      
      public var mtpPlayerX:int = -1;
      
      public var mtpPlayerY:int = -1;
      
      public var slowAroundCorners:Boolean = true;
      
      public var dist:Number = 20;
      
      public var inertia:Number = 0.9;
      
      public var totalHealth:int = 0;
      
      public var chooseNewPath:int = 0;
      
      public var mtpX:int = -1;
      
      public var mtpY:int = -1;
      
      public var angle:Number = 0;
      
      public var nextSquare:PathfindSquare;
      
      public function EnemyBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function shootBullet(param1:int, param2:int, param3:Number = 1) : EnemyBulletBase
      {
         var _loc5_:HulkBulletBase = null;
         if(!canShoot())
         {
            return null;
         }
         getFireSound().play();
         var _loc4_:Point = this.tformed(param1,param2);
         var _loc6_:Boolean = false;
         if(this is WalkerTurretBase)
         {
            if(WalkerTurret(this).front)
            {
               _loc6_ = true;
            }
         }
         if(this is SpiderGunner)
         {
            _loc5_ = new SpiderGunnerShot(gs,_loc4_.x,_loc4_.y);
         }
         else if(this is HoverBase)
         {
            _loc5_ = new DroidBullet(gs,_loc4_.x,_loc4_.y);
         }
         else if(this is GunFighter)
         {
            _loc5_ = new HunterBullet(gs,_loc4_.x,_loc4_.y);
         }
         else if(_loc6_)
         {
            _loc5_ = new SleeperBullet(gs,_loc4_.x,_loc4_.y);
         }
         else if(this is BigTurret)
         {
            _loc5_ = new BigTurretBullet(gs,_loc4_.x,_loc4_.y);
         }
         else if(this is ShootingGrunt)
         {
            _loc5_ = new GruntBullet(gs,_loc4_.x,_loc4_.y);
         }
         else if(this is SpiderSpitBase)
         {
            _loc5_ = new SpiderGrenade(gs,_loc4_.x,_loc4_.y);
         }
         else if(this is SleeperBase)
         {
            _loc5_ = new SleeperBullet(gs,_loc4_.x,_loc4_.y);
         }
         else if(this is MineLayerBase)
         {
            _loc5_ = new EnemyLaser(gs,_loc4_.x,_loc4_.y);
            EnemyLaser(_loc5_).startx = _loc4_.x;
            EnemyLaser(_loc5_).starty = _loc4_.y;
            EnemyLaser(_loc5_).endx = MainScene(gs).player.basex;
            EnemyLaser(_loc5_).endy = MainScene(gs).player.basey;
         }
         else if(this is BossBase)
         {
            _loc5_ = new BossBullet(gs,_loc4_.x,_loc4_.y);
         }
         else
         {
            _loc5_ = new HulkBullet(gs,_loc4_.x,_loc4_.y);
         }
         if(this is BeserkerBase)
         {
            _loc5_.damageMult = 4;
         }
         _loc5_.baseRotation = baseRotation + (Math.random() - 0.5) * 15;
         _loc5_.speedMult = param3;
         if(this is WalkerTurretBase)
         {
            _loc5_.speedMult *= 1.4;
         }
         if(!(this is SpiderSpitBase))
         {
            _loc5_.toughness = toughness;
            _loc5_.tint(tintRed(true),tintGreen(true),tintBlue(true));
         }
         var _loc7_:String = "Shoot";
         if(this is BigTurret)
         {
            _loc7_ = "ShootBig";
         }
         if(this is MineLayerBase || this is SpiderGunnerBase)
         {
            _loc7_ = "LaserShoot";
         }
         emitConditionalParticles(_loc7_,param1,param2 - 8,false,baseRotation);
         return _loc5_;
      }
      
      public function _experience() : int
      {
         trace("NO EXPERIENCE SET!!! " + String(this));
         return 1;
      }
      
      public function shootMissile(param1:int, param2:int) : void
      {
         if(!canShoot())
         {
            return;
         }
         Sounds.rocketShoot.play();
         var _loc3_:SpiderShot = new SpiderShot(gs,tformedX(param1,param2),tformedY(param1,param2));
         _loc3_.baseRotation = baseRotation + (Math.random() - 0.5) * 20;
         _loc3_.released = true;
         if(this is BeserkerBase)
         {
            _loc3_.damageMult = 4;
         }
      }
      
      override public function handlePlayerCollision() : void
      {
         if(isTeleporting())
         {
            return;
         }
         doExplosion();
         MainScene(gs).player.handleHit(this);
         if(this is BossBase)
         {
            return;
         }
         kill();
      }
      
      public function itemDropLevel() : int
      {
         return 1;
      }
      
      public function handleSideBounce() : void
      {
         if(basex - baseWidth / 2 < 0)
         {
            basex = 2 * (baseWidth / 2) - basex;
            dx *= -1;
         }
         if(basex + baseWidth / 2 > 800)
         {
            basex = 2 * (800 - baseWidth / 2) - basex;
            dx *= -1;
         }
         if(basey - baseHeight / 2 < 0)
         {
            basey = 2 * (baseHeight / 2) - basey;
            dy *= -1;
         }
         if(basey + baseHeight / 2 > 600)
         {
            basey = 2 * (600 - baseHeight / 2) - basey;
            dy *= -1;
         }
      }
      
      public function setupDifficulty(param1:int) : void
      {
         toughness = param1;
         if(param1 > 0)
         {
            if(blockUpdating())
            {
               super._update();
               return;
            }
         }
         tint(1,0,0);
         health = baseHealth + param1 * extraHealth;
         if(param1 == 3)
         {
            health *= 2;
         }
         totalHealth = health;
      }
      
      public function saveBetweenLevels() : Boolean
      {
         return save;
      }
      
      public function _doLegsSpeed(param1:GameObject, param2:Number) : void
      {
         if(frozen)
         {
            param1.animFreeze = true;
         }
         else
         {
            param1.animFreeze = false;
         }
         param1.animSpeed = 3 / param2;
         var _loc3_:Number = Interpolation.distanceToAngle(param1.baseRotation,param1.modifiedRotation);
         if(_loc3_ > 4)
         {
            param1.animSpeed *= Math.sqrt(_loc3_);
         }
      }
      
      public function shrapnelCount() : int
      {
         return 2;
      }
      
      public function moveAlongAngle(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:GameObjectFilter = null;
         if(isTeleporting())
         {
            return;
         }
         if(!param3)
         {
            if(nextSquareInvalid())
            {
               lastDestX = -1;
               nextSquare = null;
               return;
            }
         }
         var _loc4_:Number = angleToObject(MainScene(gs).player);
         if(rotateTowardsPlayer)
         {
            baseRotation = _loc4_ + 90;
         }
         if(legs)
         {
            legs.baseRotation = param2 + 90;
            if(legs2)
            {
               legs2.baseRotation = param2 + 90;
            }
         }
         else if(!facePlayer)
         {
            baseRotation = param2 + 90;
         }
         if(MainScene(gs).justFinishedFading())
         {
            if(legs)
            {
               for each(_loc5_ in legs.filters)
               {
                  if(_loc5_ is GameObjectFilterRotateSlowly)
                  {
                     GameObjectFilterRotateSlowly(_loc5_).internalRotation = param2 + 90;
                  }
               }
            }
         }
         if(slowAroundCorners)
         {
            if(Interpolation.distanceToAngle(baseRotation,modifiedRotation) > 1)
            {
               param1 /= Math.sqrt(Interpolation.distanceToAngle(baseRotation,modifiedRotation));
            }
         }
         else if(slowAroundCornersSetRotation)
         {
            param2 = modifiedRotation - 90;
         }
         dx += cosd(param2) * param1 * (1 - inertia);
         dy += sind(param2) * param1 * (1 - inertia);
         dx *= inertia;
         dy *= inertia;
         basex += dx;
         basey += dy;
         doLegsSpeed(param1);
      }
      
      public function canShoot() : Boolean
      {
         if(Interpolation.distanceToAngle(modifiedRotation,angleToObject(MainScene(gs).player) + 90) > 30)
         {
            return false;
         }
         if(MainScene(gs).currentLevel.ambushRoom)
         {
            return false;
         }
         if(MainScene(gs).fading)
         {
            return false;
         }
         if(falling)
         {
            return false;
         }
         if(MainScene(gs).player._removed)
         {
            return false;
         }
         if(frozen > 0)
         {
            return false;
         }
         return true;
      }
      
      public function moveTowardsPlayerFly(param1:Number = 1) : void
      {
         var _loc2_:PlayerBase = MainScene(gs).player;
         var _loc3_:PathfindSquare = MainScene(gs).toPlayer.getField(logicalSquareX(),logicalSquareY());
         var _loc4_:PathfindSquare = MainScene(gs).toPlayer.getField(_loc2_.logicalSquareX(),_loc2_.logicalSquareY());
         setNextSquare(_loc3_,_loc4_);
         moveToPoint(param1);
      }
      
      public function hitBy(param1:BulletBase, param2:int = 0) : void
      {
         if(param1)
         {
            if(param1.hitList[id] == true)
            {
               return;
            }
            param1.hasHit(this);
            param1.hitList[id] = true;
            health -= param1.damage();
         }
         else if(param2 == 0)
         {
            if(toughness == 0)
            {
               health -= 10;
            }
            else
            {
               health -= 30;
            }
         }
         else
         {
            health -= param2;
         }
         if(lastHit > 9)
         {
            lastHit = 0;
         }
         if(MainMenu.levelOfDetail)
         {
            emitConditionalParticles("EnemyHit");
         }
         if(health < 0)
         {
            if(this is BossBase)
            {
               BossBase(this).dying = 1;
               return;
            }
            preKill();
            doExplosion(param1);
            if(setsImpassable)
            {
               MainScene(gs).setPassable(logicalSquareX(),logicalSquareY(),true);
            }
            MainScene(gs).player.giveExperience(experience());
            kill();
         }
      }
      
      public function doPlayerPathfindCheck() : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc1_:PlayerBase = MainScene(gs).player;
         var _loc2_:int = _loc1_.logicalSquareX();
         var _loc3_:int = _loc1_.logicalSquareY();
         var _loc4_:int = logicalSquareX();
         var _loc5_:int = logicalSquareY();
         if(_loc2_ != mtpPlayerX || _loc3_ != mtpPlayerY || _loc4_ != mtpX || _loc5_ != mtpY)
         {
            mtpPlayerX = _loc2_;
            mtpPlayerY = _loc3_;
            mtpX = _loc4_;
            mtpY = _loc5_;
            _loc6_ = Math.abs(_loc2_ - _loc4_) + 1;
            _loc7_ = Math.abs(_loc3_ - _loc5_) + 1;
            if(_loc6_ * _loc7_ <= 1200)
            {
               canMoveToPlayer = isPathOK(_loc2_,_loc3_);
            }
            else
            {
               canMoveToPlayer = false;
            }
         }
      }
      
      public function moveToSquare(param1:int, param2:int, param3:Number) : *
      {
         var _loc4_:PathfindSquare = MainScene(gs).toPlayer.getField(logicalSquareX(),logicalSquareY());
         var _loc5_:PathfindSquare = MainScene(gs).toPlayer.getField(param1,param2);
         setNextSquare(_loc4_,_loc5_);
         moveToDest(param3);
      }
      
      public function experience() : int
      {
         return _experience() * levelMult[MainScene(gs).currentEpisode] * toughnessMult[toughness] * 1.2;
      }
      
      public function spawn(param1:Class, param2:int, param3:int, param4:int) : GameObject
      {
         var _loc6_:GameObject = null;
         var _loc7_:EnemyBase = null;
         if(isTeleporting())
         {
            return null;
         }
         if(falling)
         {
            return null;
         }
         if(MainScene(gs).player._removed)
         {
            return null;
         }
         if(MainScene(gs).fading)
         {
            return null;
         }
         param4 = Interpolation.lockValueInt(param4,0,3);
         var _loc5_:int = 15;
         for each(_loc6_ in gs.objects)
         {
            if(_loc6_ is param1)
            {
               _loc5_--;
            }
         }
         if(_loc5_ > 0)
         {
            _loc7_ = new param1(gs,basex,basey);
            _loc7_.setupDifficulty(param4);
            return _loc7_;
         }
         return null;
      }
      
      public function moveRandomly(param1:Number = 1, param2:Number = 150) : void
      {
         var _loc6_:PathfindSquare = null;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         if(frozen > 0)
         {
            doLegsSpeed(0);
            return;
         }
         if(enemyHitCount > 40 || wallHitCount > 40)
         {
            enemyHitCount = 0;
            wallHitCount = 0;
            lastDestX = -1;
         }
         if(lastX == basex && lastY == basey)
         {
            doLegsSpeed(0);
         }
         var _loc3_:int = logicalSquareX();
         var _loc4_:int = logicalSquareY();
         var _loc5_:PathfindSquare = MainScene(gs).toPlayer.getField(_loc3_,_loc4_);
         if(_loc3_ == lastDestX && _loc4_ == lastDestY || (lastDestX < 0 || lastDestY < 0))
         {
            _loc7_ = !(_loc3_ == lastDestX && _loc4_ == lastDestY) || lastRandomMovementX == 0 && lastRandomMovementY == 0;
            if(_loc7_)
            {
               lastRandomMovementX = Random.randInt(-3,3);
               lastRandomMovementY = Random.randInt(-3,3);
            }
            else if(Math.random() < 0.5)
            {
               if(Math.random() < 0.5)
               {
                  lastRandomMovementX = Random.randInt(-3,3);
               }
               else
               {
                  lastRandomMovementY = Random.randInt(-3,3);
               }
            }
            _loc8_ = _loc3_ + lastRandomMovementX;
            _loc9_ = _loc4_ + lastRandomMovementY;
            if(_loc8_ < 0 || _loc8_ > 14 || (_loc9_ < 0 || _loc9_ > 10))
            {
               _loc8_ = -1;
            }
            lastDestX = _loc8_;
            lastDestY = _loc9_;
         }
         if(_loc5_)
         {
            if(_loc8_ != -1)
            {
               if(isPathOK(lastDestX,lastDestY))
               {
                  _loc6_ = MainScene(gs).toPlayer.getField(lastDestX,lastDestY);
               }
            }
         }
         if(distanceToPlayer(lastDestX * 52,lastDestY * 52) < param2)
         {
            if(distanceToPlayer(lastDestX * 52,lastDestY * 52) < distanceToPlayer())
            {
               _loc6_ = null;
            }
         }
         if(_loc6_)
         {
            setNextSquare(_loc5_,_loc6_);
         }
         else
         {
            lastDestX = -1;
         }
         if(_loc6_)
         {
            moveToDest(param1);
         }
      }
      
      public function doFacePlayer() : void
      {
         baseRotation = angleToObject(MainScene(gs).player) + 90;
      }
      
      public function overlapsOtherEnemy() : Boolean
      {
         var _loc1_:GameObject = null;
         for each(_loc1_ in gs.objects)
         {
            if(_loc1_ != this)
            {
               if(_loc1_ is EnemyBase)
               {
                  if(spriteCollidesWith(EnemyBase(_loc1_)))
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function tintRed(param1:Boolean = false) : Number
      {
         if(frozen > 0)
         {
            return 0.4;
         }
         if(toughness == 0)
         {
            return 0;
         }
         if(toughness == 1)
         {
            return 0;
         }
         if(toughness == 2 || param1)
         {
            return 1;
         }
         return r;
      }
      
      public function dropsItem() : Boolean
      {
         return true;
      }
      
      public function preKill() : void
      {
         if(!_killed)
         {
            _killed = true;
            if(canFall())
            {
               if(dropsItem())
               {
                  PickupBase.maybeCreatePickup(gs,basex,basey,false,itemDropLevel());
               }
            }
         }
      }
      
      public function canBeFrozen() : Boolean
      {
         return true;
      }
      
      public function serializeFields() : Array
      {
         return ["basex","basey","health","toughness"];
      }
      
      public function getFireSound() : GameSound
      {
         return Sounds.enemyShoot;
      }
      
      public function moveTowardsPlayer(param1:Number = 1) : void
      {
         var _loc2_:PathfindSquare = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:PathfindSquare = null;
         if(wallHitCount >= 20)
         {
            forceRandom = 100;
         }
         if(forceRandom > 0)
         {
            --forceRandom;
            moveRandomly(param1,0);
            return;
         }
         determineMoveToPlayer = true;
         if(MainScene(gs).player._removed)
         {
            doLegsSpeed(0);
            return;
         }
         if(frozen > 0)
         {
            doLegsSpeed(0);
            return;
         }
         if(distanceToPlayer() > 50)
         {
            _loc2_ = MainScene(gs).toPlayer.getField(logicalSquareX(),logicalSquareY());
            if(_loc2_)
            {
               _loc3_ = logicalSquareX() + _loc2_.dirx;
               _loc4_ = logicalSquareY() + _loc2_.diry;
               if(canMoveToPlayer)
               {
                  _loc3_ = MainScene(gs).player.logicalSquareX();
                  _loc4_ = MainScene(gs).player.logicalSquareY();
               }
               if(_loc3_ >= 0 && _loc3_ < 800 / 40)
               {
                  if(_loc4_ >= 0 && _loc4_ < 600 / 40)
                  {
                     _loc5_ = MainScene(gs).toPlayer.field[_loc3_][_loc4_];
                  }
               }
               setNextSquare(_loc2_,_loc5_);
            }
            moveToDest(param1);
         }
         else
         {
            moveToPoint(param1);
         }
      }
      
      public function canBeKnocked() : Boolean
      {
         return true;
      }
      
      public function tintGreen(param1:Boolean = false) : Number
      {
         if(frozen > 0)
         {
            return 1;
         }
         if(toughness == 0)
         {
            return 0.21;
         }
         if(toughness == 1)
         {
            return 0.79 + 0.1;
         }
         if(toughness == 2 || param1)
         {
            return 0;
         }
         return g;
      }
      
      public function doExplosion(param1:BulletBase = null) : void
      {
         var _loc2_:BitmapData = Embeds.explosionScar[Random.randInt(0,Embeds.explosionScar.length - 1)];
         MainScene(gs).markFloor(_loc2_,basex - _loc2_.width / 2,basey - _loc2_.height / 2,Math.random(),1,1);
         Sounds.explosion.play();
         doShrapnel(shrapnelCount(),tintRed(),tintGreen(),tintBlue(),param1);
         if(this is BossBase)
         {
         }
         if(itemDropLevel() > 0)
         {
            if(Math.random() < 0.5)
            {
               emitConditionalParticles("Destroy2");
            }
            else
            {
               emitConditionalParticles("Destroy");
            }
         }
         else
         {
            emitConditionalParticles("DestroySmall");
         }
      }
      
      public function moveToPoint(param1:Number) : void
      {
         moveAlongAngle(param1,angleToObject(MainScene(gs).player));
      }
      
      public function doLegsSpeed(param1:Number) : void
      {
         if(!legs)
         {
            _doLegsSpeed(this,param1);
         }
         else
         {
            _doLegsSpeed(legs,param1);
         }
         if(legs2)
         {
            _doLegsSpeed(legs2,param1);
         }
      }
      
      public function legOffsetMultiplier() : Number
      {
         return 1;
      }
      
      public function nextSquareInvalid() : Boolean
      {
         var _loc1_:* = !canFall();
         var _loc2_:Boolean = canMoveOnLand();
         if(!nextSquare)
         {
            return true;
         }
         if(_loc1_)
         {
            if(nextSquare.exists)
            {
               if(!_loc2_)
               {
                  return true;
               }
               if(!nextSquare.passable)
               {
                  return true;
               }
            }
         }
         else if(nextSquare.passable == false)
         {
            return true;
         }
         if(nextSquare.y >= 11 || nextSquare.x >= 15)
         {
            return true;
         }
         return false;
      }
      
      public function moveAwayFromPlayer(param1:Number = 1) : void
      {
         var _loc5_:PathfindSquare = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:PathfindSquare = null;
         if(frozen > 0)
         {
            doLegsSpeed(0);
            return;
         }
         var _loc2_:int = logicalSquareX();
         var _loc3_:int = logicalSquareY();
         var _loc4_:PathfindSquare = MainScene(gs).toPlayer.field[_loc2_][_loc3_];
         if(_loc4_)
         {
            _loc6_ = -1;
            while(_loc6_ <= 1)
            {
               _loc7_ = -1;
               while(_loc7_ <= 1)
               {
                  if(_loc6_ != 0 || _loc7_ != 0)
                  {
                     _loc8_ = MainScene(gs).toPlayer.getField(_loc2_ + _loc6_,_loc3_ + _loc7_);
                     if(_loc8_)
                     {
                        if(_loc8_.dirx == -_loc6_ && _loc8_.diry == -_loc7_)
                        {
                           _loc5_ = _loc8_;
                        }
                     }
                  }
                  _loc7_++;
               }
               _loc6_++;
            }
            if(_loc5_)
            {
               setNextSquare(_loc4_,_loc5_);
            }
         }
         if(_loc5_)
         {
            moveToDest(param1);
         }
      }
      
      public function moveToDest(param1:Number) : void
      {
         var _loc2_:Number = Math.atan2(nextSquarePosY - basey,nextSquarePosX - basex) * 180 / Math.PI;
         moveAlongAngle(param1,_loc2_);
      }
      
      override public function _update() : void
      {
         var _loc3_:GameObjectFilter = null;
         var _loc4_:GameObjectFilter = null;
         if(isTeleporting() || Boolean(frozen))
         {
            animFreeze = true;
            if(legs)
            {
               legs.animFreeze = true;
            }
            if(legs2)
            {
               legs2.animFreeze = true;
            }
         }
         if(isTeleporting())
         {
            if(distanceToPlayer() < 200)
            {
               MainScene(gs).currentLevel.expediateAmbush();
            }
         }
         if(MainScene(gs).currentLevel.ambushRoom)
         {
            shouldTeleport = true;
            hide();
         }
         else
         {
            show();
         }
         if(legs)
         {
            legs.basex = -(basex - 400) / 100;
            legs.basey = -(basey - 300) / 80;
            legs.tformFromParent = false;
         }
         if(determineMoveToPlayer)
         {
            doPlayerPathfindCheck();
         }
         if(legs)
         {
            for each(_loc3_ in legs.filters)
            {
               if(_loc3_ is GameObjectFilterRotateSlowly)
               {
                  GameObjectFilterRotateSlowly(_loc3_).paused = frozen > 0;
               }
            }
         }
         if(frozen > 0)
         {
            --frozen;
         }
         if(legs)
         {
            legs.baseScaleX = baseScaleX;
            legs.baseScaleY = baseScaleY;
         }
         if(falling)
         {
            doTinting(false,1 - fallingProgress / 100);
         }
         else if(lastHit < 6)
         {
            doTinting(true);
         }
         else
         {
            doTinting();
         }
         ++lastHit;
         super._update();
         var _loc1_:MainScene = MainScene(gs);
         var _loc2_:int = 16;
         basex = Interpolation.lockValue(basex,_loc1_.startx + baseWidth / 2 + 16,_loc1_.endx - baseWidth / 2 - 16);
         basey = Interpolation.lockValue(basey,_loc1_.starty + baseHeight / 2 + 16,_loc1_.endy - baseHeight / 2 - 16);
         if(setsImpassable)
         {
            MainScene(gs).setPassable(logicalSquareX(),logicalSquareY(),false);
         }
         if(!hasSetupSlowRotation)
         {
            hasSetupSlowRotation = true;
            for each(_loc4_ in filters)
            {
               if(_loc4_ is GameObjectFilterRotateSlowly)
               {
                  GameObjectFilterRotateSlowly(_loc4_).internalRotationSet = false;
               }
            }
         }
      }
      
      public function setNextSquare(param1:PathfindSquare, param2:PathfindSquare) : *
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(distanceToPoint(nextSquarePosX,nextSquarePosY) < 1 || nextSquare != param2)
         {
            nextSquare = param2;
            nextSquarePosX = (param2.x + 0.5 + Math.random() * (20 - dist) / 20) * 52 + 10;
            nextSquarePosY = (param2.y + 0.5 + Math.random() * (20 - dist) / 20) * 52 + 14;
            _loc3_ = param2.x * 52 + 10;
            _loc4_ = (param2.x + 1) * 52 + 10;
            _loc5_ = param2.y * 52 + 14;
            _loc6_ = (param2.y + 1) * 52 + 14;
            _loc3_ += baseWidth / 2 + 4;
            _loc4_ -= baseWidth / 2 + 4;
            _loc5_ += baseHeight / 2 + 4;
            _loc6_ -= baseHeight / 2 + 4;
            nextSquarePosX = Random.randInt(_loc3_,_loc4_);
            nextSquarePosY = Random.randInt(_loc5_,_loc6_);
         }
      }
      
      public function blockUpdating() : Boolean
      {
         return beforeTeleporting() || Boolean(frozen);
      }
      
      public function tintBlue(param1:Boolean = false) : Number
      {
         if(frozen > 0)
         {
            return 0.6;
         }
         if(toughness == 0)
         {
            return 0.79;
         }
         if(toughness == 1)
         {
            return 0.21 + 0.1;
         }
         if(toughness == 2 || param1)
         {
            return 0;
         }
         return b;
      }
      
      public function doTinting(param1:Boolean = false, param2:Number = 1) : void
      {
         var _loc3_:Number = tintRed() * param2;
         var _loc4_:Number = tintGreen() * param2;
         var _loc5_:Number = tintBlue() * param2;
         if(param1)
         {
            _loc3_ += 1;
            _loc4_ += 1;
            _loc5_ += 1;
         }
         if(legs)
         {
            legs.tint(_loc3_,_loc4_,_loc5_);
         }
         if(legs2)
         {
            legs2.tint(_loc3_,_loc4_,_loc5_);
         }
         tint(_loc3_,_loc4_,_loc5_);
      }
      
      public function collidesWithAnything() : Boolean
      {
         var _loc1_:GameObject = null;
         for each(_loc1_ in gs.objects)
         {
            if(_loc1_ is GameObjectBase)
            {
               if(_loc1_ != this)
               {
                  if(GameObjectBase(_loc1_).spriteCollidesWith(this))
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
   }
}

