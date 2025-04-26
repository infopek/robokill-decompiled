package GameObjects
{
   import Tools.Random;
   
   public class GameObjectFilterFlicker extends GameObjectFilter
   {
      public var flickerState:Boolean = false;
      
      public var repeatCount:int = 0;
      
      public var dead:Boolean = false;
      
      public var Interval:int = 100;
      
      public var FlickerAlpha:Number = 0;
      
      public var nextFlicker:int = 0;
      
      public var flickering:int = 0;
      
      public var AliveTime:int = 0;
      
      public var flickerTime:int = 400;
      
      public function GameObjectFilterFlicker()
      {
         super();
         ticks = Random.randInt(0,100);
      }
      
      override public function update(param1:GameObject) : void
      {
         var _loc2_:* = false;
         if(ticks == 0)
         {
            nextFlicker = flickerTime * Math.random();
         }
         if(dead)
         {
            return;
         }
         ++ticks;
         if(nextFlicker > 0)
         {
            --nextFlicker;
         }
         else if(flickering > 0)
         {
            --flickering;
            if(flickering % 5 == 0)
            {
               _loc2_ = Math.random() > 0.5;
               repeatCount = _loc2_ == flickerState ? repeatCount + 1 : 0;
               flickerState = _loc2_;
               if(repeatCount > 3)
               {
                  flickerState = !flickerState;
                  repeatCount = 0;
               }
            }
         }
         else
         {
            nextFlicker = flickerTime * (0.5 + Math.random() / 2);
            flickering = 50 + Math.random() * 100;
         }
         if(nextFlicker <= 0)
         {
            if(flickering > 0)
            {
               if(flickerState)
               {
                  param1.modifiedAlpha *= FlickerAlpha;
               }
            }
         }
         if(AliveTime > 0 && ticks > AliveTime)
         {
            dead = true;
         }
      }
   }
}

