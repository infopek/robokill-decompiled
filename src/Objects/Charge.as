package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.ChargeBase;
   import ObjectConstructors.Charge_constructor;
   
   public class Charge extends ChargeBase
   {
      public function Charge(param1:GameScene, param2:int, param3:int)
      {
         super(param1,Charge_constructor.baseim_embed,Charge_constructor.LayerName,param2,param3);
         Charge_constructor.setup(param1,this);
      }
   }
}

