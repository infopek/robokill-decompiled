package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.BeserkerBase;
   import ObjectConstructors.Beserker_constructor;
   
   public class Beserker extends BeserkerBase
   {
      public function Beserker(param1:GameScene, param2:int, param3:int)
      {
         super(param1,Beserker_constructor.baseim_embed,Beserker_constructor.LayerName,param2,param3);
         Beserker_constructor.setup(param1,this);
      }
   }
}

