package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.LegsBase;
   import ObjectConstructors.BossLegs_constructor;
   
   public class BossLegs extends LegsBase
   {
      public function BossLegs(param1:GameScene = null, param2:int = 0, param3:int = 0)
      {
         if(!param1)
         {
            param1 = GameScene.current();
         }
         super(param1,BossLegs_constructor.baseim_embed,BossLegs_constructor.LayerName,param2,param3);
         BossLegs_constructor.setup(param1,this);
      }
   }
}

