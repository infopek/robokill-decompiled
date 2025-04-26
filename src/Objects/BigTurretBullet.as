package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.HulkBulletBase;
   import ObjectConstructors.BigTurretBullet_constructor;
   import flash.display.Bitmap;
   
   public class BigTurretBullet extends HulkBulletBase
   {
      public var damageOverride:Number = -1;
      
      public function BigTurretBullet(param1:GameScene, param2:int, param3:int)
      {
         super(param1,BigTurretBullet_constructor.baseim_embed,BigTurretBullet_constructor.LayerName,param2,param3);
         BigTurretBullet_constructor.setup(param1,this);
         Bitmap(obj).smoothing = true;
      }
      
      override public function damage() : int
      {
         if(damageOverride < 0)
         {
            return super.damage() * 4;
         }
         return damageOverride;
      }
   }
}

