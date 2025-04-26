package ObjectBase
{
   import GameScenes.GameScene;
   
   public class PulseBulletBase extends BulletBase
   {
      public var lastBounced:int = 0;
      
      public var bounceCount:int = 0;
      
      public function PulseBulletBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function hasHitWall(param1:int = 0, param2:int = 0) : void
      {
         if(bounceCount > 5)
         {
            super.hasHitWall();
            return;
         }
         if(ticks - lastBounced < 10)
         {
            return;
         }
         ++bounceCount;
         if(bounceCount > 1)
         {
            super.hasHitWall();
         }
         lastBounced = ticks;
         var _loc3_:Number = cosd(baseRotation);
         var _loc4_:Number = sind(baseRotation);
         if(param2 != 0)
         {
            _loc3_ *= -1;
         }
         if(param1 != 0)
         {
            _loc4_ *= -1;
         }
         baseRotation = 180 * Math.atan2(_loc4_,_loc3_) / Math.PI;
         angle = baseRotation + 90;
      }
   }
}

