package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.EnemyBulletBase;
   import ObjectBase.HoverSwarmBase;
   import ObjectConstructors.HoverSwarmGun_constructor;
   
   public class HoverSwarmGun extends HoverSwarmBase
   {
      public var side:Boolean = false;
      
      public var fromBoss:Boolean = false;
      
      public var noFireTicks:int = 0;
      
      public function HoverSwarmGun(param1:GameScene = null, param2:int = 0, param3:int = 0)
      {
         if(!param1)
         {
            param1 = GameScene.current();
         }
         super(param1,HoverSwarmGun_constructor.baseim_embed,HoverSwarmGun_constructor.LayerName,param2,param3);
         HoverSwarmGun_constructor.setup(param1,this);
         speed *= 1.4;
         baseHealth *= 40;
         alternateMovement = true;
      }
      
      override public function tintGreen(param1:Boolean = false) : Number
      {
         if(fromBoss)
         {
            return 0;
         }
         return super.tintGreen(param1);
      }
      
      override public function tintRed(param1:Boolean = false) : Number
      {
         if(fromBoss)
         {
            return 1;
         }
         return super.tintRed(param1);
      }
      
      override public function _update() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:EnemyBulletBase = null;
         super._update();
         if(noFireTicks > 0)
         {
            --noFireTicks;
            return;
         }
         if(randTicks % 50 == 0)
         {
            side = !side;
            _loc1_ = side ? -8 : 8;
            _loc2_ = shootBullet(_loc1_,0);
            if(_loc2_)
            {
               _loc2_.changeZOrder(_loc2_.zOrderString,true);
               _loc2_.damageMult *= 3;
            }
         }
      }
      
      override public function tintBlue(param1:Boolean = false) : Number
      {
         if(fromBoss)
         {
            return 0;
         }
         return super.tintBlue(param1);
      }
   }
}

