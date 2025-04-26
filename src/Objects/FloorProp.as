package Objects
{
   import Audio.GameSound;
   import Audio.GameSoundChannel;
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import GlobalSetup.Embeds;
   import ObjectBase.BulletBase;
   import ObjectBase.EnemyBase;
   import ObjectBase.EnemyBulletBase;
   import ObjectBase.GameObjectBase;
   import ObjectBase.PickupBase;
   import ObjectBase.PickupWeapon;
   import ObjectConstructors.FloorProp_constructor;
   import Scenes.MainScene;
   import Tools.Random;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class FloorProp extends GameObjectBase
   {
      public var soundChannel:GameSoundChannel;
      
      public var useAnimFrame:Boolean = true;
      
      public var images:Array;
      
      public var health:int = 6;
      
      public var lastHit:int = 100;
      
      public function FloorProp(param1:GameScene, param2:int, param3:int)
      {
         super(param1,FloorProp_constructor.baseim_embed,FloorProp_constructor.LayerName,param2,param3);
         FloorProp_constructor.setup(param1,this);
      }
      
      override public function collisionHeight() : Number
      {
         if(animFrame == 33 || animFrame == 34)
         {
            return super.collisionHeight() - 24;
         }
         return super.collisionHeight();
      }
      
      public function create(param1:Class, param2:int = 1, param3:int = 1, param4:Boolean = true) : void
      {
         var _loc6_:EnemyBase = null;
         var _loc5_:int = 0;
         while(_loc5_ < param2)
         {
            _loc6_ = EnemyBase(new param1(gs,basex,basey));
            _loc6_.shouldTeleport = param4;
            _loc6_.setupDifficulty(param3);
            _loc5_++;
         }
      }
      
      override public function remove() : void
      {
         if(soundChannel)
         {
            soundChannel.stop();
            soundChannel = null;
         }
         super.remove();
      }
      
      public function setPassable(param1:Boolean) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = logicalSquareX();
         var _loc3_:int = logicalSquareX();
         var _loc4_:int = logicalSquareY();
         var _loc5_:int = logicalSquareY();
         if(baseWidth > 104)
         {
            _loc2_--;
            _loc3_ += 1;
         }
         if(baseHeight > 104)
         {
            _loc4_--;
            _loc5_ += 1;
         }
         var _loc6_:int = _loc2_;
         while(_loc6_ <= _loc3_)
         {
            _loc7_ = _loc4_;
            while(_loc7_ <= _loc5_)
            {
               MainScene(gs).setPassable(_loc6_,_loc7_,param1);
               _loc7_++;
            }
            _loc6_++;
         }
      }
      
      public function createTrap(param1:int) : void
      {
         var _loc2_:Swarm = null;
         var _loc3_:int = 0;
         if(MainScene(gs).fading)
         {
            return;
         }
         if(param1 == 0)
         {
            _loc2_ = new Swarm(gs,basex,basey);
            _loc2_.setupDifficulty(1);
         }
         else if(param1 == 1)
         {
            _loc3_ = 0;
            while(_loc3_ < 4)
            {
               _loc2_ = new Swarm(gs,basex,basey);
               _loc2_.setupDifficulty(1);
               _loc3_++;
            }
         }
         else if(param1 == 2)
         {
            create(Turret);
         }
         else if(param1 == 3)
         {
            create(Hulk);
         }
         else if(param1 == 4)
         {
            create(SpiderGunner);
         }
         else if(param1 == 5)
         {
            create(BigFlyBot);
         }
         else if(param1 == 6)
         {
            create(HoverSwarm,4,1,false);
         }
         else if(param1 == 7)
         {
            create(Inertia);
         }
         else if(param1 == 8)
         {
            create(RoboWalker);
         }
         else if(param1 == 9)
         {
            create(Inertia,1,2);
         }
         else if(param1 == 10)
         {
            create(HoverSwarm2,2,0);
         }
         else if(param1 == 11)
         {
            create(Jumper,4,0);
         }
         else if(param1 == 12)
         {
            create(HoverSwarmGun,4,0);
         }
      }
      
      override public function canFall() : Boolean
      {
         return false;
      }
      
      public function hasBeenHit(param1:GameObject) : void
      {
         var _loc2_:BitmapData = null;
         var _loc3_:PickupBase = null;
         if(_removed)
         {
            return;
         }
         if(param1 is FloorProp)
         {
            if(health < 0)
            {
               return;
            }
            health -= 10;
         }
         else if(param1 is BulletBase)
         {
            if(BulletBase(param1).wep)
            {
               health -= BulletBase(param1).wep.boxDamage();
            }
            else
            {
               health -= 10;
            }
         }
         else
         {
            if(!(param1 is EnemyBulletBase))
            {
               return;
            }
            if(param1 is HunterBullet || param1 is BigTurretBullet || param1 is EnemyLaser)
            {
               health -= 5;
            }
            else
            {
               --health;
            }
         }
         if(int(animFrame) <= 3 || int(animFrame) == 6 || int(animFrame) == 7 || int(animFrame) == 18)
         {
            if(lastHit > 9)
            {
               lastHit = 0;
            }
         }
         if(health < 0)
         {
            if(int(animFrame) == 6 || int(animFrame) == 7 || int(animFrame) == 18)
            {
               _loc2_ = Embeds.explosionScar[Random.randInt(0,Embeds.explosionScar.length - 1)];
               MainScene(gs).markFloor(_loc2_,obj.x,obj.y,Math.random(),1,1);
               emitConditionalParticles("GasTankDestroy");
               if(Math.random() < 0.5)
               {
                  emitConditionalParticles("Destroy");
               }
               else
               {
                  emitConditionalParticles("Destroy2");
               }
               Sounds.gasTankDestroy.play();
               for each(param1 in gs.objects)
               {
                  if(distanceToObject(param1) < 100)
                  {
                     if(param1 is FloorProp)
                     {
                        FloorProp(param1).hasBeenHit(this);
                     }
                     else if(param1 is EnemyBase)
                     {
                        EnemyBase(param1).hitBy(null);
                     }
                  }
               }
            }
            if(int(animFrame) <= 3)
            {
               _loc2_ = Embeds.explosionScar[Random.randInt(0,Embeds.explosionScar.length - 1)];
               MainScene(gs).markFloor(_loc2_,obj.x,obj.y,Math.random(),1,1);
               if(int(animFrame) <= 3)
               {
                  doShrapnel(4,0.5,0,0.5);
               }
            }
            if(int(animFrame) <= 3 || int(animFrame) == 6 || int(animFrame) == 7 || int(animFrame) == 18)
            {
               if(int(animFrame) <= 3)
               {
                  if(Math.random() < 0.1 && !MainScene(gs).currentLevel.hasHadTrap && MainScene(gs).player.canCreateTrap())
                  {
                     if(distanceToPlayer() > 120)
                     {
                        createTrap(MainScene(gs).currentEpisode);
                        new PickupText(gs,basex,basey - 32,"TRAP!",16730174);
                        MainScene(gs).currentLevel.enragedBugs = true;
                        MainScene(gs).currentLevel.hasHadTrap = true;
                        Sounds.trap.play();
                     }
                  }
                  else
                  {
                     _loc3_ = PickupBase.maybeCreatePickup(gs,basex,basey,true);
                     if(_loc3_)
                     {
                        if(_loc3_ is PickupWeapon)
                        {
                           new PickupText(gs,basex - 5,basey - 32,"HIDDEN ITEM!",16764727);
                        }
                     }
                  }
                  Sounds.explosion.play();
               }
               setPassable(true);
               remove();
            }
         }
      }
      
      override public function _update() : void
      {
         var _loc1_:GameSound = null;
         if(!soundChannel)
         {
            _loc1_ = Sounds.propSounds_sparse[int(animFrame)];
            if(_loc1_)
            {
               soundChannel = _loc1_.play(true,0,0,0,true);
            }
         }
         setPassable(false);
         if(lastHit < 6)
         {
            tint(2,1,1);
         }
         else
         {
            tint(1,0,0);
         }
         ++lastHit;
         if(useAnimFrame)
         {
            Bitmap(obj).bitmapData = images[animFrame];
         }
         Bitmap(obj).smoothing = true;
         Bitmap(obj).cacheAsBitmap = true;
      }
      
      public function serializeFields() : Array
      {
         return ["basex","basey","animFrame","baseRotation","baseScaleX","baseScaleY","baseWidth","baseHeight","baseAlpha"];
      }
      
      override public function collisionWidth() : Number
      {
         if(animFrame == 33 || animFrame == 34)
         {
            return super.collisionWidth() - 16;
         }
         return super.collisionWidth();
      }
   }
}

