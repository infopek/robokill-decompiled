package ObjectBase
{
   import GameObjects.GameObject;
   import GameObjects.GameObjectFilterRotateSlowly;
   import GameScenes.GameScene;
   import Objects.GruntLegs;
   import Tools.Period;
   import Tools.Random;
   
   public class GruntBase extends EnemyBase
   {
      public var shootoffset:int = Random.randInt(0,1000);
      
      public var switchRotationCount:int = 0;
      
      public function GruntBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
         legs = new GruntLegs(param1,0,0);
         legs.baseRotation = Math.random() * 360;
         addChild(legs);
         addFilter(new GameObjectFilterRotateSlowly(2));
      }
      
      override public function _update() : void
      {
         var _loc3_:GameObject = null;
         if(blockUpdating())
         {
            super._update();
            return;
         }
         if(frozen == 0)
         {
            --switchRotationCount;
            if(switchRotationCount < 0)
            {
               switchRotationCount = 100 + Math.random() * 200;
               baseRotation = Math.random() * 360;
            }
         }
         super._update();
         var _loc1_:Boolean = false;
         var _loc2_:Number = 1;
         if(shoots() && distanceToPlayer() < 250)
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _loc2_ = Period.getPeriod(ticks + shootoffset,100,30,55,65,80);
            if((ticks + shootoffset) % 100 == 60)
            {
               shootBullet(0,0);
            }
         }
         moveTowardsPlayer(_loc2_);
         for each(_loc3_ in gs.objects)
         {
            if(_loc3_ is HumanBase)
            {
               if(spriteCollidesWith(HumanBase(_loc3_)))
               {
                  _loc3_.remove();
               }
            }
         }
      }
      
      override public function _experience() : int
      {
         return 10;
      }
      
      public function shoots() : Boolean
      {
         return false;
      }
   }
}

