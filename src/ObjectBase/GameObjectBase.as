package ObjectBase
{
   import GameObjects.*;
   import GameScenes.GameScene;
   import Particles.*;
   import Scenes.*;
   import Tools.*;
   
   public class GameObjectBase extends GameObject
   {
      public var collisionFudge:Number = 0.5;
      
      public var falling:Boolean = false;
      
      public var fallingProgress:int = 0;
      
      public var alphaVariation:Number = 0;
      
      public var teleporting:int = 0;
      
      public var collidesWithWalls:Boolean = true;
      
      public var fallingStartY:Number = 0;
      
      public var enemyHitCount:int = 0;
      
      public var teleportOffset:int = 0;
      
      public var wallHitCount:int = 0;
      
      public var fallingStartX:Number = 0;
      
      public var shouldTeleport:Boolean = false;
      
      public function GameObjectBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function spriteCollidesWith(param1:GameObjectBase, param2:Number = 1) : Boolean
      {
         if(Math.abs(param1.basex - basex) < param2 * (param1.baseWidth + baseWidth) / 2)
         {
            if(Math.abs(param1.basey - basey) < param2 * (param1.baseHeight + baseHeight) / 2)
            {
               return true;
            }
         }
         return false;
      }
      
      public function pushing(param1:GameObjectBase) : void
      {
      }
      
      public function handlePlayerCollision() : void
      {
      }
      
      public function hasHitWall(param1:int = 0, param2:int = 0) : void
      {
      }
      
      public function isTeleporting() : Boolean
      {
         if(shouldTeleport)
         {
            return teleporting - teleportOffset < 50;
         }
         return false;
      }
      
      public function expediateTeleport() : void
      {
         if(teleporting < teleportOffset)
         {
            teleporting = teleportOffset;
         }
      }
      
      public function distanceToPlayer(param1:Number = -9999999, param2:Number = -9999999) : Number
      {
         if(param1 < -999999)
         {
            param1 = basex;
            param2 = basey;
         }
         var _loc3_:PlayerBase = PlayerBase(MainScene(gs).player);
         var _loc4_:Number = param1 - _loc3_.basex;
         var _loc5_:Number = param2 - _loc3_.basey;
         return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
      }
      
      public function logicalSquareX(param1:Number = -9999999) : int
      {
         if(param1 < -999999)
         {
            param1 = basex;
         }
         var _loc2_:Number = param1 - 10;
         var _loc3_:int = int(Math.floor(_loc2_ / 52));
         if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         if(_loc3_ > 800 / 52 - 1)
         {
            _loc3_ = 800 / 52 - 1;
         }
         return _loc3_;
      }
      
      public function logicalSquareY(param1:Number = -9999999) : int
      {
         if(param1 < -999999)
         {
            param1 = basey;
         }
         var _loc2_:Number = param1 - 14;
         var _loc3_:int = int(Math.floor(_loc2_ / 52));
         if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         if(_loc3_ > 800 / 52 - 1)
         {
            _loc3_ = 800 / 52 - 1;
         }
         return _loc3_;
      }
      
      public function impassable() : Boolean
      {
         return !MainScene(gs).toPlayer.field[logicalSquareX()][logicalSquareY()].passable;
      }
      
      public function beforeTeleporting() : Boolean
      {
         if(shouldTeleport)
         {
            return teleporting - teleportOffset < 0;
         }
         return false;
      }
      
      public function isPathOK(param1:int, param2:int) : *
      {
         var _loc9_:int = 0;
         var _loc3_:int = logicalSquareX();
         var _loc4_:int = logicalSquareY();
         var _loc5_:int = 0;
         if(_loc3_ > param1)
         {
            _loc5_ = param1;
            param1 = _loc3_;
            _loc3_ = _loc5_;
         }
         if(_loc4_ > param2)
         {
            _loc5_ = param2;
            param2 = _loc4_;
            _loc4_ = _loc5_;
         }
         var _loc6_:* = !canFall();
         var _loc7_:Boolean = canMoveOnLand();
         var _loc8_:int = _loc3_;
         while(_loc8_ <= param1)
         {
            _loc9_ = _loc4_;
            while(_loc9_ <= param2)
            {
               if(_loc8_ != _loc3_ || _loc9_ != _loc4_)
               {
                  if(_loc6_)
                  {
                     if(MainScene(gs).toPlayer.field[_loc8_][_loc9_].exists)
                     {
                        if(!_loc7_)
                        {
                           return false;
                        }
                        if(MainScene(gs).toPlayer.field[_loc8_][_loc9_].passable == false)
                        {
                           return false;
                        }
                     }
                  }
                  else if(MainScene(gs).toPlayer.field[_loc8_][_loc9_].passable == false)
                  {
                     return false;
                  }
               }
               _loc9_++;
            }
            _loc8_++;
         }
         return true;
      }
      
      public function doShrapnel(param1:int, param2:Number, param3:Number, param4:Number, param5:BulletBase = null) : void
      {
         var _loc7_:String = null;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Particle = null;
         var _loc6_:int = 0;
         while(_loc6_ < param1)
         {
            _loc7_ = "Shrapnel";
            if(Math.random() < 0.3)
            {
               _loc7_ = "Shrapnel2";
            }
            else if(Math.random() < 0.3)
            {
               _loc7_ = "Shrapnel3";
            }
            _loc8_ = emitConditionalParticles(_loc7_);
            if(_loc8_)
            {
               _loc9_ = 0;
               while(_loc9_ < _loc8_.length)
               {
                  _loc10_ = Math.random() * 360;
                  if(param5)
                  {
                     _loc10_ = param5.angle + (Math.random() - 0.5) * 180;
                  }
                  _loc11_ = 1 + Math.random() * 4;
                  _loc8_[_loc9_].dx = cosd(_loc10_) * _loc11_;
                  _loc8_[_loc9_].dy = sind(_loc10_) * _loc11_;
                  _loc12_ = _loc8_[_loc9_];
                  _loc12_.tint(param2,param3,param4);
                  _loc9_++;
               }
            }
            _loc6_++;
         }
      }
      
      public function anyImpassable(param1:Number = 1) : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ <= 1)
         {
            _loc3_ = 0;
            while(_loc3_ <= 1)
            {
               if(!MainScene(gs).toPlayer.field[logicalSquareX(basex - param1 * baseWidth / 2 + param1 * baseWidth * _loc2_)][logicalSquareY(basey - param1 * baseHeight / 2 + param1 * baseHeight * _loc3_)].passable)
               {
                  return true;
               }
               _loc3_++;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function canMoveOnLand() : Boolean
      {
         return false;
      }
      
      public function impassableGreedy(param1:Number = 1) : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ <= 1)
         {
            _loc3_ = 0;
            while(_loc3_ <= 1)
            {
               if(MainScene(gs).toPlayer.field[logicalSquareX(basex - param1 * baseWidth / 2 + param1 * baseWidth * _loc2_)][logicalSquareY(basey - param1 * baseHeight / 2 + param1 * baseHeight * _loc3_)].passable)
               {
                  return false;
               }
               _loc3_++;
            }
            _loc2_++;
         }
         return true;
      }
      
      public function canFall() : Boolean
      {
         return true;
      }
      
      public function kill() : void
      {
         remove();
      }
      
      override public function _update() : void
      {
         var _loc1_:int = 0;
         if(shouldTeleport)
         {
            if(teleporting - teleportOffset < 50)
            {
               if(!(this is EnemyBase && MainScene(gs).currentLevel.ambushRoom))
               {
                  if(MainScene(gs).fading == 0)
                  {
                     ++teleporting;
                  }
               }
               _loc1_ = teleporting - teleportOffset;
               if(_loc1_ == 1)
               {
                  Sounds.teleport.play();
                  emitConditionalParticles("Teleport");
                  if(this is PlayerBase)
                  {
                     emitConditionalParticles("TeleportRing");
                  }
               }
               baseAlpha = _loc1_ / 50 + alphaVariation;
               if(baseAlpha < 0)
               {
                  baseAlpha = 0;
               }
               if(_loc1_ == 50)
               {
                  baseAlpha = 1;
               }
            }
         }
         --wallHitCount;
         --enemyHitCount;
         if(enemyHitCount < 0)
         {
            enemyHitCount = 0;
         }
         if(wallHitCount < 0)
         {
            wallHitCount = 0;
         }
         if(canFall())
         {
            if(noExistGreedy(0.75))
            {
               if(!falling)
               {
                  falling = true;
                  fallingStartX = basex;
                  fallingStartY = basey;
               }
            }
         }
         if(falling)
         {
            ++fallingProgress;
            baseScaleX -= 0.005;
            baseScaleY -= 0.005;
            baseAlpha -= 0.01;
            basex = fallingStartX;
            Interpolation.linearInterpolate(fallingStartX,400,fallingProgress / 500);
            basey = fallingStartY;
            Interpolation.linearInterpolate(fallingStartY,300,fallingProgress / 500);
            if(fallingProgress > 100)
            {
               kill();
            }
         }
      }
      
      public function collisionWidth() : Number
      {
         return baseWidth;
      }
      
      public function noExistGreedy(param1:Number = 1) : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ <= 1)
         {
            _loc3_ = 0;
            while(_loc3_ <= 1)
            {
               if(MainScene(gs).toPlayer.field[logicalSquareX(basex - param1 * baseWidth / 2 + param1 * baseWidth * _loc2_)][logicalSquareY(basey - param1 * baseHeight / 2 + param1 * baseHeight * _loc3_)].exists)
               {
                  return false;
               }
               _loc3_++;
            }
            _loc2_++;
         }
         return true;
      }
      
      public function collisionHeight() : Number
      {
         return baseHeight;
      }
   }
}

