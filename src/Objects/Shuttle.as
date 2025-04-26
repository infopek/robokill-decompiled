package Objects
{
   import GameObjects.GameObject;
   import GameScenes.GameScene;
   import ObjectBase.ShuttleBase;
   import ObjectConstructors.Shuttle_constructor;
   import Scenes.MainScene;
   import flash.display.Bitmap;
   
   public class Shuttle extends ShuttleBase
   {
      public var fading:int = 0;
      
      public function Shuttle(param1:GameScene, param2:int, param3:int)
      {
         super(param1,Shuttle_constructor.baseim_embed,Shuttle_constructor.LayerName,param2,param3);
         Shuttle_constructor.setup(param1,this);
      }
      
      public function serializeFields() : Array
      {
         return ["basex","basey"];
      }
      
      public function alphaOut(param1:GameObject) : void
      {
         param1.baseAlpha -= 0.005;
         if(param1.baseAlpha < 0)
         {
            param1.baseAlpha = 0;
         }
      }
      
      override public function _update() : void
      {
         if(MainScene(gs).currentEpisode == 11)
         {
            changeZOrder("Floor");
         }
         if(MainScene(gs).countEnemies() == 0)
         {
            if(fading == 0)
            {
               fading = 1;
            }
         }
         if(fading)
         {
            ++fading;
            scaleDown(this);
            helper.mapChildren(scaleDown);
            if(fading == 100)
            {
               changeZOrder("Floor");
            }
            if(fading > 500)
            {
               alphaOut(this);
            }
         }
         Bitmap(obj).smoothing = true;
      }
      
      override public function canFall() : Boolean
      {
         return false;
      }
      
      public function scaleDown(param1:GameObject) : void
      {
         param1.baseScaleX *= 0.998;
         param1.baseScaleY *= 0.998;
      }
   }
}

