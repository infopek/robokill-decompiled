package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.HoverSpawnBase;
   import ObjectConstructors.HoverSpawn_constructor;
   
   public class HoverSpawn extends HoverSpawnBase
   {
      public function HoverSpawn(param1:GameScene = null, param2:int = 0, param3:int = 0)
      {
         if(!param1)
         {
            param1 = GameScene.current();
         }
         super(param1,HoverSpawn_constructor.baseim_embed,HoverSpawn_constructor.LayerName,param2,param3);
         HoverSpawn_constructor.setup(param1,this);
      }
      
      override public function _update() : void
      {
         super._update();
         changeZOrder(zOrderString);
      }
   }
}

