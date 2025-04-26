package ObjectBase
{
   import Audio.GameSound;
   import Audio.GameSoundChannel;
   import GameObjects.GameObject;
   import GameObjects.GameObjectFilter;
   import GameObjects.GameObjectFilterBlink;
   import GameObjects.GameObjectFilterFlicker;
   import GameObjects.GameObjectFilterPulseScale;
   import GameObjects.GameObjectFilterRotateSlowly;
   import GameScenes.GameScene;
   import GlobalSetup.Embeds;
   import Objects.BigTurret;
   import Objects.BossLegs;
   import Objects.GunFighter;
   import Objects.HoverSwarmGun;
   import Objects.Inertia;
   import Objects.Ship;
   import Objects.Sleeper;
   import Objects.RoboWalker;
   import Particles.Particle;
   import Scenes.MainScene;
   import Tools.Interpolation;
   import Tools.Random;
   import flash.display.Bitmap;
   import flash.geom.Point;
   
   public class BossBase extends EnemyBase
   {
      public var drillAnim:int = 0;
      
      public var flying:Boolean = false;
      
      public var hasSetupShipFly:Boolean = false;
      
      public var drillExtendProgress:int = 0;
      
      public var flyingDestX:Number = 0;
      
      public var chargeTicks:int = 0;
      
      public var dying:int = 0;
      
      public var lastFlew:int = 0;
      
      public var flyingDestY:Number = 0;
      
      public var lastRoomNextSpawn:int = 300 + Math.random() * 400;
      
      public var drillStartChannel:GameSoundChannel;
      
      public var teleportAwayTicks:int = 0;
      
      public var legAnimSpeed:int = 7;
      
      public var frame6Hold:int = 0;
      
      public var drillPlayChannel:GameSoundChannel;
      
      public var spawnPossibilities:Array = [[144,187],[134,121],[148,223],[674,154],[666,208],[661,259],[139,490],[260,500],[393,501],[533,499],[660,510]];
      
      public var onShuttle:GameObject;
      
      public var fireTicks:int = 0;
      
      public var fleeHealth:int = 2000;
      
      public var drillEndChannel:GameSoundChannel;
      
      public var legFrame:int = 0;
      
      public function BossBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
         legs = new BossLegs(param1,0,0);
         legs.baseRotation = baseRotation;
         legs.changeZOrder("Player");
         changeZOrder("Player");
         addChild(legs);
         addFilter(new GameObjectFilterRotateSlowly(2));
         baseHealth *= 2000;
         pushable = false;
         if(MainScene(param1).currentEpisode == 12)
         {
            baseHealth *= 1.5;
         }
      }
      
      public function updateLastRoom() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Array = null;
         var _loc3_:GameObject = null;
         var _loc4_:* = false;
         var _loc5_:GameObjectFilter = null;
         updateLastRoomSpawning();
         ++fireTicks;
         if(flying)
         {
            chargeTicks = 0;
         }
         if(ticks - lastFlew > 600 && !hasSetupShipFly)
         {
            lastFlew = ticks;
            flying = true;
            spawnArmy();
            _loc1_ = 0;
            do
            {
               _loc1_++;
               _loc2_ = spawnPossibilities[Random.randInt(0,spawnPossibilities.length - 1)];
               flyingDestX = _loc2_[0];
               flyingDestY = _loc2_[1];
               if(health < 4000)
               {
                  lastRoomSetupShipFly();
                  flyingDestX = 395;
                  flyingDestY = 124;
                  for each(_loc3_ in gs.objects)
                  {
                     if(_loc3_ is Ship)
                     {
                        onShuttle = Ship(_loc3_);
                     }
                  }
               }
            }
            while(!(distanceToPoint(flyingDestX,flyingDestY) > 300 || _loc1_ > 50));
            
         }
         if(hasSetupShipFly)
         {
            if(!flying)
            {
               baseRotation = 180;
            }
         }
         if(!flying && !hasSetupShipFly)
         {
            baseRotation = angleToObject(MainScene(gs).player) + 90;
            _loc4_ = false;
            for each(_loc5_ in filters)
            {
               if(_loc5_ is GameObjectFilterRotateSlowly)
               {
                  _loc4_ = Interpolation.distanceToAngle(baseRotation,GameObjectFilterRotateSlowly(_loc5_).internalRotation) < 2;
               }
            }
            if(_loc4_)
            {
               ++chargeTicks;
            }
            if(fireTicks % 200 > 100)
            {
               if(fireTicks % 10 == 0)
               {
                  if(fireTicks % 20 == 0)
                  {
                     shootBullet(-25,-50,2);
                  }
                  else
                  {
                     shootBullet(25,-50,2);
                  }
               }
            }
         }
      }
      
      override public function canMoveOnLand() : Boolean
      {
         return false;
      }
      
      public function lastRoomSetupShipFly() : void
      {
         if(hasSetupShipFly)
         {
            return;
         }
         hasSetupShipFly = true;
      }
      
      override public function tintRed(param1:Boolean = false) : Number
      {
         return 1;
      }
      
      public function updateDrill() : void
      {
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc1_:Boolean = true;
         if(ticks < 50)
         {
            _loc1_ = false;
         }
         if(flying)
         {
            _loc1_ = false;
         }
         if(onShuttle)
         {
            if(basex > onShuttle.basex + 25)
            {
               _loc1_ = false;
            }
         }
         if(!onShuttle)
         {
            _loc1_ = false;
         }
         if(MainScene(gs).currentEpisode == 11)
         {
            if(health <= fleeHealth)
            {
               _loc1_ = false;
            }
         }
         if(_loc1_)
         {
            if(randTicks % 440 == 0)
            {
               if(armyCount() < 6)
               {
                  spawnArmy(3);
               }
            }
            ++drillExtendProgress;
         }
         else if(drillAnim <= 0)
         {
            --drillExtendProgress;
         }
         if(_loc1_ && drillExtendProgress == 1)
         {
            drillStartChannel = Sounds.drillStart.play();
         }
         else if(_loc1_ && drillExtendProgress > 1)
         {
            if(!drillStartChannel.playing())
            {
               if(!drillPlayChannel)
               {
                  drillPlayChannel = Sounds.drillLoop.play(true);
               }
            }
         }
         else if(!_loc1_)
         {
            if(drillPlayChannel)
            {
               drillPlayChannel.stop();
               drillPlayChannel = null;
               trace("playing END");
               drillEndChannel = Sounds.drillEnd.play();
            }
         }
         drillExtendProgress = Interpolation.lockValueInt(drillExtendProgress,0,100);
         var _loc2_:GameObject = helper.conditionallyCreateChild(Embeds.boss_drill001_png,"Drill",drillExtendProgress > 0,1);
         if(!_loc2_)
         {
            return;
         }
         _loc2_.changeZOrder("Player");
         changeZOrder("Player");
         var _loc3_:Point = tformed(0,drillExtendProgress * -0.7);
         _loc2_.basex = _loc3_.x;
         _loc2_.basey = _loc3_.y;
         _loc2_.baseRotation = baseRotation;
         var _loc4_:Boolean = false;
         if(drillExtendProgress == 100 || !_loc1_)
         {
            if(!_loc1_)
            {
               if(drillAnim > 63)
               {
                  drillAnim = 63;
               }
               --drillAnim;
               if(drillAnim < 0)
               {
                  drillAnim = 0;
               }
            }
            else
            {
               ++drillAnim;
            }
            _loc6_ = Embeds.drill;
            _loc7_ = drillAnim / 3;
            if(_loc7_ > 21)
            {
               if(ticks % 5 == 0)
               {
                  emitConditionalParticles("Spark",0,-79);
               }
               _loc4_ = true;
               _loc7_ = (_loc7_ - 16) % 5 + 16;
            }
            if(_loc7_ == 6 && _loc1_)
            {
               if(frame6Hold < 10)
               {
                  --drillAnim;
                  ++frame6Hold;
               }
            }
            if(_loc7_ < 0)
            {
               _loc7_ = 0;
            }
            _loc2_.helperAnimation.setFrame(_loc6_[_loc7_ % _loc6_.length]);
         }
         var _loc5_:GameObject = helper.conditionallyCreateChild(Embeds.pulse_17_png,"UnderDrillGlow",_loc4_,0.05,createdFlickerGlow);
         if(_loc5_)
         {
            _loc5_.basex = tformedX(0,-79);
            _loc5_.basey = tformedY(0,-79);
            _loc5_.additive = true;
         }
      }
      
      public function createdFlickerGlow(param1:GameObject) : void
      {
         var _loc2_:GameObjectFilter = new GameObjectFilterFlicker();
         GameObjectFilterFlicker(_loc2_).flickerTime = 0;
         GameObjectFilterFlicker(_loc2_).FlickerAlpha = 0.6;
         param1.addFilter(_loc2_);
      }
      
      public function createThruster(param1:GameObject) : void
      {
         var _loc2_:GameObjectFilter = new GameObjectFilterBlink();
         GameObjectFilterBlink(_loc2_).Interval = 5;
         GameObjectFilterBlink(_loc2_).BlinkAlpha = 0.8;
         param1.addFilter(_loc2_);
         _loc2_ = new GameObjectFilterPulseScale();
         GameObjectFilterPulseScale(_loc2_).magnitude = 0.1;
         param1.addFilter(_loc2_);
      }
      
      override public function _remove() : void
      {
         if(drillPlayChannel)
         {
            drillPlayChannel.stop();
         }
         super._remove();
      }
      
      public function updateLastRoomSpawning() : void
      {
         var _loc2_:GameObject = null;
         var _loc3_:Array = null;
         var _loc4_:Class = null;
         var _loc5_:EnemyBase = null;
         --lastRoomNextSpawn;
         if(lastRoomNextSpawn == 0)
         {
            lastRoomNextSpawn = 300 + Math.random() * 400;
            var _loc1_:int = 0;
            for each(_loc2_ in gs.objects)
            {
               if(_loc2_ is EnemyBase)
               {
                  if(!(_loc2_ is BossBase || _loc2_ is HoverSwarmGun))
                  {
                     _loc1_++;
                  }
               }
            }
            if(_loc1_ >= 3)
            {
               return;
            }
            if(MainScene(gs).currentEpisode == 12)
            {
               _loc3_ = spawnPossibilities[Random.randInt(0,spawnPossibilities.length - 1)];
               if(distanceToPoint(_loc3_[0],_loc3_[1]) < 100)
               {
                  return;
               }
               if(MainScene(gs).player.distanceToPoint(_loc3_[0],_loc3_[1]) < 100)
               {
                  return;
               }
               _loc4_ = [Sleeper,RoboWalker,Inertia,BigTurret,GunFighter][Random.randInt(0,4)];
               _loc5_ = EnemyBase(spawn(_loc4_,_loc3_[0],_loc3_[1],2));
               if(_loc5_)
               {
                  _loc5_.basex = _loc3_[0];
                  _loc5_.basey = _loc3_[1];
                  _loc5_.shouldTeleport = true;
               }
            }
            return;
         }
      }
      
      public function spawnArmy(param1:int = 3) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            spawnDude();
            _loc2_++;
         }
      }
      
      override public function canBeFrozen() : Boolean
      {
         return false;
      }
      
      public function attachingToShip() : Boolean
      {
         return MainScene(gs).currentEpisode == 11;
      }
      
      override public function canBeKnocked() : Boolean
      {
         return false;
      }
      
      override public function getFireSound() : GameSound
      {
         return Sounds.bigTurretFire;
      }
      
      override public function tintGreen(param1:Boolean = false) : Number
      {
         return 0;
      }
      
      override public function kill() : void
      {
         super.kill();
      }
      
      override public function _update() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Particle = null;
         var _loc4_:Number = NaN;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:GameObject = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:GameObjectFilter = null;
         if(dying > 0)
         {
            ++dying;
            if(ticks % 10 == 0 || dying > 90)
            {
               if(ticks % 30 == 0)
               {
                  Sounds.explosion.play();
               }
               if(Math.random() < 0.5)
               {
                  emitConditionalParticles("Destroy2High",(Math.random() - 0.5) * 64,(Math.random() - 0.5) * 64);
               }
               else
               {
                  emitConditionalParticles("DestroyHigh",(Math.random() - 0.5) * 64,(Math.random() - 0.5) * 64);
               }
            }
            if(dying > 90)
            {
               if(ticks % 2 == 0)
               {
                  emitConditionalParticles("BigExplosion",(Math.random() - 0.5) * 64,(Math.random() - 0.5) * 64);
               }
            }
            if(dying > 100)
            {
               Sounds.cannon.play();
               remove();
            }
         }
         else
         {
            changeZOrder(zOrderString);
         }
         var _loc1_:int = MainScene(gs).currentEpisode;
         if(_loc1_ == 11)
         {
            if(ticks > 100 && !onShuttle && !flying)
            {
               ++teleportAwayTicks;
               if(teleportAwayTicks > 50)
               {
                  _loc2_ = 0;
                  while(_loc2_ < 5)
                  {
                     _loc3_ = emitConditionalParticles("Teleport")[0];
                     _loc3_.StartScale *= 2;
                     _loc3_.EndScale *= 2;
                     _loc2_++;
                  }
                  Sounds.teleport.play();
                  spawnArmy();
                  remove();
               }
            }
         }
         if(_loc1_ == 12)
         {
            updateLastRoom();
         }
         if(onShuttle)
         {
            if(ticks == 50)
            {
               spawnArmy();
               flying = true;
            }
         }
         if(_loc1_ == 11)
         {
            if(health <= fleeHealth)
            {
               health = fleeHealth;
               if(drillExtendProgress == 0)
               {
                  flyingDestX = 200;
                  onShuttle = null;
                  if(distanceToPoint(flyingDestX,flyingDestY) > 100)
                  {
                     flying = true;
                  }
               }
            }
         }
         updateDrill();
         if(ticks == 1)
         {
            setup();
         }
         super._update();
         if(flying)
         {
            rotateTowardsPlayer = false;
            moveToSquare(16,16,1);
            _loc4_ = distanceToPoint(flyingDestX,flyingDestY);
            if(_loc4_ > 2)
            {
               _loc5_ = helper.vectorToPoint(flyingDestX,flyingDestY);
               _loc6_ = helper.angleToPoint(flyingDestX,flyingDestY);
               if(_loc4_ < 120 && attachingToShip())
               {
                  baseRotation = Interpolation.tendTowardsAngle(baseRotation,-90,0.5);
               }
               else
               {
                  _loc7_ = Interpolation.distanceToAngle(baseRotation,_loc6_ + 90) / 100;
                  if(_loc7_ < 0.5)
                  {
                     _loc7_ = 0.5;
                  }
                  baseRotation = Interpolation.tendTowardsAngle(baseRotation,_loc6_ + 90,_loc7_);
               }
               dx += _loc5_.x * 18 * 0.01;
               dy += _loc5_.y * 18 * 0.01;
            }
            else
            {
               flying = false;
            }
            ++legFrame;
         }
         else
         {
            --legFrame;
         }
         dx *= 0.9;
         dy *= 0.9;
         basex += dx;
         basey += dy;
         if(legFrame > 7 * legAnimSpeed)
         {
            legFrame = 7 * legAnimSpeed;
         }
         if(legFrame < 0)
         {
            legFrame = 0;
         }
         legs.setFrame(legFrame / legAnimSpeed);
         if(flying)
         {
            legs.baseRotation = baseRotation;
         }
         _loc2_ = 0;
         while(_loc2_ < 2)
         {
            _loc8_ = helper.conditionallyCreateChild(Embeds.boss_thrust_png,"Thrust" + _loc2_,flying,0.05,createThruster);
            if(_loc8_)
            {
               _loc8_.baseHandleY = 0;
               _loc9_ = _loc2_ == 0 ? 10 : -10;
               _loc8_.basex = tformedX(_loc9_,5);
               _loc8_.basey = tformedY(_loc9_,5);
               _loc8_.additive = true;
               _loc10_ = 0;
               for each(_loc11_ in filters)
               {
                  if(_loc11_ is GameObjectFilterRotateSlowly)
                  {
                     _loc10_ = GameObjectFilterRotateSlowly(_loc11_).internalRotation;
                  }
               }
               _loc8_.baseRotation = _loc10_ + (_loc2_ == 0 ? -20 : 20);
               if(hasSetupShipFly)
               {
                  _loc8_.changeZOrder("AbovePlayer",true);
               }
               else
               {
                  _loc8_.changeZOrder(_loc8_.zOrderString,true);
               }
               Bitmap(obj).smoothing = true;
            }
            _loc2_++;
         }
      }
      
      override public function canFall() : Boolean
      {
         return false;
      }
      
      public function spawnDude() : void
      {
         var _loc1_:EnemyBase = EnemyBase(spawn(HoverSwarmGun,basex,basey,0));
         if(_loc1_)
         {
            _loc1_.changeZOrder(_loc1_.zOrderString,true);
            if(_loc1_ is HoverSwarmGun)
            {
               HoverSwarmGun(_loc1_).noFireTicks = 200;
               HoverSwarmGun(_loc1_).fromBoss = true;
            }
         }
      }
      
      public function armyCount() : int
      {
         var _loc2_:GameObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in gs.objects)
         {
            if(_loc2_ is HoverSwarmBase)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      override public function tintBlue(param1:Boolean = false) : Number
      {
         return 0;
      }
      
      public function setup() : void
      {
         var _loc1_:GameObject = null;
         var _loc2_:GameObjectFilter = null;
         for each(_loc1_ in gs.objects)
         {
            if(_loc1_ is Ship)
            {
               _loc1_.changeZOrder("Floor",true);
            }
         }
         for each(_loc1_ in gs.objects)
         {
            if(_loc1_ is ShuttleBase)
            {
               basex = _loc1_.basex + 20 + 200;
               basey = _loc1_.basey + 150;
               baseRotation = angleToObject(_loc1_) + 90;
               legs.baseRotation = baseRotation;
               for each(_loc2_ in legs.filters)
               {
                  if(_loc2_ is GameObjectFilterRotateSlowly)
                  {
                     GameObjectFilterRotateSlowly(_loc2_).internalRotation = legs.baseRotation;
                  }
               }
               onShuttle = ShuttleBase(_loc1_);
               flyingDestX = _loc1_.basex + 20;
               flyingDestY = _loc1_.basey;
            }
         }
      }
   }
}

