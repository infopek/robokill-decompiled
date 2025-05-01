package ObjectBase
{
   import Audio.GameSoundChannel;
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.Embeds;
   import InventoryScreen.HUDDisplay;
   import InventoryScreen.Help;
   import InventoryScreen.LevelUp;
   import LevelGridTools.*;
   import Objects.*;
   import Particles.Particle;
   import Scenes.*;
   import Serialization.*;
   import Templates.IconCollection;
   import Templates.RewardText;
   import Tools.*;
   import WeaponPlugin.*;
   import Weapons.*;
   import flash.display.*;
   import flash.geom.Point;
   
   public class PlayerBase extends GameObjectBase
   {
      public var cashText:GameObject;
      
      public var shieldObject:ShieldBar;
      
      public var lastPlayed:int = 0;
      
      public var teleportHelp:Boolean = false;
      
      public var offsetsX:Array = [6,-6,16,-16];
      
      public var offsetsY:Array = [14,14,16,16];
      
      public var lastHit:int = 100;
      
      public var lastHitRiot:Boolean = false;
      
      public var shotgunThisFrame:Boolean = false;
      
      public var legs:LegsBase;
      
      public var destBaseY:Number;
      
      public var destBaseX:Number;
      
      public var shields:Number = 1;
      
      public var queuedExperience:int = 0;
      
      public var roomsExplored:int = 0;
      
      public var queuedLevelUp:Boolean = false;
      
      public var shopHelp:Boolean = false;
      
      public var inLevelUp:int = 0;
      
      public var inventory:Array = new Array(28);
      
      public var weaponIcons:Array = new Array(4);
      
      public var xpObject:XPBar;
      
      public var experience:int = 0;
      
      public var seekSpawnPoint:Boolean = false;
      
      public var plasmaShotgunThisFrame:Boolean = false;
      
      public var levelBacking:GameObject;
      
      public var inCombat:int = 0;
      
      public var lg:LevelGrid = new LevelGrid();
      
      public var level:int = 1;
      
      public var hudKeys:IconCollection;
      
      public var expediatedDrop:Boolean = false;
      
      public var dx:Number = 0;
      
      public var dy:Number = 0;
      
      public var handleMouseX:Number = 0;
      
      public var handleMouseY:Number = 0;
      
      public var shredderThisFrame:Boolean = false;
      
      public var oldWeapons:Array = new Array(4);
      
      public var expSoundChannel:GameSoundChannel;
      
      public var mapHelp:Boolean = false;
      
      public var inventoryHelp:Boolean = false;
      
      public var items:Array = new Array(4);
      
      public var money:int = 0;
      
      public var levelText:GameObject;
      
      public var lastLaser:int = 0;
      
      public var pulseThisFrame:Boolean = false;
      
      public var weapons:Array = new Array(4);
      
      public var grenadeThisFrame:Boolean = false;
      
      public var criticalHealth:GameObject;
      
      public var lowHealth:GameObject;
      
      public var riotShield:GameObject;
      
      public var cashBacking:GameObject;
      
      public var laserThisFrame:Boolean = false;
      
      public var lastMedkit:int = 0;
      
      public var keyCount:int = 0;
      
      public var totalKills:int = 0;
      
      public var gridy:int = 0;
      
      public var gridx:int = 0;
      
      public var fallingLatch:Boolean = false;
      
      public function PlayerBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         shouldTeleport = true;
         teleportOffset = 80;
         lg.init(MainScene(param1).currentEpisode);
         gridx = lg.startx;
         gridy = lg.starty;
         super(param1,param2,param3,param4,param5);
         shieldObject = new ShieldBar(param1,94,0);
         shieldObject.baseHandleX = 0;
         shieldObject.baseHandleY = 0;
         xpObject = new XPBar(param1,561,0);
         xpObject.baseHandleX = 0;
         xpObject.baseHandleY = 0;
         cashBacking = new GameObject(param1,Embeds.hud_cash_png,"TextLayer",0,0);
         cashBacking.baseHandleX = 0;
         cashBacking.baseHandleY = 0;
         levelBacking = new GameObject(param1,Embeds.hud_xp_lev_png,"TextLayer",800,0);
         levelBacking.baseHandleX = 1;
         levelBacking.baseHandleY = 0;
         cashText = new GameObject(param1,null,"TextLayer",0,0);
         cashText.fontName = "Pixelation-34";
         cashText.setText("0",7,16764727);
         cashText.basex = 39;
         cashText.basey = 2;
         cashText.baseHandleX = 0;
         levelText = new GameObject(param1,null,"TextLayer",0,0);
         levelText.fontName = "Pixelation-34";
         levelText.setText("00",7,16764727);
         levelText.basex = 785;
         levelText.basey = 2;
         levelText.baseHandleX = 0;
         hudKeys = new IconCollection(param1,Embeds.key_1_embed,"TextLayer",800 - 4,20,5,8,true);
         legs = new PlayerLegs(param1,4,4);
         legs.tformFromParent = false;
         addChild(legs);
         addFilter(new GameObjectFilterRotateSlowly(10));
         level = int(Profile.defLookup("level"));
         experience = Number(Profile.defLookup("experience"));
         money = int(Profile.defLookup("cash"));
         totalKills = int(Profile.defLookup("totalkills"));
         weapons = Profile.defLookupArray("playerWeapons");
         inventory = Profile.defLookupArray("playerInventory");
         items = Profile.defLookupArray("playerItems");
         expediatedDrop = Boolean(Profile.defLookup("expediateddrop"));
         name = String(Profile.defLookup("name"));
         teleportHelp = Boolean(Profile.defLookup("teleporthelp"));
         mapHelp = Boolean(Profile.defLookup("maphelp"));
         shopHelp = Boolean(Profile.defLookup("shophelp"));
         inventoryHelp = Boolean(Profile.defLookup("inventoryhelp"));
         if(weapons.length < 4)
         {
            giveDefaultWeapons();
         }
         if(weapons[0] == null && weapons[1] == null && weapons[2] == null && weapons[3] == null)
         {
            giveDefaultWeapons();
         }
         if(items.length != 4)
         {
            items = new Array(4);
         }
         if(inventory.length != 28)
         {
            inventory = new Array(28);
         }
      }
      
      public function doInventoryHelp() : void
      {
         var _loc1_:String = "Click the INV button (bottom right) or\npress the \'I\' key to access your inventory.";
         _loc1_ = _loc1_.toUpperCase();
         Help.helpText = _loc1_;
         HUDDisplay.open(gs,Help);
         inventoryHelp = true;
      }
      
      public function doShopHelp() : void
      {
         var _loc1_:String = "Remember you can teleport back to the shop\nfrom any room by clicking on the shop icon\non the map display.";
         _loc1_ = _loc1_.toUpperCase();
         Help.helpText = _loc1_;
         HUDDisplay.open(gs,Help);
         shopHelp = true;
      }
      
      public function cashMult() : Number
      {
         var _loc2_:ItemBase = null;
         var _loc1_:Number = 1;
         for each(_loc2_ in items)
         {
            if(_loc2_ is ItemMoreGold)
            {
               _loc1_ += ItemMoreGold(_loc2_).attribute / 100;
            }
         }
         return _loc1_;
      }
      
      public function getClosestEnemyToMouse() : EnemyBase
      {
         var _loc1_:EnemyBase = null;
         var _loc2_:Number = NaN;
         var _loc5_:GameObject = null;
         var _loc6_:Number = NaN;
         var _loc3_:Number = Input.i.mouseX();
         var _loc4_:Number = Input.i.mouseY();
         for each(_loc5_ in gs.objects)
         {
            if(_loc5_ is EnemyBase)
            {
               _loc6_ = EnemyBase(_loc5_).distanceToPoint(_loc3_,_loc4_);
               if(_loc6_ < _loc2_ || _loc1_ == null)
               {
                  _loc1_ = EnemyBase(_loc5_);
                  _loc2_ = _loc6_;
               }
            }
         }
         return _loc1_;
      }
      
      public function applyOffsetsToWeapons() : void
      {
         var _loc2_:int = 0;
         var _loc1_:Array = new Array();
         _loc2_ = 0;
         while(_loc2_ < weapons.length)
         {
            if(weapons[_loc2_] is WeaponBase)
            {
               _loc1_.push(weapons[_loc2_]);
            }
            _loc2_++;
         }
         var _loc3_:Array = [0,50,25,75];
         _loc2_ = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc1_[_loc2_].offset = _loc3_[_loc2_];
            _loc2_++;
         }
      }
      
      public function inventoryFull() : Boolean
      {
         return emptyInventorySlot() == -1;
      }
      
      public function updateLowHealth() : void
      {
         var _loc1_:* = shields < 0.2;
         var _loc2_:* = shields < 0.5;
         if(MainScene(gs).lazyEnemiesCount == 0)
         {
            _loc1_ = false;
            _loc2_ = false;
         }
         if(_loc1_)
         {
            if(!criticalHealth)
            {
               criticalHealth = new GameObject(gs,null,"AbovePlayer",0,0);
               criticalHealth.fontName = "Pixelation-34";
               criticalHealth.setText("SHIELDS CRITICAL!",7,16730174);
            }
         }
         if(!_loc1_)
         {
            if(criticalHealth)
            {
               criticalHealth.remove();
               criticalHealth = null;
            }
         }
         if(_loc2_)
         {
            if(!lowHealth)
            {
               lowHealth = new GameObject(gs,Embeds.shield_low_png,"BelowPlayer",0,0);
            }
         }
         if(!_loc2_)
         {
            if(lowHealth)
            {
               lowHealth.remove();
               lowHealth = null;
            }
         }
         if(criticalHealth)
         {
            criticalHealth.basex = modifiedx;
            criticalHealth.basey = modifiedy - 32;
            criticalHealth.baseAlpha = 1;
            if(ticks % 60 < 30)
            {
               criticalHealth.baseAlpha = 0;
            }
            criticalHealth.baseAlpha *= modifiedAlpha;
         }
         if(lowHealth)
         {
            lowHealth.basex = modifiedx;
            lowHealth.basey = modifiedy;
            lowHealth.additive = true;
            lowHealth.baseAlpha = 1;
            if(ticks % 60 > 30)
            {
               lowHealth.baseAlpha *= 0.2;
            }
            lowHealth.baseAlpha *= modifiedAlpha;
         }
      }
      
      override public function collisionHeight() : Number
      {
         return baseHeight * 0.6;
      }
      
      public function emptyInventorySlot() : int
      {
         var _loc1_:int = 0;
         while(_loc1_ < inventory.length)
         {
            if(!inventory[_loc1_])
            {
               return _loc1_;
            }
            _loc1_++;
         }
         return -1;
      }
      
      public function hasRiotShield() : Boolean
      {
         var _loc2_:ItemBase = null;
         var _loc1_:Boolean = false;
         for each(_loc2_ in items)
         {
            if(_loc2_ is ItemShield)
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      public function doLevelUp() : void
      {
         queuedLevelUp = false;
         HUDDisplay.open(gs,LevelUp);
         inLevelUp = 1;
         Sounds.levelUp.play();
         experience = 0;
         queuedExperience = 0;
         ++level;
      }
      
      public function setHud() : void
      {
         cashText.setText(String(money));
         shieldObject.setFull(shields);
         xpObject.setFull(Number(experience) / Number(experienceForLevel()));
         levelText.setText(padString(String(level + 1),"0",2));
         hudKeys.setValue(keyCount);
      }
      
      public function triggerHelp() : void
      {
         ++roomsExplored;
         if(!inventoryHelp)
         {
            if(roomsExplored > 10)
            {
               if(countInventoryGuns() > 0)
               {
                  doInventoryHelp();
                  return;
               }
            }
         }
         if(!mapHelp)
         {
            if(roomsExplored > 5)
            {
               doMapHelp();
               return;
            }
         }
         if(!shopHelp)
         {
            if(money > 500)
            {
               doShopHelp();
               return;
            }
         }
      }
      
      public function canCreateTrap() : Boolean
      {
         if(lg.startx == gridx && lg.starty == gridy)
         {
            return false;
         }
         if(MainScene(gs).spawnPoints.contains(gridx,gridy))
         {
            return false;
         }
         return true;
      }
      
      public function help() : void
      {
      }
      
      public function hasKeysFor(param1:int, param2:int) : Boolean
      {
         if(lg.getCellData(param1,param2,"Key0") == true)
         {
            return hasKey(0);
         }
         return true;
      }
      
      public function doSound(param1:WeaponBase) : void
      {
         if(param1 is Blaster)
         {
            if(ticks - lastLaser >= 10)
            {
               Sounds.shoot.play();
               lastLaser = ticks;
            }
         }
         else if(param1 is Laser)
         {
            if(!laserThisFrame)
            {
               Sounds.laserShoot.play();
               laserThisFrame = true;
            }
         }
         else if(param1 is Grenade && !grenadeThisFrame)
         {
            grenadeThisFrame = true;
            Sounds.grenadeShoot.play();
         }
         else if(param1 is Shotgun && !shotgunThisFrame)
         {
            Sounds.shotgunShoot.play();
            shotgunThisFrame = true;
         }
         else if(param1 is PulseGun && !pulseThisFrame)
         {
            Sounds.pulseShoot.play();
            pulseThisFrame = true;
         }
         else if(param1 is Knockback && !plasmaShotgunThisFrame)
         {
            Sounds.plasmaShotgunFire.play();
            plasmaShotgunThisFrame = true;
         }
         else if(param1 is LaserMinelayer && !shredderThisFrame)
         {
            Sounds.shredderFire.play();
            shredderThisFrame = true;
         }
      }
      
      public function greatestDoorAnimProgress() : int
      {
         var _loc2_:GameObject = null;
         var _loc3_:Door = null;
         var _loc1_:int = 0;
         for each(_loc2_ in gs.objects)
         {
            if(_loc2_ is Door)
            {
               _loc3_ = Door(_loc2_);
               if(_loc3_.openProgress > _loc1_)
               {
                  _loc1_ = _loc3_.openProgress;
               }
            }
         }
         return _loc1_;
      }
      
      public function handleHit(param1:GameObjectBase) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(MainScene(gs).fading)
         {
            return;
         }
         if(lastHit > 9)
         {
            lastHit = 0;
         }
         var _loc2_:Number = shields;
         var _loc3_:Number = getShieldsForLevel();
         var _loc4_:Number = 0;
         if(param1 is EnemyBase)
         {
            _loc4_ = _loc3_ / 10 + EnemyBase(param1).health;
         }
         else if(param1 is EnemyBulletBase)
         {
            _loc4_ = EnemyBulletBase(param1).damage();
         }
         if(MainScene(gs).currentEpisode == 8)
         {
            _loc4_ *= 0.9;
         }
         if(MainScene(gs).currentEpisode == 9)
         {
            _loc4_ *= 0.8;
         }
         var _loc5_:Number = Interpolation.distanceToAngle(modifiedRotation,angleToObject(param1) - 90);
         lastHitRiot = false;
         if(_loc5_ < 45)
         {
            if(hasRiotShield())
            {
               _loc4_ *= riotShieldMult();
               lastHitRiot = true;
            }
         }
         shields -= _loc4_ / _loc3_;
         if(ticks - lastPlayed > 1000)
         {
            if(shields < 0.2 && _loc2_ > 0.2)
            {
               Sounds.shieldsCritical.play();
               lastPlayed = ticks;
            }
            else if(shields < 0.5 && _loc2_ > 0.5)
            {
               lastPlayed = ticks;
               Sounds.shieldsLow.play();
            }
         }
         if(shields < 0)
         {
            if(hasMedKit())
            {
               shields = 1;
            }
            else
            {
               _loc6_ = 0;
               while(_loc6_ < 10)
               {
                  emitConditionalParticles("Destroy",(Math.random() - 0.5) * 25,(Math.random() - 0.5) * 25);
                  _loc6_++;
               }
               _loc7_ = 0;
               while(_loc7_ < 4)
               {
                  if(weaponIcons[_loc7_])
                  {
                     weaponIcons[_loc7_].remove();
                  }
                  _loc7_++;
               }
               kill();
            }
         }
      }
      
      public function getShieldsForLevel() : int
      {
         return 100 + 10 * level;
      }
      
      public function doRecharge() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:ItemBase = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         if(isTeleporting())
         {
            inCombat = 0;
         }
         if(MainScene(gs).lazyEnemiesCount > 0)
         {
            ++inCombat;
         }
         else
         {
            --inCombat;
         }
         inCombat = Interpolation.lockValueInt(inCombat,0,100);
         if(MainScene(gs).lazyEnemiesCount == 0)
         {
            if(inCombat == 10)
            {
               _loc1_ = false;
               _loc2_ = new Array();
               for each(_loc3_ in items)
               {
                  if(_loc3_ is ItemRecharge)
                  {
                     _loc2_.push(_loc3_);
                     _loc1_ = true;
                  }
               }
               _loc2_.sortOn("attribute",2);
               _loc4_ = [1,1,1,1];
               _loc5_ = 0;
               while(_loc5_ < _loc2_.length)
               {
                  shields += _loc4_[_loc5_] * (_loc2_[_loc5_].attribute / getShieldsForLevel());
                  if(shields > 1)
                  {
                     shields = 1;
                  }
                  _loc5_++;
               }
               if(_loc1_)
               {
                  medKitParticles();
               }
            }
         }
      }
      
      public function giveExperience(param1:int) : void
      {
         var _loc2_:int = (1 + MainScene(gs).currentEpisode) * 3;
         ++totalKills;
         if(level > _loc2_ + 2)
         {
            return;
         }
         queuedExperience += param1;
      }
      
      public function removeKey() : void
      {
         if(keyCount <= 0)
         {
            throw "SDF";
         }
         --keyCount;
      }
      
      public function doRevenge() : void
      {
         var _loc3_:ItemBase = null;
         var _loc4_:GameObject = null;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < items.length)
         {
            _loc3_ = ItemBase(items[_loc2_]);
            if(_loc3_ is ItemRevenge)
            {
               items[_loc2_] = null;
               _loc1_ = true;
               for each(_loc4_ in gs.objects)
               {
                  if(_loc4_ is EnemyBase)
                  {
                     if(_loc4_.distanceToObject(this) < 200)
                     {
                        EnemyBase(_loc4_).hitBy(null,ItemRevenge(_loc3_).attribute);
                     }
                  }
               }
            }
            _loc2_++;
         }
         if(_loc1_)
         {
            Sounds.explosion.play();
            emitConditionalParticles("Revenge");
         }
      }
      
      public function medKitParticles() : void
      {
         var _loc2_:Particle = null;
         var _loc1_:Array = emitConditionalParticles("MedKit");
         for each(_loc2_ in _loc1_)
         {
            _loc2_.lockTo = this;
         }
         Sounds.medkit.play();
      }
      
      override public function kill() : void
      {
         var _loc3_:BitmapData = null;
         if(!falling)
         {
            _loc3_ = Embeds.explosionScar[Random.randInt(0,Embeds.explosionScar.length - 1)];
            MainScene(gs).markFloor(_loc3_,basex - _loc3_.width / 2,basey - _loc3_.height / 2,Math.random(),1,1);
            doShrapnel(20,0.5,0,0.5);
         }
         var _loc1_:MainScene = MainScene(gs);
         _loc1_.removeWhenFaded.push(hudKeys,shieldObject,xpObject,cashBacking,levelBacking,cashText,levelText);
         if(lowHealth)
         {
            lowHealth.remove();
         }
         if(criticalHealth)
         {
            criticalHealth.remove();
         }
         if(riotShield)
         {
            riotShield.remove();
         }
         var _loc2_:int = 0;
         while(_loc2_ < 4)
         {
            if(weaponIcons[_loc2_])
            {
               weaponIcons[_loc2_].remove();
            }
            _loc2_++;
         }
         Sounds.explosion.play();
         super.kill();
      }
      
      override public function canFall() : Boolean
      {
         if(Math.abs(lastX - 400) < 24)
         {
            if(basey <= 20 || basey >= 580)
            {
               return false;
            }
         }
         if(Math.abs(lastY - 300) < 24)
         {
            if(basex <= 20 || basex >= 780)
            {
               return false;
            }
         }
         return true;
      }
      
      public function hasKey(param1:int) : Boolean
      {
         var _loc2_:InventoryItem = null;
         return keyCount > 0;
      }
      
      public function save() : void
      {
         Profile.defStoreArray("playerWeapons",weapons);
         Profile.defStoreArray("playerInventory",inventory);
         Profile.defStoreArray("playerItems",items);
         Profile.defStore("expediateddrop",expediatedDrop);
         Profile.defStore("level",level);
         Profile.defStore("experience",experience);
         Profile.defStore("cash",money);
         Profile.defStore("totalkills",totalKills);
         Profile.defStore("teleporthelp",teleportHelp);
         Profile.defStore("maphelp",mapHelp);
         Profile.defStore("shophelp",shopHelp);
         Profile.defStore("inventoryhelp",inventoryHelp);
      }
      
      public function rotateVector(param1:Number, param2:Number, param3:Number) : Point
      {
         return new Point(cosd(param3) * param1 + sind(-param3) * param2,-sind(-param3) * param1 + cosd(param3) * param2);
      }
      
      public function createHealthBar() : GameObject
      {
         return new EnemyHealthBar(gs,0,0);
      }
      
      public function unlockPath(param1:int, param2:int) : void
      {
         lg.setCellData(param1,param2,"Key0",false);
      }
      
      public function chanceMult() : Number
      {
         var _loc5_:ItemBase = null;
         var _loc1_:Number = 1;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         var _loc4_:Array = [1,0.9,0.8,0.7];
         for each(_loc5_ in items)
         {
            if(_loc5_ is ItemMagicFind)
            {
               _loc3_++;
               _loc2_ += ItemMagicFind(_loc5_).attribute;
            }
         }
         if(_loc3_ > 0)
         {
            _loc2_ *= _loc4_[_loc3_ - 1];
            _loc1_ += _loc2_ / 100;
         }
         if(MainScene(gs).currentEpisode >= 10)
         {
            _loc1_ *= 2;
         }
         return _loc1_;
      }
      
      public function pathLocked(param1:int, param2:int) : Boolean
      {
         if(lg.getCellData(param1,param2,"Key0") == true)
         {
            return true;
         }
         return false;
      }
      
      public function sgn(param1:Number) : Number
      {
         if(param1 < 0)
         {
            return -1;
         }
         if(param1 > 0)
         {
            return 1;
         }
         return 0;
      }
      
      public function padString(param1:String, param2:String, param3:int) : String
      {
         while(param1.length < param3)
         {
            param1 = param2 + param1;
         }
         return param1;
      }
      
      public function updateRiotShield() : void
      {
         if(hasRiotShield())
         {
            if(!riotShield)
            {
               riotShield = new GameObject(gs,Embeds.riotshield_png,"BelowPlayer",0,0);
            }
         }
         if(!hasRiotShield())
         {
            if(riotShield)
            {
               riotShield.remove();
            }
         }
         if(riotShield)
         {
            riotShield.basex = modifiedx;
            riotShield.basey = modifiedy;
            riotShield.baseRotation = modifiedRotation;
            riotShield.baseAlpha = modifiedAlpha;
         }
      }
      
      public function updateEnemyHealthBar() : void
      {
         var _loc3_:EnemyHealthBar = null;
         var _loc1_:* = false;
         var _loc2_:EnemyBase = getClosestEnemyToMouse();
         if(_loc2_)
         {
            _loc1_ = _loc2_.distanceToPoint(Input.i.mouseX(),Input.i.mouseY()) < _loc2_.collisionWidth();
         }
         else
         {
            _loc1_ = false;
         }
         _loc3_ = EnemyHealthBar(helper.conditionallyCreateChild(createHealthBar,"HealthBar",_loc1_,0.25));
         if(_loc3_)
         {
            if(Boolean(_loc2_) && _loc1_)
            {
               _loc3_.barFallSpeed = 1;
               _loc3_.barRiseSpeed = 1;
               _loc3_.basex = _loc2_.basex;
               _loc3_.basey = _loc2_.basey - Math.max(_loc2_.baseWidth,_loc2_.baseHeight) / 2;
               _loc3_.baseAlpha *= _loc2_.baseAlpha;
               _loc3_.setFull(Number(_loc2_.health) / Number(_loc2_.totalHealth));
               if(_loc2_ is BossBase)
               {
                  _loc3_.baseScaleX = 2;
               }
               else
               {
                  _loc3_.baseScaleX = 1;
               }
            }
         }
      }
      
      public function hasMedKit() : Boolean
      {
         var _loc1_:int = 0;
         while(_loc1_ < items.length)
         {
            if(items[_loc1_] is ItemMedkit)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function doMapHelp() : void
      {
         var _loc1_:String = "Click the map button (bottom right) or press\nthe \'M\' key to access the map display.";
         _loc1_ = _loc1_.toUpperCase();
         Help.helpText = _loc1_;
         HUDDisplay.open(gs,Help);
         mapHelp = true;
      }
      
      public function canMoveX() : Boolean
      {
         if(greatestDoorAnimProgress() < 100)
         {
            return false;
         }
         if(!MainScene(gs).canMoveRooms())
         {
            return false;
         }
         if(basex < 400)
         {
            return canMove(-1,0) && hasKeysFor(gridx - 1,gridy);
         }
         return canMove(1,0) && hasKeysFor(gridx + 1,gridy);
      }
      
      override public function collisionWidth() : Number
      {
         return baseWidth * 0.6;
      }
      
      public function canMoveY() : Boolean
      {
         if(greatestDoorAnimProgress() < 100)
         {
            return false;
         }
         if(!MainScene(gs).canMoveRooms())
         {
            return false;
         }
         if(basey < 300)
         {
            return canMove(0,-1) && hasKeysFor(gridx,gridy - 1);
         }
         return canMove(0,1) && hasKeysFor(gridx,gridy + 1);
      }
      
      public function getDamageForLevel() : Number
      {
         return 10 + 0.05 * level;
      }
      
      public function canMove(param1:int, param2:int) : Boolean
      {
         return lg.getCell(gridx + param1,gridy + param2) > 0 && lg.getCellData(gridx + param1,gridy + param2,"Key0") != true;
      }
      
      public function handleFiring() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         var _loc5_:String = null;
         var _loc6_:GameObject = null;
         var _loc7_:Point = null;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         if(beforeTeleporting())
         {
            return;
         }
         if(falling)
         {
            return;
         }
         grenadeThisFrame = false;
         shotgunThisFrame = false;
         laserThisFrame = false;
         pulseThisFrame = false;
         plasmaShotgunThisFrame = false;
         shredderThisFrame = false;
         handleMouseX = Input.i.mouseX();
         handleMouseY = Input.i.mouseY();
         var _loc1_:Boolean = true;
         if(distanceToPoint(Input.i.mouseX(),Input.i.mouseY()) < 32)
         {
            _loc1_ = false;
         }
         baseRotation = Math.atan2(handleMouseY - basey,handleMouseX - basex) / Math.PI * 180 - 90;
         if(MainScene(gs).mapButton.mOver() || MainScene(gs).menuButton.mOver() || MainScene(gs).inventoryButton.mOver())
         {
            _loc1_ = false;
         }
         if(Boolean(Input.i.mouseDown()) && _loc1_)
         {
            _loc2_ = 0;
            while(_loc2_ < weapons.length)
            {
               if(weapons[_loc2_])
               {
                  if(weapons[_loc2_].shooting(ticks))
                  {
                     _loc3_ = tformed(offsetsX[_loc2_],offsetsY[_loc2_]);
                     _loc4_ = rotateVector(offsetsX[_loc2_],offsetsY[_loc2_],baseRotation);
                     ++weapons[_loc2_].shotCount;
                     if(MainMenu.levelOfDetail)
                     {
                        if(weapons[_loc2_].shotCount % 4 == 0 || !(weapons[_loc2_] is Blaster))
                        {
                           _loc7_ = rotateVector(sgn(offsetsX[_loc2_]) * 4 * (0.8 + Math.random() * 0.2),(Math.random() - 0.5) / 2,baseRotation);
                           _loc8_ = emitConditionalParticles("BulletCasing",offsetsX[_loc2_],offsetsY[_loc2_] - 20,false,baseRotation + 180);
                           if(_loc8_)
                           {
                              _loc9_ = 0;
                              while(_loc9_ < _loc8_.length)
                              {
                                 if(_loc8_[_loc9_])
                                 {
                                    _loc8_[_loc9_].dx = _loc7_.x / 2;
                                    _loc8_[_loc9_].dy = _loc7_.y / 2;
                                 }
                                 _loc9_++;
                              }
                           }
                        }
                     }
                     weapons[_loc2_].shoot(gs,_loc3_.x,_loc3_.y,handleMouseX + _loc4_.x,handleMouseY + _loc4_.y);
                     _loc5_ = "Shoot";
                     if(weapons[_loc2_] is Laser)
                     {
                        _loc5_ = "LaserShoot";
                     }
                     if(weapons[_loc2_] is PulseGun)
                     {
                        _loc5_ = "PulseShoot";
                     }
                     emitConditionalParticles(_loc5_,offsetsX[_loc2_],offsetsY[_loc2_],false,baseRotation + 180);
                     doSound(weapons[_loc2_]);
                     _loc6_ = weaponIcons[_loc2_];
                     _loc6_.addFilter(new GameObjectFilterRecoil(weapons[_loc2_].recoilTime(),weapons[_loc2_].recoilAmount()));
                  }
               }
               _loc2_++;
            }
         }
         else
         {
            applyOffsetsToWeapons();
         }
      }
      
      public function experienceForLevel() : int
      {
         var _loc1_:int = level + 1;
         return 1000 * int(Number(_loc1_ * _loc1_) / 2 + Number(_loc1_) / 2);
      }
      
      public function handleCollisions() : void
      {
         var _loc1_:GameObject = null;
         if(!falling)
         {
            for each(_loc1_ in gs.objects)
            {
               if(_loc1_ != this)
               {
                  if(_loc1_ is GameObjectBase)
                  {
                     if(!(_loc1_ is EnemyLaserBase) || _loc1_ is StaticLaserBase)
                     {
                        if(GameObjectBase(_loc1_).spriteCollidesWith(this,GameObjectBase(_loc1_).collisionFudge))
                        {
                           GameObjectBase(_loc1_).handlePlayerCollision();
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function riotShieldMult() : Number
      {
         var _loc2_:ItemBase = null;
         var _loc1_:Number = 1;
         for each(_loc2_ in items)
         {
            if(_loc2_ is ItemShield)
            {
               _loc1_ -= ItemShield(_loc2_).attribute / 100;
            }
         }
         return _loc1_;
      }
      
      public function giveDefaultWeapons() : void
      {
         weapons = new Array(4);
         weapons[0] = new Blaster();
         weapons[0].level = 0;
         weapons[1] = new Blaster();
         weapons[1].level = 0;
      }
      
      public function addToInventory(param1:InventoryItem) : Boolean
      {
         if(inventoryFull())
         {
            return false;
         }
         inventory[emptyInventorySlot()] = param1;
         return true;
      }
      
      public function _tint(param1:Number, param2:Number, param3:Number) : void
      {
         tint(param1,param2,param3);
         legs.tint(param1,param2,param3);
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            if(weaponIcons[_loc4_])
            {
               weaponIcons[_loc4_].tint(param1,param2,param3);
            }
            _loc4_++;
         }
      }
      
      public function countInventoryGuns() : int
      {
         var _loc2_:InventoryItem = null;
         var _loc1_:int = 0;
         for each(_loc2_ in inventory)
         {
            if(_loc2_ is WeaponBase)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function countGuns() : int
      {
         var _loc2_:InventoryItem = null;
         var _loc1_:int = 0;
         for each(_loc2_ in weapons)
         {
            if(_loc2_ is WeaponBase)
            {
               _loc1_++;
            }
         }
         for each(_loc2_ in inventory)
         {
            if(_loc2_ is WeaponBase)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      override public function _update() : void
      {
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:GameObject = null;
         var _loc15_:Point = null;
         var _loc1_:int = level / 5;
         if(_loc1_ >= 7)
         {
            _loc1_ = 7;
         }
         Bitmap(obj).bitmapData = Embeds.playerHead[_loc1_];
         if(falling)
         {
            queuedLevelUp = false;
         }
         if(falling)
         {
            if(!fallingLatch)
            {
               fallingLatch = true;
               emitConditionalParticles("fall");
               Sounds.trap.play();
               RewardText.createRewardText(gs,400,300,"WARNING: TAKE CARE AROUND EDGES","TextLayer",16730174,1,0,200);
            }
         }
         if(beforeTeleporting())
         {
            if(money < 500)
            {
               if(countGuns() == 0)
               {
                  money = 0;
                  giveDefaultWeapons();
                  RewardText.createRewardText(gs,400,300,"BACKUP WEAPONS GRANTED");
               }
            }
         }
         doRecharge();
         updateEnemyHealthBar();
         updateRiotShield();
         updateLowHealth();
         if(MainScene(gs).hasCommWindow())
         {
            ++teleportOffset;
         }
         legs.basex = -(basex - 400) / 80;
         legs.basey = -(basey - 300) / 60;
         ++lastHit;
         if(shields < 0.1)
         {
            doRevenge();
         }
         if(shields < 0.25)
         {
            useMedkit();
         }
         if(inLevelUp > 0)
         {
            ++inLevelUp;
            if(inLevelUp > 100)
            {
               inLevelUp = 0;
            }
         }
         var _loc2_:Boolean = false;
         if(!falling)
         {
            if(queuedExperience > 0)
            {
               if(MainScene(gs).countEnemies() == 0)
               {
                  if(inLevelUp == 0)
                  {
                     if(!!expSoundChannel ? !expSoundChannel.playing() : true)
                     {
                        expSoundChannel = Sounds.experienceTick.play();
                     }
                     _loc12_ = experienceForLevel() / 400;
                     queuedExperience -= _loc12_;
                     experience += _loc12_;
                     _loc2_ = true;
                  }
               }
            }
         }
         if(expSoundChannel)
         {
            if(expSoundChannel.playing())
            {
               if(!_loc2_)
               {
                  expSoundChannel.stop();
               }
            }
         }
         if(experience + queuedExperience > experienceForLevel())
         {
            queuedLevelUp = true;
         }
         if(falling)
         {
            _loc13_ = 1 - fallingProgress / 100;
            _tint(_loc13_,0,0);
            legs.animFreeze = true;
         }
         else
         {
            if(lastHit < 6 && !lastHitRiot)
            {
               _tint(2,1,1);
            }
            else
            {
               _tint(1,0,0);
            }
            if(riotShield)
            {
               riotShield.tint(1,0,0);
               if(lastHit < 6 && lastHitRiot)
               {
                  riotShield.tint(2,1,1);
               }
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < 4)
         {
            if(!weaponIcons[_loc3_] || weapons[_loc3_] != oldWeapons[_loc3_])
            {
               oldWeapons[_loc3_] = weapons[_loc3_];
               if(weaponIcons[_loc3_])
               {
                  weaponIcons[_loc3_].remove();
                  weaponIcons[_loc3_] = null;
               }
               if(weapons[_loc3_])
               {
                  _loc14_ = weapons[_loc3_].getWeaponObject(gs);
                  if(_loc14_)
                  {
                     _loc14_.basex = offsetsX[_loc3_];
                     _loc14_.basey = offsetsY[_loc3_];
                     weaponIcons[_loc3_] = _loc14_;
                  }
               }
            }
            if(weaponIcons[_loc3_])
            {
               _loc15_ = tformed(offsetsX[_loc3_],offsetsY[_loc3_] - weaponIcons[_loc3_].baseHeight / 2);
               weaponIcons[_loc3_].basex = _loc15_.x;
               weaponIcons[_loc3_].basey = _loc15_.y;
               weaponIcons[_loc3_].baseScaleX = baseScaleX;
               weaponIcons[_loc3_].baseScaleY = baseScaleY;
               if(_loc3_ == 0 || _loc3_ == 2)
               {
                  weaponIcons[_loc3_].baseScaleX *= -1;
               }
               weaponIcons[_loc3_].baseRotation = modifiedRotation;
               weaponIcons[_loc3_].baseAlpha = baseAlpha;
            }
            _loc3_++;
         }
         legs.baseScaleX = baseScaleX;
         legs.baseScaleY = baseScaleY;
         legs.baseAlpha = baseAlpha;
         Bitmap(obj).smoothing = true;
         Bitmap(legs.obj).smoothing = true;
         var _loc4_:Number = Input.i.keyDown(39) - Input.i.keyDown(37);
         var _loc5_:Number = Input.i.keyDown(40) - Input.i.keyDown(38);
         _loc4_ += Input.i.keyDown(68) - Input.i.keyDown(65);
         _loc5_ += Input.i.keyDown(83) - Input.i.keyDown(87);
         if(beforeTeleporting())
         {
            _loc4_ = 0;
            _loc5_ = 0;
         }
         if(_loc4_ == -2 || _loc4_ == 2)
         {
            _loc4_ /= 2;
         }
         if(_loc5_ == -2 || _loc5_ == -2)
         {
            _loc5_ /= 2;
         }
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         if(_loc6_ > 0)
         {
            _loc4_ /= _loc6_;
            _loc5_ /= _loc6_;
         }
         dx += _loc4_ * 0.2;
         dy += _loc5_ * 0.2;
         dx *= 0.85;
         dy *= 0.85;
         basex += dx * 2;
         basey += dy * 2;
         if((_loc4_ != 0 || _loc5_ != 0) && !falling)
         {
            legs.baseRotation = 180 * Math.atan2(_loc5_,_loc4_) / Math.PI - 90;
            legs.animFreeze = false;
         }
         else
         {
            legs.animFreeze = true;
         }
         handleFiring();
         handleCollisions();
         var _loc7_:MainScene = MainScene(gs);
         var _loc8_:Number = _loc7_.startx + baseWidth / 2 + 5;
         var _loc9_:Number = _loc7_.endx - baseWidth / 2 - 5;
         var _loc10_:Number = _loc7_.starty + baseHeight / 2 + 5;
         var _loc11_:Number = _loc7_.endy - baseHeight / 2 - 5;
         if(Math.abs(lastY - 300) > 18 || !canMoveX())
         {
            basex = Interpolation.lockValue(basex,_loc8_,_loc9_);
         }
         else if(basex - baseWidth / 2 < _loc7_.startx || basex + baseWidth / 2 > _loc7_.endx)
         {
            if(basey < 300 - 18)
            {
               basey = 300 - 18;
            }
            else if(basey > 300 + 18)
            {
               basey = 300 + 18;
            }
         }
         if(Math.abs(lastX - 400) > 18 || !canMoveY())
         {
            basey = Interpolation.lockValue(basey,_loc10_,_loc11_);
         }
         else if(basey - baseHeight / 2 < _loc7_.starty || basey + baseHeight / 2 > _loc7_.endy)
         {
            if(basex < 400 - 18)
            {
               basex = 400 - 18;
            }
            else if(basex > 400 + 18)
            {
               basex = 400 + 18;
            }
         }
         super._update();
      }
      
      public function useMedkit() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < items.length)
         {
            if(items[_loc1_] is ItemMedkit)
            {
               if(ticks - lastMedkit > 100)
               {
                  lastMedkit = ticks;
                  items[_loc1_].useOn(this);
                  items[_loc1_] = null;
               }
            }
            _loc1_++;
         }
      }
      
      public function inLevelEnd() : Boolean
      {
         return lg.getCellData(gridx,gridy,"Finish") != null;
      }
      
      public function addKey() : void
      {
         ++keyCount;
      }
   }
}

