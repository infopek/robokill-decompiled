package ObjectBase
{
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import Objects.Cash;
   import Objects.PickupText;
   import Objects.ShieldPickup;
   import Scenes.MainScene;
   import Tools.PathfindSquare;
   import Weapons.Blaster;
   
   public class PickupBase extends GameObjectBase
   {
      public static var expediateControl:int = 0;
      
      public var dx:Number = 0;
      
      public var dy:Number = 0;
      
      public function PickupBase(param1:GameScene, param2:Class, param3:String, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public static function maybeCreatePickup(param1:GameScene, param2:Number, param3:Number, param4:Boolean = false, param5:int = 0) : PickupBase
      {
         var _loc8_:GameObject = null;
         var _loc9_:PickupBase = null;
         var _loc10_:Boolean = false;
         var _loc11_:PathfindSquare = null;
         if(!param4)
         {
            if(!MainScene(param1).squareExists(param2,param3))
            {
               return null;
            }
            _loc11_ = MainScene(param1).getSquare(param2,param3);
            if(!_loc11_)
            {
               return null;
            }
            if(!_loc11_.passable)
            {
               return null;
            }
         }
         var _loc6_:Number = MainScene(param1).player.chanceMult();
         if(param4)
         {
            _loc6_ /= 2;
         }
         var _loc7_:Number = 0.2;
         _loc7_ = _loc7_ * (1 - MainScene(param1).player.shields);
         if(_loc7_ > 0.1)
         {
            _loc7_ = 0.1;
         }
         for each(_loc8_ in param1.objects)
         {
            if(_loc8_ is PickupBase)
            {
               if(_loc8_.distanceToPoint(param2,param3) < 80)
               {
                  return null;
               }
            }
         }
         _loc10_ = false;
         if(!MainScene(param1).player.expediatedDrop)
         {
            ++expediateControl;
            if(expediateControl < 7)
            {
               return null;
            }
            _loc10_ = true;
            param5 = 2;
         }
         if(param5 == 2)
         {
            _loc9_ = new PickupWeapon(param1,param2,param3);
         }
         else if(Math.random() < _loc7_ * _loc6_)
         {
            _loc9_ = new ShieldPickup(param1,param2,param3);
         }
         else if(Math.random() < 0.2 * _loc6_)
         {
            _loc9_ = new Cash(param1,param2,param3);
         }
         else if(Math.random() < _loc6_ * 0.05 && param5 != 0)
         {
            _loc9_ = new PickupWeapon(param1,param2,param3);
         }
         else if(Math.random() < _loc6_ * 0.05 && param5 != 0)
         {
            _loc9_ = new PickupItem(param1,param2,param3);
         }
         if(_loc9_)
         {
            if(!MainScene(param1).currentLevel.pickupValid(_loc9_))
            {
               _loc9_.remove();
               return null;
            }
         }
         if(_loc10_)
         {
            MainScene(param1).player.expediatedDrop = true;
            if(_loc9_ is PickupWeapon)
            {
               PickupWeapon(_loc9_).createPickMeUp();
               PickupWeapon(_loc9_).wep = new Blaster();
               PickupWeapon(_loc9_).wep.level = 0;
            }
         }
         return _loc9_;
      }
      
      override public function handlePlayerCollision() : void
      {
         if(MainScene(gs).fading != 0)
         {
            return;
         }
         if(dx + dy > 0.2)
         {
            return;
         }
         var _loc1_:Boolean = pickup();
         if(_loc1_)
         {
            new PickupText(gs,basex,basey,pickupName());
            remove();
            playSound();
         }
      }
      
      public function pickupName() : String
      {
         return "";
      }
      
      public function serializeFields() : Array
      {
         return ["basex","basey"];
      }
      
      public function playSound() : void
      {
      }
      
      public function pickup() : Boolean
      {
         return true;
      }
      
      override public function _update() : void
      {
         basex += dx;
         basey += dy;
         dx *= 0.95;
         dy *= 0.95;
         collisionFudge = 0.8;
         super._update();
      }
   }
}

