package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class TreasureChest_constructor
   {
      public static var LayerName:String = "";
      
      public static var baseim_embed:Class = Embeds.treasure_png;
      
      public static var baseim:BitmapData = new Embeds.treasure_png().bitmapData;
      
      public static var child1_embed:Class = Embeds.red_glow_png;
      
      public static var child1:BitmapData = new Embeds.red_glow_png().bitmapData;
      
      public static var child2_embed:Class = Embeds.flare_2_png;
      
      public static var child2:BitmapData = new Embeds.flare_2_png().bitmapData;
      
      public static var open_embed:Class = Embeds.treasure_open_png;
      
      public static var open:BitmapData = new Embeds.treasure_open_png().bitmapData;
      
      public function TreasureChest_constructor()
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
         _loc6_ = new GameObject(param1,child1_embed,"",1,12);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 1;
         _loc6_.basey = 12;
         _loc6_.baseScaleX = 1.63999939;
         _loc6_.baseScaleY = 1.63999939;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterPulse();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterPulse(_loc7_).Speed = 1;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child2_embed,"",1,18);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 1;
         _loc6_.basey = 18;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterPulse();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterPulse(_loc7_).Speed = 1;
         _loc7_ = new GameObjectFilterRotate();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterRotate(_loc7_).Speed = 0.5;
         param2.addChild(_loc6_);
         TreasureChest(param2).open = open;
      }
   }
}

