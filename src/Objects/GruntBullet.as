package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.HulkBulletBase;
   import ObjectConstructors.GruntBullet_constructor;
   
   public class GruntBullet extends HulkBulletBase
   {
      public function GruntBullet(param1:GameScene, param2:int, param3:int)
      {
         super(param1,GruntBullet_constructor.baseim_embed,GruntBullet_constructor.LayerName,param2,param3);
         GruntBullet_constructor.setup(param1,this);
      }
   }
}

