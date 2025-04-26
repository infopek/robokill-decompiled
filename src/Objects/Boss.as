package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.BossBase;
   import ObjectConstructors.Boss_constructor;
   
   public class Boss extends BossBase
   {
      public function Boss(param1:GameScene = null, param2:int = 0, param3:int = 0)
      {
         if(!param1)
         {
            param1 = GameScene.current();
         }
         super(param1,Boss_constructor.baseim_embed,Boss_constructor.LayerName,param2,param3);
         Boss_constructor.setup(param1,this);
      }
   }
}

