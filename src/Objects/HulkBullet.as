package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.HulkBulletBase;
   import ObjectConstructors.HulkBullet_constructor;
   
   public class HulkBullet extends HulkBulletBase
   {
      public function HulkBullet(param1:GameScene, param2:int, param3:int)
      {
         super(param1,HulkBullet_constructor.baseim_embed,HulkBullet_constructor.LayerName,param2,param3);
         HulkBullet_constructor.setup(param1,this);
      }
   }
}

