package GameObjects
{
   public class GameObjectHelperFilter
   {
      public var go:GameObject;
      
      public function GameObjectHelperFilter(param1:GameObject)
      {
         super();
         go = param1;
      }
      
      public function fadeIn(param1:int, param2:int = 0) : void
      {
         var _loc3_:GameObjectFilterFadeInOut = new GameObjectFilterFadeInOut();
         _loc3_.FadeIn = 1;
         _loc3_.FadeInDuration = param1;
         _loc3_.FadeInDelay = param2;
         go.addFilter(_loc3_);
      }
      
      public function addShift(param1:Number, param2:Number, param3:int = -1) : void
      {
         var _loc4_:GameObjectFilterShift = new GameObjectFilterShift();
         _loc4_.dx = param1;
         _loc4_.dy = param2;
         _loc4_.timeout = param3;
         go.addFilter(_loc4_);
      }
      
      public function draggable(param1:Function = null, param2:Function = null) : GameObjectFilterDraggable
      {
         var _loc3_:GameObjectFilterDraggable = new GameObjectFilterDraggable();
         _loc3_.startFunc = param1;
         _loc3_.finishFunc = param2;
         go.addFilter(_loc3_);
         return _loc3_;
      }
      
      public function addPanelSlide() : void
      {
         go.basey -= 700;
         var _loc1_:GameObjectFilterSqrtInterpolateIn = new GameObjectFilterSqrtInterpolateIn();
         _loc1_.dy = 700;
         _loc1_.FadeTime = 100;
         _loc1_.useSquareSquare = true;
         go.addFilter(_loc1_);
      }
      
      public function sinDisplace(param1:Number, param2:Number, param3:Number = 1) : void
      {
         var _loc4_:GameObjectFilterSinDisplace = new GameObjectFilterSinDisplace();
         _loc4_.x = param1;
         _loc4_.y = param2;
         _loc4_.speed = param3;
         go.addFilter(_loc4_);
      }
      
      public function fadeOffIfFalse(param1:int, param2:Function) : void
      {
         var period:int = param1;
         var func:Function = param2;
         var gof:GameObjectFilterTrigger = new GameObjectFilterTrigger();
         gof.cause = func;
         gof.result = function():void
         {
            go.helperFilter.fadeOff(period);
         };
         go.addFilter(gof);
      }
      
      public function scaleIn(param1:int, param2:Number = 0, param3:Number = 0, param4:int = 0) : void
      {
         var _loc5_:GameObjectFilterScaleInOut = new GameObjectFilterScaleInOut();
         _loc5_.ScaleIn = 1;
         _loc5_.ScaleInDelay = param4;
         _loc5_.ScaleInDuration = param1;
         _loc5_.ScaleInStartX = param2;
         _loc5_.ScaleInStartY = param3;
         go.addFilter(_loc5_);
      }
      
      public function moveWith(param1:GameObject) : void
      {
         var _loc2_:GameObjectFilterMoveWith = new GameObjectFilterMoveWith();
         _loc2_.other = param1;
         go.addFilter(_loc2_);
      }
      
      public function pulse(param1:Number = 1, param2:int = 0, param3:int = 0, param4:Boolean = true) : void
      {
         var _loc5_:GameObjectFilterPulse = new GameObjectFilterPulse();
         if(param2 > 0)
         {
            _loc5_.Speed = 100 / param2;
         }
         if(!param4)
         {
            _loc5_.ticks = 0;
         }
         _loc5_.alpha = param1;
         go.addFilter(_loc5_);
      }
      
      public function fadeOff(param1:int, param2:int = -1, param3:Boolean = true) : void
      {
         if(param2 == -1)
         {
            param2 = param1;
            param1 = 0;
         }
         var _loc4_:GameObjectFilterFadeInOut = new GameObjectFilterFadeInOut();
         _loc4_.FadeOut = 1;
         _loc4_.FadeOutTime = param1;
         _loc4_.FadeOutDuration = param2;
         _loc4_.FadeOutKill = param3 ? 1 : 0;
         go.addFilter(_loc4_);
      }
      
      public function blink(param1:Number = 0, param2:int = 100, param3:int = 0, param4:Boolean = true) : void
      {
         var _loc5_:GameObjectFilterBlink = new GameObjectFilterBlink();
         _loc5_.BlinkAlpha = param1;
         _loc5_.Interval = param2;
         _loc5_.AliveTime = param3;
         if(!param4)
         {
            _loc5_.ticks = 0;
         }
         go.addFilter(_loc5_);
      }
      
      public function dampenInterpolateIn(param1:int, param2:Number, param3:Number, param4:int = 0) : void
      {
         var _loc5_:GameObjectFilterDampenInterpolateIn = new GameObjectFilterDampenInterpolateIn();
         _loc5_.Delay = param4;
         _loc5_.FadeTime = param1;
         _loc5_.dx = param2;
         _loc5_.dy = param3;
         go.addFilter(_loc5_);
      }
   }
}

