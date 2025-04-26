package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class StoryShip2_constructor
   {
      public static var LayerName:String = "TextLayer";
      
      public static var baseim_embed:Class = Embeds.story_ship_2_png;
      
      public static var baseim:BitmapData = new Embeds.story_ship_2_png().bitmapData;
      
      public static var child1_embed:Class = Embeds.story_thrust_png;
      
      public static var child1:BitmapData = new Embeds.story_thrust_png().bitmapData;
      
      public function StoryShip2_constructor()
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
         _loc6_ = new GameObject(param1,child1_embed,"TextLayer",-16,1);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = -16;
         _loc6_.basey = 1;
         _loc6_.baseScaleX = 0.100000657;
         _loc6_.baseScaleY = 0.100000657;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 4;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.899999976;
         param2.addChild(_loc6_);
      }
   }
}

