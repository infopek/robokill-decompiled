package Tools
{
   public class PathfindToPoint
   {
      public var width:int = 0;
      public var height:int = 0;

      public var updateCounter:int = 0;
      public var iteration:int = 0;

      public var field:Array;

      public var markNext:Array = new Array(512);
      public var markNextLength:int = 0;

      public var marked:Array = new Array(512);
      public var markedLength:int = 0;

      public var lastMarkX:int = -1;
      public var lastMarkY:int = -1;

      public var allowFlying:Boolean = false;

      public function PathfindToPoint(gridWidth:int, gridHeight:int)
      {
         super();
         this.width = gridWidth;
         this.height = gridHeight;
         constructArray();
      }

      public function constructArray():void
      {
         field = new Array(width);

         for (var x:int = 0; x < width; x++)
         {
            field[x] = new Array();

            for (var y:int = 0; y < height; y++)
            {
               var square:PathfindSquare = new PathfindSquare();
               square.x = x;
               square.y = y;
               field[x][y] = square;
            }
         }
      }

      public function getField(x:int, y:int):PathfindSquare
      {
         if (x >= 0 && x < width && y >= 0 && y < height)
         {
            return field[x][y];
         }
         return null;
      }

      public function search(centerX:int, centerY:int):void
      {
         updateCounter++;

         for (var offsetX:int = -1; offsetX <= 1; offsetX++)
         {
            for (var offsetY:int = -1; offsetY <= 1; offsetY++)
            {
               if (offsetX == 0 && offsetY == 0)
                  continue;

               var targetX:int = centerX + offsetX;
               var targetY:int = centerY + offsetY;

               if (targetX >= 0 && targetX < width && targetY >= 0 && targetY < height)
               {
                  var neighbor:PathfindSquare = field[targetX][targetY];
                  var distance:Number = (offsetX == 0 || offsetY == 0) ? 1.0 : 1.4;

                  var current:PathfindSquare = field[centerX][centerY];

                  if (distance < 1.1 && (current.dist + distance < neighbor.dist || neighbor.seq < iteration))
                  {
                     neighbor.seq = iteration;
                     neighbor.dist = current.dist + distance;
                     neighbor.dirx = -offsetX;
                     neighbor.diry = -offsetY;

                     var traversable:Boolean = neighbor.passable;

                     if (allowFlying && !neighbor.exists)
                     {
                        traversable = true;
                     }

                     var alreadyQueued:Boolean = false;

                     for (var i:int = 0; i < markNextLength; i++)
                     {
                        if (markNext[i] == neighbor)
                        {
                           alreadyQueued = true;
                           break;
                        }
                     }

                     if (traversable && !alreadyQueued)
                     {
                        markNext[markNextLength++] = neighbor;
                     }
                  }
               }
            }
         }
      }

      public function reconstructGraph(destX:int, destY:int):void
      {
         if (destX == lastMarkX && destY == lastMarkY)
            return;

         lastMarkX = destX;
         lastMarkY = destY;

         updateCounter = 0;
         iteration++;

         for (var x:int = 0; x < width; x++)
         {
            for (var y:int = 0; y < height; y++)
            {
               field[destX][destY].isDest = (destX == x && destY == y);
            }
         }

         field[destX][destY].dist = 0;
         markNextLength = 1;
         markNext[0] = field[destX][destY];
      }

      public function lazyUpdate():void
      {
         if (markNextLength > 0)
         {
            var temp:Array = marked;
            marked = markNext;
            markedLength = markNextLength;
            markNext = temp;
            markNextLength = 0;

            for (var i:int = 0; i < markedLength; i++)
            {
               marked[i].seq = iteration;
            }

            for (i = 0; i < markedLength; i++)
            {
               search(marked[i].x, marked[i].y);
            }
         }
      }
   }
}
