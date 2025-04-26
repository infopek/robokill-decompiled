package GameObjects
{
   import Tools.Random;
   
   public class GameObjectFilterPulseScale extends GameObjectFilter
   {
      public var magnitude:Number = 1;
      
      public var Speed:Number = 1;
      
      public function GameObjectFilterPulseScale()
      {
         super();
         ticks = Random.randInt(0,100);
      }
      
      override public function update(param1:GameObject) : void
      {
         ++ticks;
         var _loc2_:Number = 1 + magnitude * param1.sind(ticks * 2 * Speed) / 2;
         param1.modifiedScaleX *= _loc2_;
         param1.modifiedScaleY *= _loc2_;
      }
   }
}

