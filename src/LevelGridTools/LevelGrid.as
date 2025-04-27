package LevelGridTools
{
   import Levels.*;
   import Tools.Debug;
   
   public class LevelGrid
   {
      public var grid:Array = new Array();
      
      public var data:Object = new Object();
      
      public var startx:int = 0;
      
      public var starty:int = 0;
      
      public function LevelGrid()
      {
         super();
      }
      
      public function getCellData(param1:int, param2:int, param3:String) : Object
      {
         return data[param3 + "," + param1 + "," + param2];
      }
      
      public function pushArr(param1:int, param2:Array) : void
      {
         grid.push(param2);
      }
      
      public function _init(missionNum:int = 0) : void
      {
         var predefinedCountsRow:Array = null;
         var tileIndex:int = 0;
         var tileData:Array = null;
         var filteredTileData:Array = null;
         var filteredTileIndex:int = 0;

         var levelWidth:int = mainGameLevels.maxX(missionNum) - mainGameLevels.minX(missionNum) + 1;
         var levelHeight:int = mainGameLevels.maxY(missionNum) - mainGameLevels.minY(missionNum) + 1;

         for (var gridY:int = 0; gridY < levelHeight; gridY++)
         {
            predefinedCountsRow = new Array(levelWidth);

            for (var gridX:int = 0; gridX < levelWidth; gridX++)
            {
               tileData = mainGameLevels.init(missionNum, gridX + mainGameLevels.minX(missionNum), gridY + mainGameLevels.minY(missionNum));
               filteredTileData = new Array();

               for (tileIndex = 0; tileIndex < tileData.length; tileIndex++)
               {
                     if (tileData[tileIndex][0] is propertiesSet)
                     {
                        switch (tileData[tileIndex][1])
                        {
                           case 0:
                                 setCellData(gridX, gridY, "Start", true);
                                 break;
                           case 1:
                                 setCellData(gridX, gridY, "Key0", true);
                                 break;
                           case 2:
                                 setCellData(gridX, gridY, "HasKey0", true);
                                 break;
                           case 3:
                                 setCellData(gridX, gridY, "Finish", true);
                                 break;
                           case 4:
                                 setCellData(gridX, gridY, "PartialFinish", true);
                                 break;
                           case 6:
                                 setCellData(gridX, gridY, "Ambush", true);
                                 break;
                           case 7:
                                 setCellData(gridX, gridY, "WeaponTreasure", true);
                                 break;
                        }
                     }
                     else
                     {
                        filteredTileData.push(tileData[tileIndex]);
                     }
               }

               predefinedCountsRow[gridX] = filteredTileData.length;
               setCellData(gridX, gridY, "PredefinedLevel", filteredTileData);
            }

            pushArr(gridY, predefinedCountsRow);
         }
      }
      
      public function init(missionNum:int = 0) : void
      {
         var _loc3_:int = 0;
         _init(missionNum);
         var _loc2_:int = 0;
         while(_loc2_ < grid.length)
         {
            _loc3_ = 0;
            while(_loc3_ < grid[_loc2_].length)
            {
               if(getCellData(_loc3_,_loc2_,"Start"))
               {
                  startx = _loc3_;
                  starty = _loc2_;
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function setCellData(param1:int, param2:int, param3:String, param4:Object) : void
      {
         data[param3 + "," + param1 + "," + param2] = param4;
      }
      
      public function getCell(param1:int, param2:int) : int
      {
         if(param2 < 0 || param2 >= grid.length)
         {
            return 0;
         }
         var _loc3_:Array = grid[param2];
         if(param1 < 0 || param1 >= _loc3_.length)
         {
            return 0;
         }
         return _loc3_[param1];
      }
   }
}

