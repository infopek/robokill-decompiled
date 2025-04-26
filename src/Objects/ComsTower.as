package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.ComsTowerBase;
   import ObjectConstructors.ComsTower_constructor;
   
   public class ComsTower extends ComsTowerBase
   {
      public function ComsTower(param1:GameScene, param2:int, param3:int)
      {
         super(param1,ComsTower_constructor.baseim_embed,ComsTower_constructor.LayerName,param2,param3);
         ComsTower_constructor.setup(param1,this);
      }
   }
}

