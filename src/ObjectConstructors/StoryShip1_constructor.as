package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class StoryShip1_constructor
   {
      public static var LayerName:String = "TextLayer";
      
      public static var baseim_embed:Class = Embeds.story_ship_1_png;
      
      public static var baseim:BitmapData = new Embeds.story_ship_1_png().bitmapData;
      
      public static var child1_embed:Class = Embeds.story_thrust_png;
      
      public static var child1:BitmapData = new Embeds.story_thrust_png().bitmapData;
      
      public static var child2_embed:Class = Embeds.pulse_04_png;
      
      public static var child2:BitmapData = new Embeds.pulse_04_png().bitmapData;
      
      public static var child3_embed:Class = Embeds.pulse_04_png;
      
      public static var child3:BitmapData = new Embeds.pulse_04_png().bitmapData;
      
      public static var child4_embed:Class = Embeds.pulse_04_png;
      
      public static var child4:BitmapData = new Embeds.pulse_04_png().bitmapData;
      
      public static var child5_embed:Class = Embeds.pulse_04_png;
      
      public static var child5:BitmapData = new Embeds.pulse_04_png().bitmapData;
      
      public function StoryShip1_constructor()
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
         _loc6_ = new GameObject(param1,child1_embed,"TextLayer",-46,2);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = -46;
         _loc6_.basey = 2;
         _loc6_.baseScaleX = 0.310000658;
         _loc6_.baseScaleY = 0.310000658;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 8;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.800000012;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child2_embed,"TextLayer",26,6);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 26;
         _loc6_.basey = 6;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 200;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.100000001;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child3_embed,"TextLayer",-13,6);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = -13;
         _loc6_.basey = 6;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterPulse();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterPulse(_loc7_).Speed = 1;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child4_embed,"TextLayer",-21,2);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = -21;
         _loc6_.basey = 2;
         _loc6_.baseScaleX = 0.550000429;
         _loc6_.baseScaleY = 0.550000429;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 200;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.5;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child5_embed,"TextLayer",-21,8);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = -21;
         _loc6_.basey = 8;
         _loc6_.baseScaleX = 0.520000458;
         _loc6_.baseScaleY = 0.520000458;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 200;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.5;
         param2.addChild(_loc6_);
      }
   }
}

