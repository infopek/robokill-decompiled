package MapDisplay
{
   import GameObjects.*;
   import GameScenes.GameScene;
   import GlobalSetup.*;
   import InventoryScreen.*;
   import Layouts.LayerFilter;
   import LevelGridTools.LevelGrid;
   import Misc.SpawnPoints;
   import ObjectBase.AlienBase;
   import ObjectBase.PlayerBase;
   import Objects.*;
   import Scenes.*;
   import flash.display.*;
   
   import Tools.Debug;

   public class Map extends HUDDisplay
   {
      public static var mapOpenedCount:int = 0;
      
      public static var spawnPointImage:Bitmap = new Embeds.map_teleporter_png();
      
      public var buttons:Array = new Array();
      
      public var doingTeleport:int = 0;
      
      public var shopkeeperAlien:AlienBase;
      
      public var playerToken:GameObject;
      
      public var buttonPositions:Array = new Array();
      
      public var doneHelp:Boolean = false;
      
      public var teleportCount:int = 0;
      
      public var mapObject:GameObject;
      
      public function Map(param1:GameScene)
      {
         super(param1,Embeds.inventory_png,"TextLayer",400,300);
         basey += 44;
         ++mapOpenedCount;
      }
      
      public function pushGrid(param1:Bitmap, param2:int, param3:int) : void
      {
         var _loc6_:GameObject = null;
         var _loc7_:Class = null;
         if(MainScene(gs).player.teleportHelp)
         {
            doneHelp = true;
         }
         var _loc4_:PlayerBase = MainScene(gs).player;
         mapObject.drawToPixmap(param1,param2 * 39,param3 * 29);
         var _loc5_:SpawnPoints = MainScene(gs).spawnPoints;
         if(_loc4_.lg.getCellData(param2,param3,"Finish") != null || _loc4_.lg.getCellData(param2,param3,"PartialFinish") != null)
         {
            make(Embeds.map_uncomplete_png,param2,param3);
         }
         if(_loc4_.lg.getCellData(param2,param3,"Complete") != null)
         {
            make(Embeds.map_complete_png,param2,param3);
         }
         if(param2 == MainScene(gs).player.gridx && param3 == MainScene(gs).player.gridy)
         {
            playerToken = new GameObject(gs,Embeds.map_room3_png,"AfterAfterTextLayer",0,0);
            playerToken.basex = param2 * 39 - mapObject.baseWidth / 2;
            playerToken.basey = param3 * 29 - mapObject.baseHeight / 2;
            playerToken.updateDespitePaused = true;
            playerToken.basex += playerToken.baseWidth / 2 - 1;
            playerToken.basey += playerToken.baseHeight / 2 - 1;
            addChild(playerToken);
            _loc6_ = new GameObject(gs,Embeds.youarehere_png,"AfterAfterTextLayer",0,0);
            playerToken.addChild(_loc6_);
            _loc6_.baseHandleX = 0;
            _loc6_.baseHandleY = 1;
            _loc6_.basex = playerToken.baseWidth / 2;
            _loc6_.basey = -playerToken.baseHeight / 2;
         }
         else if(_loc5_.contains(param2,param3))
         {
            _loc6_ = new GameObject(gs,SimpleButton,"AfterTextLayer",param2 * 39 - mapObject.baseWidth / 2 + (39 - spawnPointImage.width) / 2,param3 * 29 - mapObject.baseHeight / 2 + (29 - spawnPointImage.height) / 2 - 1);
            _loc6_.baseHandleX = 0;
            _loc6_.baseHandleY = 0;
            _loc7_ = Embeds.map_teleporter_png;
            if(_loc4_.lg.getCellData(param2,param3,"Start") != null)
            {
               _loc6_.basex = param2 * 39 - mapObject.baseWidth / 2;
               _loc6_.basey = param3 * 29 - mapObject.baseHeight / 2;
               _loc7_ = Embeds.map_teleporter_base_png;
            }
            _loc6_.setupButton(_loc7_,"");
            buttons.push(_loc6_);
            buttonPositions.push([param2,param3]);
            if(!MainScene(gs).canMoveRooms())
            {
               _loc6_.disableButton();
            }
            else if(!doneHelp && _loc4_.lg.getCellData(param2,param3,"Start") == null)
            {
               if(MainScene(gs).player.gridx != param2 || MainScene(gs).player.gridy != param3)
               {
                  doneHelp = true;
                  _loc6_.updateDespitePaused = true;
                  _loc6_.helper.blinkHelpText("CLICK TO TELEPORT","Pixelation-34",7);
               }
            }
            addChild(_loc6_);
         }
      }
      
      public function buildMap(param1:LevelGrid, param2:int, param3:int) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc4_:Bitmap = new Embeds.map_room1_png();
         var _loc5_:Bitmap = new Embeds.map_room2_png();
         var _loc6_:Array = [new Embeds.map_con_1_png(),new Embeds.map_con_2_png(),new Embeds.map_con_3_png(),new Embeds.map_con_4_png()];
         mapObject = new GameObject(gs,Bitmap,"AfterTextLayer",400,300 + 44);
         mapObject.updateDespitePaused = true;
         slide(mapObject);
         Bitmap(mapObject.obj).bitmapData = new BitmapData(param1.grid[0].length * 39,param1.grid.length * 29,true,0);
         mapObject.baseHandleX = 0.5;
         mapObject.baseHandleY = 0.5;
         mapObject.baseWidth = mapObject.obj.width;
         mapObject.baseHeight = mapObject.obj.height;
         _loc7_ = 0;
         while(_loc7_ < param1.grid.length)
         {
            _loc8_ = 0;
            while(_loc8_ < param1.grid[_loc7_].length)
            {
               if(param1.grid[_loc7_][_loc8_] > 0)
               {
                  if(param1.getCellData(_loc8_,_loc7_,"Explored") != null)
                  {
                     pushGrid(_loc4_,_loc8_,_loc7_);
                  }
                  else
                  {
                     pushGrid(_loc5_,_loc8_,_loc7_);
                  }
               }
               _loc8_++;
            }
            _loc7_++;
         }
         _loc8_ = 0;
         while(_loc8_ < param1.grid[0].length)
         {
            _loc7_ = 1;
            while(_loc7_ < param1.grid.length)
            {
               if(param1.grid[_loc7_ - 1][_loc8_] > 0 && param1.grid[_loc7_][_loc8_] > 0)
               {
                  if(Boolean(param1.getCellData(_loc8_,_loc7_ - 1,"Explored")) || Boolean(param1.getCellData(_loc8_,_loc7_,"Explored")))
                  {
                     if(_loc8_ == param2 && (_loc7_ == param3 || _loc7_ - 1 == param3))
                     {
                        pushConnect(_loc6_[2],_loc8_,_loc7_);
                     }
                     else
                     {
                        pushConnect(_loc6_[0],_loc8_,_loc7_);
                     }
                  }
               }
               _loc7_++;
            }
            _loc8_++;
         }
         _loc7_ = 0;
         while(_loc7_ < param1.grid.length)
         {
            _loc8_ = 1;
            while(_loc8_ < param1.grid[_loc7_].length)
            {
               if(param1.grid[_loc7_][_loc8_ - 1] > 0 && param1.grid[_loc7_][_loc8_] > 0)
               {
                  if(Boolean(param1.getCellData(_loc8_ - 1,_loc7_,"Explored")) || Boolean(param1.getCellData(_loc8_,_loc7_,"Explored")))
                  {
                     if(_loc7_ == param3 && (_loc8_ == param2 || _loc8_ - 1 == param2))
                     {
                        pushHConnect(_loc6_[3],_loc8_,_loc7_);
                     }
                     else
                     {
                        pushHConnect(_loc6_[1],_loc8_,_loc7_);
                     }
                  }
               }
               _loc8_++;
            }
            _loc7_++;
         }
      }
      
      public function stopTalking() : *
      {
         shopkeeperAlien.isTalking = false;
      }
      
      public function pushHConnect(param1:Bitmap, param2:int, param3:int) : void
      {
         mapObject.drawToPixmap(param1,param2 * 39 - 3,param3 * 29 + 12);
      }
      
      override public function _update() : void
      {
         var _loc1_:MainScene = null;
         var _loc2_:int = 0;
         var _loc3_:GameObject = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc1_ = MainScene(gs);
         if(_loc1_.countEnemies() == 0)
         {
            if(_loc1_.canMoveRooms())
            {
               if(!_loc1_.fading)
               {
                  if(doingTeleport == 0)
                  {
                     _loc2_ = 0;
                     while(_loc2_ < buttons.length)
                     {
                        _loc3_ = buttons[_loc2_];
                        if(_loc3_.mHit())
                        {
                           doingTeleport = 1;
                           teleportCount = _loc2_;
                           if(playerToken)
                           {
                              _loc4_ = buttonPositions[_loc2_][0] * 39 - mapObject.baseWidth / 2;
                              _loc5_ = buttonPositions[_loc2_][1] * 29 - mapObject.baseHeight / 2;
                              _loc4_ += playerToken.baseWidth / 2 - 1;
                              _loc5_ += playerToken.baseHeight / 2 - 1;
                              playerToken.helper.slideTo(_loc4_,_loc5_,false,60);
                           }
                        }
                        _loc2_++;
                     }
                  }
                  else
                  {
                     ++doingTeleport;
                     if(doingTeleport == 60)
                     {
                        MainScene(gs).player.teleportHelp = true;
                        _loc1_.fading = 1;
                        _loc1_.player.gridx = buttonPositions[teleportCount][0];
                        _loc1_.player.gridy = buttonPositions[teleportCount][1];
                        _loc1_.player.seekSpawnPoint = true;
                        _loc1_.player.teleporting = 0;
                        _loc1_.player.teleportOffset = 80;
                        this.kill();
                     }
                  }
               }
            }
         }
         super._update();
      }
      
      override public function _open(param1:GameScene) : void
      {
         buildMap(MainScene(param1).player.lg,MainScene(param1).player.gridx,MainScene(param1).player.gridy);
         shopkeeper = new GameObject(param1,Embeds.shop_character_png,"TextLayer",0,67 - 328);
         shopkeeper.updateDespitePaused = true;
         var _loc2_:String = "The yellow player icon is your current location. Red rooms with\nstars are mission objective rooms. Click on any room with a\nteleport icon or the shop icon to move to that room.";
         _loc2_ = _loc2_.toUpperCase();
         shopkeeperText = createText(-(shopkeeper.baseWidth - 314) / 2,-(shopkeeper.baseHeight - 14) / 2,stopTalking,_loc2_);
         shopkeeper.addChild(shopkeeperText);
         addChild(shopkeeper);
         shopkeeperAlien = new Robot(param1,0,0);
         shopkeeper.addChild(shopkeeperAlien);
         shopkeeperAlien.basex = -244;
         shopkeeperAlien.basey = shopkeeper.baseHeight / 2 - shopkeeperAlien.baseHeight / 2 - 8;
         shopkeeperAlien.isTalking = true;
         if(mapOpenedCount >= 2)
         {
            Robot(shopkeeperAlien).audio = false;
         }
      }
      
      public function make(param1:Class, param2:int, param3:int) : void
      {
         var _loc4_:GameObject = new GameObject(gs,param1,"AfterTextLayer",0,0);
         _loc4_.basex = param2 * 39 - mapObject.baseWidth / 2 + (39 - _loc4_.baseWidth) / 2 - 1;
         _loc4_.basey = param3 * 29 - mapObject.baseHeight / 2 + (29 - _loc4_.baseHeight) / 2 - 1;
         _loc4_.baseHandleX = 0;
         _loc4_.baseHandleY = 0;
         addChild(_loc4_);
      }
      
      public function pushConnect(param1:Bitmap, param2:int, param3:int) : void
      {
         mapObject.drawToPixmap(param1,param2 * 39 + 20 - 3,param3 * 29 - 3);
      }
      
      override public function _kill() : void
      {
         LayerFilter.reverse(mapObject);
      }
   }
}

