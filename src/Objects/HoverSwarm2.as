package Objects
{
   import GameScenes.GameScene;
   import ObjectBase.HoverSwarmBase;
   import ObjectConstructors.HoverSwarm2_constructor;
   
   public class HoverSwarm2 extends HoverSwarmBase
   {
      public function HoverSwarm2(param1:GameScene = null, param2:int = 0, param3:int = 0)
      {
         if(!param1)
         {
            param1 = GameScene.current();
         }
         super(param1,HoverSwarm2_constructor.baseim_embed,HoverSwarm2_constructor.LayerName,param2,param3);
         HoverSwarm2_constructor.setup(param1,this);
         baseHealth *= 20;
         extraHealth *= 20;
         inertia = 0.98;
         speed = 2;
         alternateMovement = true;
      }
   }
}

