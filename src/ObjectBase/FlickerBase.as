package ObjectBase
{
   import GameScenes.GameScene;
   
   public class FlickerBase extends IdiotLightBase
   {
      public function FlickerBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function _update() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         super._update();
         if(!hidden)
         {
            _loc1_ = randTicks % 300;
            _loc2_ = _loc1_ - 250;
            if(_loc1_ > 250)
            {
               if(_loc2_ % 15 > 8)
               {
                  baseAlpha *= 0.5;
               }
            }
         }
      }
   }
}

