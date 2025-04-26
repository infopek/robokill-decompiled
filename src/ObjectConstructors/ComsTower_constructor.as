package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class ComsTower_constructor
   {
      public static var LayerName:String = "Player";
      
      public static var baseim_embed:Class = Embeds.coms_tower_png;
      
      public static var baseim:BitmapData = new Embeds.coms_tower_png().bitmapData;
      
      public static var child1_embed:Class = Embeds.pulse_02_png;
      
      public static var child1:BitmapData = new Embeds.pulse_02_png().bitmapData;
      
      public static var child2_embed:Class = Embeds.red_glow_png;
      
      public static var child2:BitmapData = new Embeds.red_glow_png().bitmapData;
      
      public static var child3_embed:Class = Embeds.red_glow_png;
      
      public static var child3:BitmapData = new Embeds.red_glow_png().bitmapData;
      
      public static var child4_embed:Class = Embeds.red_glow_png;
      
      public static var child4:BitmapData = new Embeds.red_glow_png().bitmapData;
      
      public static var child5_embed:Class = Embeds.red_glow_png;
      
      public static var child5:BitmapData = new Embeds.red_glow_png().bitmapData;
      
      public function ComsTower_constructor()
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
         _loc6_ = new GameObject(param1,child1_embed,"Player",-1,-2);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = -1;
         _loc6_.basey = -2;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterPulse();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterPulse(_loc7_).Speed = 1;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child2_embed,"Player",26,-20);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 26;
         _loc6_.basey = -20;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 100;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.5;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child3_embed,"Player",27,20);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 27;
         _loc6_.basey = 20;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 78;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.5;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child4_embed,"Player",-29,-20);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = -29;
         _loc6_.basey = -20;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 80;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.5;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child5_embed,"Player",-30,19);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = -30;
         _loc6_.basey = 19;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 94;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.5;
         param2.addChild(_loc6_);
      }
   }
}

