package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.FloorDecalBase;
   import ObjectConstructors.FreeFloorDecal_constructor;
   import Particles.Particle;
   
   public class FreeFloorDecal extends FloorDecalBase
   {
      public var nextSpark:int = 150 + Math.random() * 150;
      
      public function FreeFloorDecal(param1:GameScene, param2:int, param3:int)
      {
         super(param1,FreeFloorDecal_constructor.baseim_embed,FreeFloorDecal_constructor.LayerName,param2,param3);
         FreeFloorDecal_constructor.setup(param1,this);
      }
      
      override public function _update() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:Particle = null;
         var _loc4_:Number = NaN;
         if(animFrame > 80)
         {
            return;
         }
         --nextSpark;
         if(nextSpark <= 0)
         {
            nextSpark = 150 + Math.random() * 150;
            _loc1_ = 1;
            if(Math.random() < 0.4)
            {
               _loc1_ = 2;
            }
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = emitConditionalParticles("Spark",0,20)[0];
               if(_loc3_)
               {
                  _loc4_ = baseRotation - 90 + (Math.random() - 0.5) * 45;
                  _loc3_.dx = cosd(_loc4_) * 3;
                  _loc3_.dy = sind(_loc4_) * 3;
               }
               _loc2_++;
            }
         }
      }
      
      override public function _remove() : void
      {
      }
   }
}

