package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.FloorDecalBase;
   import ObjectConstructors.FloorDecal_constructor;
   
   public class FloorDecal extends FloorDecalBase
   {
      public function FloorDecal(param1:GameScene, param2:int, param3:int)
      {
         super(param1,FloorDecal_constructor.baseim_embed,FloorDecal_constructor.LayerName,param2,param3);
         FloorDecal_constructor.setup(param1,this);
      }
   }
}

