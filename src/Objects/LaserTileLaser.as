package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.StaticLaserBase;
   import ObjectConstructors.LaserTileLaser_constructor;
   import Scenes.MainScene;
   
   public class LaserTileLaser extends StaticLaserBase
   {
      public function LaserTileLaser(param1:GameScene, param2:int, param3:int)
      {
         super(param1,LaserTileLaser_constructor.baseim_embed,LaserTileLaser_constructor.LayerName,param2,param3);
         LaserTileLaser_constructor.setup(param1,this);
      }
      
      override public function damage() : int
      {
         return MainScene(gs).player.getShieldsForLevel() / 5;
      }
   }
}

