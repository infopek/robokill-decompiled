package Objects
{
   import Audio.GameSoundChannel;
   import GameObjects.*;
   import GameScenes.GameScene;
   import ObjectBase.*;
   import ObjectConstructors.*;
   import Scenes.*;
   import flash.display.*;
   
   public class LaserTile extends FlameThrowerTile
   {
      public static var offset:int = 22;
      
      public function LaserTile(param1:GameScene, param2:int, param3:int)
      {
         super(param1,param2,param3);
         Bitmap(obj).bitmapData = new LaserTile_constructor.baseim_embed().bitmapData;
         helper.stripChildren();
         LaserTile_constructor.setup(param1,this);
      }
      
      public function target() : Array
      {
         var _loc5_:GameObject = null;
         var _loc1_:int = logicalSquareX();
         var _loc2_:int = logicalSquareY();
         var _loc3_:int = effectivedx();
         var _loc4_:int = effectivedy();
         for each(_loc5_ in gs.objects)
         {
            if(_loc5_ is LaserTile)
            {
               if(_loc5_ != this)
               {
                  if(_loc3_ == 0 && GameObjectBase(_loc5_).logicalSquareX() == _loc1_ || _loc4_ == 0 && GameObjectBase(_loc5_).logicalSquareY() == _loc2_)
                  {
                     return [_loc5_.tformedX(0,offset),_loc5_.tformedY(0,offset)];
                  }
               }
            }
         }
         return [0,0];
      }
      
      override public function period() : int
      {
         return 200;
      }
      
      override public function shoot() : void
      {
         var _loc1_:Number = tformedX(0,offset);
         var _loc2_:Number = tformedY(0,offset);
         var _loc3_:LaserTileLaser = new LaserTileLaser(gs,_loc1_,_loc2_);
         var _loc4_:GameSoundChannel = Sounds.laserBeam.play();
         if(_loc4_)
         {
            _loc4_.tieTo(_loc3_);
         }
         _loc3_.startx = _loc1_;
         _loc3_.starty = _loc2_;
         var _loc5_:Array = target();
         _loc3_.endx = _loc5_[0];
         _loc3_.endy = _loc5_[1];
      }
   }
}

