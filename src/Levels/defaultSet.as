package Levels
{
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import Objects.Beserker;
   import Objects.BigFlyBot;
   import Objects.BigTurret;
   import Objects.Boss;
   import Objects.Cash;
   import Objects.Charge;
   import Objects.ComsTower;
   import Objects.FloorProp;
   import Objects.Grunt;
   import Objects.GunFighter;
   import Objects.Hover;
   import Objects.HoverSpawn;
   import Objects.HoverSwarm;
   import Objects.HoverSwarm2;
   import Objects.HoverSwarmGun;
   import Objects.Hulk;
   import Objects.Inertia;
   import Objects.Jumper;
   import Objects.KeyPlace;
   import Objects.MineLayer;
   import Objects.RespawnPoint;
   import Objects.Ship;
   import Objects.ShootingGrunt;
   import Objects.ShopTile;
   import Objects.Shuttle;
   import Objects.Sleeper;
   import Objects.Spawn;
   import Objects.Spider;
   import Objects.SpiderGunner;
   import Objects.SpiderSpit;
   import Objects.Swarm;
   import Objects.TreasureChest;
   import Objects.Turret;
   import Objects.RoboWalker;
   import flash.display.Bitmap;
   
   public class defaultSet
   {
      public static var levels:int = 51;
      
      public function defaultSet()
      {
         super();
      }
      
      internal function createLevel30(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[SpiderSpit,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel31(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Shuttle,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel10(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[KeyPlace,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel11(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Turret,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel1(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Charge,395.125,314.3125,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel2(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Spawn,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel3(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Spawn,400,300,0],[Spawn,400,196,0],[Spawn,400,404,0],[Spawn,504,300,0],[Spawn,296,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel4(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Grunt,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel5(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[TreasureChest,401,292.0625,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel6(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Cash,244,300,0],[Cash,296,248,0],[Cash,400,196,0],[Cash,296,300,0],[Cash,348,352,0],[Cash,244,352,0],[Cash,452,404,0],[Cash,556,352,0],[Cash,452,352,0],[Cash,348,248,0],[Cash,452,248,0],[Cash,400,352,0],[Cash,348,404,0],[Cash,556,196,0],[Cash,400,300,0],[Cash,452,300,0],[Cash,556,248,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel0(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Hulk,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      public function init(param1:int, param2:GameScene) : Array
      {
         var _loc4_:GameObject = null;
         var _loc3_:Array = new Array();
         if(param1 == 0)
         {
            createLevel0(_loc3_,param2);
         }
         if(param1 == 1)
         {
            createLevel1(_loc3_,param2);
         }
         if(param1 == 2)
         {
            createLevel2(_loc3_,param2);
         }
         if(param1 == 3)
         {
            createLevel3(_loc3_,param2);
         }
         if(param1 == 4)
         {
            createLevel4(_loc3_,param2);
         }
         if(param1 == 5)
         {
            createLevel5(_loc3_,param2);
         }
         if(param1 == 6)
         {
            createLevel6(_loc3_,param2);
         }
         if(param1 == 7)
         {
            createLevel7(_loc3_,param2);
         }
         if(param1 == 8)
         {
            createLevel8(_loc3_,param2);
         }
         if(param1 == 9)
         {
            createLevel9(_loc3_,param2);
         }
         if(param1 == 10)
         {
            createLevel10(_loc3_,param2);
         }
         if(param1 == 11)
         {
            createLevel11(_loc3_,param2);
         }
         if(param1 == 12)
         {
            createLevel12(_loc3_,param2);
         }
         if(param1 == 13)
         {
            createLevel13(_loc3_,param2);
         }
         if(param1 == 14)
         {
            createLevel14(_loc3_,param2);
         }
         if(param1 == 15)
         {
            createLevel15(_loc3_,param2);
         }
         if(param1 == 16)
         {
            createLevel16(_loc3_,param2);
         }
         if(param1 == 17)
         {
            createLevel17(_loc3_,param2);
         }
         if(param1 == 18)
         {
            createLevel18(_loc3_,param2);
         }
         if(param1 == 19)
         {
            createLevel19(_loc3_,param2);
         }
         if(param1 == 20)
         {
            createLevel20(_loc3_,param2);
         }
         if(param1 == 21)
         {
            createLevel21(_loc3_,param2);
         }
         if(param1 == 22)
         {
            createLevel22(_loc3_,param2);
         }
         if(param1 == 23)
         {
            createLevel23(_loc3_,param2);
         }
         if(param1 == 24)
         {
            createLevel24(_loc3_,param2);
         }
         if(param1 == 25)
         {
            createLevel25(_loc3_,param2);
         }
         if(param1 == 26)
         {
            createLevel26(_loc3_,param2);
         }
         if(param1 == 27)
         {
            createLevel27(_loc3_,param2);
         }
         if(param1 == 28)
         {
            createLevel28(_loc3_,param2);
         }
         if(param1 == 29)
         {
            createLevel29(_loc3_,param2);
         }
         if(param1 == 30)
         {
            createLevel30(_loc3_,param2);
         }
         if(param1 == 31)
         {
            createLevel31(_loc3_,param2);
         }
         if(param1 == 32)
         {
            createLevel32(_loc3_,param2);
         }
         if(param1 == 33)
         {
            createLevel33(_loc3_,param2);
         }
         if(param1 == 34)
         {
            createLevel34(_loc3_,param2);
         }
         if(param1 == 35)
         {
            createLevel35(_loc3_,param2);
         }
         if(param1 == 36)
         {
            createLevel36(_loc3_,param2);
         }
         if(param1 == 37)
         {
            createLevel37(_loc3_,param2);
         }
         if(param1 == 38)
         {
            createLevel38(_loc3_,param2);
         }
         if(param1 == 39)
         {
            createLevel39(_loc3_,param2);
         }
         if(param1 == 40)
         {
            createLevel40(_loc3_,param2);
         }
         if(param1 == 41)
         {
            createLevel41(_loc3_,param2);
         }
         if(param1 == 42)
         {
            createLevel42(_loc3_,param2);
         }
         if(param1 == 43)
         {
            createLevel43(_loc3_,param2);
         }
         if(param1 == 44)
         {
            createLevel44(_loc3_,param2);
         }
         if(param1 == 45)
         {
            createLevel45(_loc3_,param2);
         }
         return _loc3_;
      }
      
      internal function createLevel9(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Charge,400,300,0],[Charge,348,300,0],[Charge,452,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel14(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Hover,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel15(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[SpiderGunner,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel16(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Cash,348,248,0],[Cash,400,196,0],[Cash,452,248,0],[Cash,452,196,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel17(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[FloorProp,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel7(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Spawn,348,300,0],[Spawn,452,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel8(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Grunt,400,300,0],[Grunt,400,248,0],[Grunt,348,300,0],[Grunt,452,300,0],[Grunt,400,352,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel12(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Spider,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel13(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Swarm,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel36(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Inertia,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel37(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[HoverSpawn,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel38(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Beserker,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel39(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[ShopTile,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel18(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[FloorProp,400,300,1],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel19(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[FloorProp,400,300,2],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel33(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[MineLayer,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel34(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Sleeper,400,248,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel35(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[HoverSwarm,400,248,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel40(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[FloorProp,400,248,28],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel41(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Jumper,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel20(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[FloorProp,400,300,3],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel21(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[FloorProp,348,248,0],[FloorProp,400,248,0],[FloorProp,400,300,0],[FloorProp,348,300,0],[FloorProp,452,300,0],[FloorProp,452,248,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel22(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[FloorProp,348,248,0],[FloorProp,452,248,0],[FloorProp,296,248,0],[FloorProp,504,248,0],[FloorProp,452,300,0],[FloorProp,400,300,0],[FloorProp,296,300,0],[FloorProp,400,248,2],[FloorProp,348,300,3],[FloorProp,504,300,1],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel23(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[FloorProp,400,248,1],[FloorProp,400,300,1],[FloorProp,452,300,1],[FloorProp,452,248,1],[FloorProp,348,248,1],[FloorProp,348,300,1],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel24(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[ComsTower,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel25(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[GunFighter,400,248,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel26(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[BigTurret,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel27(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[ShootingGrunt,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel28(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[RespawnPoint,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel29(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[BigFlyBot,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel45(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Ship,395.6875,317.1875,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel32(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[RoboWalker,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel42(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[HoverSwarm2,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel43(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[HoverSwarmGun,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      internal function createLevel44(param1:Array, param2:GameScene) : void
      {
         var _loc4_:Array = null;
         var _loc5_:GameObject = null;
         var _loc3_:Array = [[Boss,400,300,0],[]];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = createObject(_loc4_,param2);
            if(_loc5_)
            {
               param1.push(_loc5_);
            }
         }
      }
      
      public function createObject(param1:Array, param2:GameScene) : GameObject
      {
         var _loc3_:GameObject = null;
         if(param1.length > 0)
         {
            _loc3_ = new param1[0](param2,param1[1],param1[2]);
            if(param1[3] != 0)
            {
               if(_loc3_["images"])
               {
                  Bitmap(_loc3_.obj).bitmapData = _loc3_["images"][param1[3]];
                  _loc3_.baseWidth = _loc3_.obj.width;
                  _loc3_.baseHeight = _loc3_.obj.height;
                  _loc3_.animFrame = param1[3];
               }
            }
            if(param1.length > 4)
            {
               _loc3_.baseAlpha = param1[4];
            }
            if(param1.length > 5)
            {
               _loc3_.baseRotation = param1[5];
            }
            if(param1.length > 7)
            {
               _loc3_.baseScaleX = param1[6];
               _loc3_.baseScaleY = param1[7];
            }
            if(param1.length > 8)
            {
               _loc3_.baseBrightness = param1[8];
            }
            if(param1.length > 9)
            {
               _loc3_.additive = true;
            }
            return _loc3_;
         }
         return null;
      }
      
      public function getClasses(param1:int) : Array
      {
         var _loc2_:Array = new Array();
         if(param1 == 0)
         {
            return [Hulk];
         }
         if(param1 == 1)
         {
            return [Charge];
         }
         if(param1 == 2)
         {
            return [Spawn];
         }
         if(param1 == 3)
         {
            return [Spawn,Spawn,Spawn,Spawn,Spawn];
         }
         if(param1 == 4)
         {
            return [Grunt];
         }
         if(param1 == 5)
         {
            return [TreasureChest];
         }
         if(param1 == 6)
         {
            return [Cash,Cash,Cash,Cash,Cash,Cash,Cash,Cash,Cash,Cash,Cash,Cash,Cash,Cash,Cash,Cash,Cash];
         }
         if(param1 == 7)
         {
            return [Spawn,Spawn];
         }
         if(param1 == 8)
         {
            return [Grunt,Grunt,Grunt,Grunt,Grunt];
         }
         if(param1 == 9)
         {
            return [Charge,Charge,Charge];
         }
         if(param1 == 10)
         {
            return [KeyPlace];
         }
         if(param1 == 11)
         {
            return [Turret];
         }
         if(param1 == 12)
         {
            return [Spider];
         }
         if(param1 == 13)
         {
            return [Swarm];
         }
         if(param1 == 14)
         {
            return [Hover];
         }
         if(param1 == 15)
         {
            return [SpiderGunner];
         }
         if(param1 == 16)
         {
            return [Cash,Cash,Cash,Cash];
         }
         if(param1 == 17)
         {
            return [FloorProp];
         }
         if(param1 == 18)
         {
            return [FloorProp];
         }
         if(param1 == 19)
         {
            return [FloorProp];
         }
         if(param1 == 20)
         {
            return [FloorProp];
         }
         if(param1 == 21)
         {
            return [FloorProp,FloorProp,FloorProp,FloorProp,FloorProp,FloorProp];
         }
         if(param1 == 22)
         {
            return [FloorProp,FloorProp,FloorProp,FloorProp,FloorProp,FloorProp,FloorProp,FloorProp,FloorProp,FloorProp];
         }
         if(param1 == 23)
         {
            return [FloorProp,FloorProp,FloorProp,FloorProp,FloorProp,FloorProp];
         }
         if(param1 == 24)
         {
            return [ComsTower];
         }
         if(param1 == 25)
         {
            return [GunFighter];
         }
         if(param1 == 26)
         {
            return [BigTurret];
         }
         if(param1 == 27)
         {
            return [ShootingGrunt];
         }
         if(param1 == 28)
         {
            return [RespawnPoint];
         }
         if(param1 == 29)
         {
            return [BigFlyBot];
         }
         if(param1 == 30)
         {
            return [SpiderSpit];
         }
         if(param1 == 31)
         {
            return [Shuttle];
         }
         if(param1 == 32)
         {
            return [RoboWalker];
         }
         if(param1 == 33)
         {
            return [MineLayer];
         }
         if(param1 == 34)
         {
            return [Sleeper];
         }
         if(param1 == 35)
         {
            return [HoverSwarm];
         }
         if(param1 == 36)
         {
            return [Inertia];
         }
         if(param1 == 37)
         {
            return [HoverSpawn];
         }
         if(param1 == 38)
         {
            return [Beserker];
         }
         if(param1 == 39)
         {
            return [ShopTile];
         }
         if(param1 == 40)
         {
            return [FloorProp];
         }
         if(param1 == 41)
         {
            return [Jumper];
         }
         if(param1 == 42)
         {
            return [HoverSwarm2];
         }
         if(param1 == 43)
         {
            return [HoverSwarmGun];
         }
         if(param1 == 44)
         {
            return [Boss];
         }
         if(param1 == 45)
         {
            return [Ship];
         }
         return _loc2_;
      }
   }
}

