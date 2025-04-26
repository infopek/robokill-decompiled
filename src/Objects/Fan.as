package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.GameObjectBase;
   import ObjectConstructors.Fan_constructor;
   
   public class Fan extends GameObjectBase
   {
      public function Fan(param1:GameScene = null, param2:int = 0, param3:int = 0)
      {
         if(!param1)
         {
            param1 = GameScene.current();
         }
         super(param1,Fan_constructor.baseim_embed,Fan_constructor.LayerName,param2,param3);
         Fan_constructor.setup(param1,this);
      }
      
      override public function canFall() : Boolean
      {
         return false;
      }
   }
}

