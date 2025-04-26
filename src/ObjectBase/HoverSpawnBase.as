package ObjectBase
{
   import GameObjects.GameObject;
   import GameObjects.GameObjectFilter;
   import GameObjects.GameObjectFilterRotateSlowly;
   import GameScenes.GameScene;
   import Objects.HoverSwarm2;
   import Objects.HoverSwarmGun;
   import Scenes.MainScene;
   import flash.display.Bitmap;
   
   public class HoverSpawnBase extends EnemyBase
   {
      public var slowDown:int = 0;
      
      public var spawning:int = 0;
      
      public var followAngle:Number = 90;
      
      public var following:GameObject;
      
      public var nextSlowDown:int = 200 + Math.random() * 200;
      
      public var circlePointX:Number = 400;
      
      public var circlePointY:Number = 300;
      
      public function HoverSpawnBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
         inertia = 0.99;
         pushable = false;
         facePlayer = false;
         addFilter(new GameObjectFilterRotateSlowly(1));
         baseHealth *= 400;
         getNewDest();
      }
      
      public function circleDistance(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = 200;
         var _loc4_:Number = param1;
         var _loc5_:Number = 800 - param1;
         var _loc6_:Number = param2;
         var _loc7_:Number = 600 - param2;
         return Math.max(Math.max(Math.max(_loc4_,_loc5_),_loc6_),_loc7_) - _loc3_;
      }
      
      override public function _update() : void
      {
         var _loc4_:Class = null;
         var _loc5_:GameObject = null;
         var _loc6_:GameObjectFilter = null;
         Bitmap(obj).smoothing = true;
         if(blockUpdating())
         {
            super._update();
            return;
         }
         super._update();
         var _loc1_:Number = followAngle;
         var _loc2_:Number = distanceToPoint(circlePointX,circlePointY);
         if(_loc2_ < 20)
         {
            getNewDest();
            spawning = 100;
         }
         var _loc3_:Number = circleDistance(circlePointX,circlePointY);
         if(_loc2_ > _loc3_)
         {
            _loc1_ *= 0.9;
         }
         if(spawning > 0)
         {
            --spawning;
            if(randTicks % 20 == 0)
            {
               _loc4_ = Math.random() < 0.25 ? HoverSwarmGun : HoverSwarm2;
               if(MainScene(gs).currentEpisode < 12)
               {
                  _loc4_ = HoverSwarm2;
               }
               _loc5_ = spawn(_loc4_,basex,basey,0);
               if(_loc5_)
               {
                  _loc5_.changeZOrder(_loc5_.zOrderString,true);
                  _loc5_.baseRotation = Math.random() * 360;
                  for each(_loc6_ in _loc5_.filters)
                  {
                     if(_loc6_ is GameObjectFilterRotateSlowly)
                     {
                        GameObjectFilterRotateSlowly(_loc6_).internalRotation = _loc5_.baseRotation;
                        GameObjectFilterRotateSlowly(_loc6_).internalRotationSet = true;
                     }
                  }
               }
            }
            moveAlongAngle(0,helper.angleToPoint(circlePointX,circlePointY),true);
         }
         else
         {
            moveAlongAngle(0.8,helper.angleToPoint(circlePointX,circlePointY),true);
         }
      }
      
      override public function canFall() : Boolean
      {
         return false;
      }
      
      public function getNewDest() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Number = circlePointX;
         var _loc2_:Number = circlePointY;
         do
         {
            circlePointX = 100 + 600 * Math.random();
            circlePointY = 100 + 400 * Math.random();
            _loc3_ = circlePointX - _loc1_;
            _loc4_ = circlePointY - _loc2_;
         }
         while(_loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_), _loc5_ <= 200);
         
      }
   }
}

