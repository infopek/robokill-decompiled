package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.PickupKey;
   import ObjectConstructors.KeyPlace_constructor;
   
   public class KeyPlace extends PickupKey
   {
      public function KeyPlace(param1:GameScene, param2:int, param3:int)
      {
         super(param1,param2,param3);
         KeyPlace_constructor.setup(param1,this);
      }
   }
}

