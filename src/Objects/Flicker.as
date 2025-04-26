package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.FlickerBase;
   import ObjectConstructors.Flicker_constructor;
   
   public class Flicker extends FlickerBase
   {
      public function Flicker(param1:GameScene, param2:int, param3:int)
      {
         super(param1,Flicker_constructor.baseim_embed,Flicker_constructor.LayerName,param2,param3);
         Flicker_constructor.setup(param1,this);
      }
   }
}

