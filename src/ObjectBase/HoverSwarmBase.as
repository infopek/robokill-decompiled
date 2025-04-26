package ObjectBase
{
   import GameObjects.GameObjectFilterRotateSlowly;
   import GameScenes.GameScene;
   import Scenes.MainScene;
   
   public class HoverSwarmBase extends SwarmBase
   {
      public var speed:Number = 1.6;
      
      public var alternateMovement:Boolean = false;
      
      public var formUpTime:Number = 400 + Math.random() * 400;
      
      public var alternateMovementTicks:int = 0;
      
      public var baseExtraAngle:Number = -60 + 120 * Math.random();
      
      public function HoverSwarmBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
         baseHealth *= 5;
         extraHealth *= 5;
         inertia = 0.98;
         addFilter(new GameObjectFilterRotateSlowly(3));
         collidesWithWalls = false;
      }
      
      override public function doMovement() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(alternateMovement)
         {
            ++alternateMovementTicks;
            slowAroundCorners = false;
            _loc1_ = angleToObject(MainScene(gs).player) + 90;
            _loc2_ = 1 - alternateMovementTicks / formUpTime;
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
            _loc3_ = baseExtraAngle * _loc2_;
            moveAlongAngle(speed,_loc1_ + _loc3_,true);
            baseRotation = _loc1_ + _loc3_;
         }
         else
         {
            moveTowardsPlayerFly(speed);
            baseRotation = angleToObject(MainScene(gs).player) + 90;
         }
      }
      
      override public function canMoveOnLand() : Boolean
      {
         return true;
      }
      
      override public function canFall() : Boolean
      {
         return false;
      }
      
      override public function _experience() : int
      {
         return 20;
      }
   }
}

