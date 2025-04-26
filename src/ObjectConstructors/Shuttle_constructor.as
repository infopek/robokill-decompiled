package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class Shuttle_constructor
   {
      public static var LayerName:String = "Player";
      
      public static var baseim_embed:Class = Embeds.shuttle_png;
      
      public static var baseim:BitmapData = new Embeds.shuttle_png().bitmapData;
      
      public static var child1_embed:Class = Embeds.pulse_01_png;
      
      public static var child1:BitmapData = new Embeds.pulse_01_png().bitmapData;
      
      public static var child2_embed:Class = Embeds.pulse_01_png;
      
      public static var child2:BitmapData = new Embeds.pulse_01_png().bitmapData;
      
      public static var child3_embed:Class = Embeds.pulse_01_png;
      
      public static var child3:BitmapData = new Embeds.pulse_01_png().bitmapData;
      
      public static var child4_embed:Class = Embeds.pulse_01_png;
      
      public static var child4:BitmapData = new Embeds.pulse_01_png().bitmapData;
      
      public static var child5_embed:Class = Embeds.decal_free_20_png;
      
      public static var child5:BitmapData = new Embeds.decal_free_20_png().bitmapData;
      
      public static var child6_embed:Class = Embeds.decal_free_20_png;
      
      public static var child6:BitmapData = new Embeds.decal_free_20_png().bitmapData;
      
      public static var child7_embed:Class = Embeds.pulse_04_png;
      
      public static var child7:BitmapData = new Embeds.pulse_04_png().bitmapData;
      
      public static var child8_embed:Class = Embeds.pulse_04_png;
      
      public static var child8:BitmapData = new Embeds.pulse_04_png().bitmapData;
      
      public function Shuttle_constructor()
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
         _loc6_ = new GameObject(param1,child1_embed,"Player",73,26);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 73;
         _loc6_.basey = 26;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterPulse();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterPulse(_loc7_).Speed = 1;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child2_embed,"Player",72,-27);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 72;
         _loc6_.basey = -27;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterPulse();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterPulse(_loc7_).Speed = 1;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child3_embed,"Player",96,22);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 96;
         _loc6_.basey = 22;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 10;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.800000012;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child4_embed,"Player",96,-19);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 96;
         _loc6_.basey = -19;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 10;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.800000012;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child5_embed,"Player",19,-48);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 19;
         _loc6_.basey = -48;
         _loc6_.baseScaleX = 0.630000353;
         _loc6_.baseScaleY = 0.630000353;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 200;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.100000001;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child6_embed,"Player",20,49);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 20;
         _loc6_.basey = 49;
         _loc6_.baseScaleX = 0.56000042;
         _loc6_.baseScaleY = 0.56000042;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 200;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0.100000001;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child7_embed,"Player",70,-68);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 70;
         _loc6_.basey = -68;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 116;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0;
         param2.addChild(_loc6_);
         _loc6_ = new GameObject(param1,child8_embed,"Player",70,69);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 70;
         _loc6_.basey = 69;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterBlink();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterBlink(_loc7_).Interval = 122;
         GameObjectFilterBlink(_loc7_).AliveTime = 0;
         GameObjectFilterBlink(_loc7_).BlinkAlpha = 0;
         param2.addChild(_loc6_);
      }
   }
}

