package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.HulkBulletBase;
   import ObjectConstructors.BossBullet_constructor;
   
   public class BossBullet extends HulkBulletBase
   {
      public function BossBullet(param1:GameScene = null, param2:int = 0, param3:int = 0)
      {
         if(!param1)
         {
            param1 = GameScene.current();
         }
         super(param1,BossBullet_constructor.baseim_embed,BossBullet_constructor.LayerName,param2,param3);
         BossBullet_constructor.setup(param1,this);
      }
      
      override public function collisionHeight() : Number
      {
         return super.collisionHeight() / 2;
      }
      
      override public function collisionWidth() : Number
      {
         return super.collisionWidth() / 2;
      }
   }
}

