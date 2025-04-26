package GameScenes
{
   public class GameSceneCamera
   {
      public var totalTicks:Number = 300;
      
      public var linear:Boolean = false;
      
      public var minX:Number = -9999999;
      
      public var minY:Number = -9999999;
      
      public var maxX:Number = 9999999;
      
      public var maxY:Number = 9999999;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var frameChange:Number = 1;
      
      public function GameSceneCamera()
      {
         super();
      }
      
      public function position(param1:Number, param2:Number) : void
      {
         this.x = param1;
         this.y = param2;
         if(this.x > maxX)
         {
            this.x = maxX;
         }
         if(this.x < minX)
         {
            this.x = minX;
         }
         if(this.y > maxY)
         {
            this.y = maxY;
         }
         if(this.y < minY)
         {
            this.y = minY;
         }
      }
      
      public function positionInterpolate(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         position((param1 + param3) / 2,(param2 + param4) / 2);
      }
   }
}

