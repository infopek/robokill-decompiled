package WeaponPlugin
{
   import ObjectBase.BulletBase;
   import ObjectBase.EnemyBase;
   import Weapons.Grenade;
   import Weapons.Laser;
   import Weapons.LaserMinelayer;
   
   public class WeaponPluginKnockback extends WeaponPluginBase
   {
      public function WeaponPluginKnockback()
      {
         super();
      }
      
      override public function isApplicable(param1:Object) : Boolean
      {
         return !(param1 is Grenade || param1 is Laser || param1 is LaserMinelayer);
      }
      
      override public function attributeText() : String
      {
         return "KNOCKBACK";
      }
      
      override public function hitEnemy(param1:BulletBase, param2:EnemyBase) : void
      {
         if(param2.canBeKnocked())
         {
            if(param2.pushable)
            {
               param2.basex += Math.cos((param1.baseRotation - 90) * Math.PI / 180) * -10;
               param2.basey += Math.sin((param1.baseRotation - 90) * Math.PI / 180) * -10;
            }
         }
      }
   }
}

