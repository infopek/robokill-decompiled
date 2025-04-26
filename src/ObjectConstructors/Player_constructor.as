package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class Player_constructor
   {
      public static var LayerName:String = "PlayerHead";
      
      public static var baseim_embed:Class = Embeds.player_head001_png;
      
      public static var baseim:BitmapData = new Embeds.player_head001_png().bitmapData;
      
      public function Player_constructor()
      {
         super();
      }
      
      public static function setup(param1:GameScene, param2:GameObject) : void
      {
         var _loc3_:GameObjectFilter = null;
         var _loc4_:ParticleEmitter = null;
         var _loc5_:ParticleFilter = null;
         var _loc6_:GameObject = null;
         var _loc7_:GameObjectFilter = null;
         param2.baseHandleX = 0.5;
         param2.baseHandleY = 0.5;
         param2.addConditionalParticleArray(globalParticles.getParticles());
         param2.animSpeed = 0;
      }
   }
}

