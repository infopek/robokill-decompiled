package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.SpiderGrenadeBase;
   import ObjectConstructors.SpiderGrenade_constructor;
   
   public class SpiderGrenade extends SpiderGrenadeBase
   {
      public function SpiderGrenade(param1:GameScene, param2:int, param3:int)
      {
         super(param1,SpiderGrenade_constructor.baseim_embed,SpiderGrenade_constructor.LayerName,param2,param3);
         SpiderGrenade_constructor.setup(param1,this);
      }
   }
}

