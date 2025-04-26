package SceneConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import flash.display.*;
   import flash.geom.*;
   
   public class Story_constructor
   {
      public static var im1_embed:Class = Embeds.story_1_jpg;
      
      public static var im1:BitmapData = new Embeds.story_1_jpg().bitmapData;
      
      public static var im2_embed:Class = Embeds.story_thrust_png;
      
      public static var im2:BitmapData = new Embeds.story_thrust_png().bitmapData;
      
      public static var im3_embed:Class = Embeds.laserhit_png;
      
      public static var im3:BitmapData = new Embeds.laserhit_png().bitmapData;
      
      public static var im4_embed:Class = Embeds.sleeper_light_png;
      
      public static var im4:BitmapData = new Embeds.sleeper_light_png().bitmapData;
      
      public static var im5_embed:Class = Embeds.sleeper_light_png;
      
      public static var im5:BitmapData = new Embeds.sleeper_light_png().bitmapData;
      
      public static var im6_embed:Class = Embeds.story_thrust_png;
      
      public static var im6:BitmapData = new Embeds.story_thrust_png().bitmapData;
      
      public static var im7_embed:Class = Embeds.pulse_04_png;
      
      public static var im7:BitmapData = new Embeds.pulse_04_png().bitmapData;
      
      public static var im8_embed:Class = Embeds.pulse_04_png;
      
      public static var im8:BitmapData = new Embeds.pulse_04_png().bitmapData;
      
      public static var im9_embed:Class = Embeds.pulse_04_png;
      
      public static var im9:BitmapData = new Embeds.pulse_04_png().bitmapData;
      
      public static var im10_embed:Class = Embeds.decal_free_20_png;
      
      public static var im10:BitmapData = new Embeds.decal_free_20_png().bitmapData;
      
      public static var im11_embed:Class = Embeds.decal_free_20_png;
      
      public static var im11:BitmapData = new Embeds.decal_free_20_png().bitmapData;
      
      public static var im12_embed:Class = Embeds.decal_free_20_png;
      
      public static var im12:BitmapData = new Embeds.decal_free_20_png().bitmapData;
      
      public function Story_constructor()
      {
         super();
      }
      
      public function register(param1:GameScene, param2:Sprite, param3:Boolean = false) : void
      {
         var _loc4_:GameObject = null;
         var _loc5_:GameObjectFilter = null;
         if(!param3)
         {
            param1.m = new MovieClip();
         }
         _loc4_ = new GameObject(param1,im1_embed,"",400,300);
         _loc4_.baseRotation = 0;
         _loc4_ = new GameObject(param1,im2_embed,"",233,344);
         _loc4_.baseRotation = 0;
         _loc4_.additive = true;
         _loc5_ = new GameObjectFilterBlink();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterBlink(_loc5_).Interval = 12;
         GameObjectFilterBlink(_loc5_).AliveTime = 0;
         GameObjectFilterBlink(_loc5_).BlinkAlpha = 0.800000012;
         _loc4_ = new GameObject(param1,im3_embed,"",525,320);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.210000694;
         _loc4_.baseScaleY = 0.210000694;
         _loc5_ = new GameObjectFilterPulse();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterPulse(_loc5_).Speed = 0.5;
         _loc4_ = new GameObject(param1,im4_embed,"",361,355);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.590000391;
         _loc4_.baseScaleY = 0.590000391;
         _loc5_ = new GameObjectFilterPulse();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterPulse(_loc5_).Speed = 1;
         _loc4_ = new GameObject(param1,im5_embed,"",362,361);
         _loc4_.baseRotation = 0;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.57000041;
         _loc4_.baseScaleY = 0.57000041;
         _loc5_ = new GameObjectFilterBlink();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterBlink(_loc5_).Interval = 200;
         GameObjectFilterBlink(_loc5_).AliveTime = 0;
         GameObjectFilterBlink(_loc5_).BlinkAlpha = 0.5;
         _loc5_ = new GameObjectFilterPulse();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterPulse(_loc5_).Speed = 1;
         _loc4_ = new GameObject(param1,im6_embed,"",233,342);
         _loc4_.baseRotation = 0;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.870000124;
         _loc4_.baseScaleY = 0.870000124;
         _loc5_ = new GameObjectFilterBlink();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterBlink(_loc5_).Interval = 200;
         GameObjectFilterBlink(_loc5_).AliveTime = 0;
         GameObjectFilterBlink(_loc5_).BlinkAlpha = 0.5;
         _loc5_ = new GameObjectFilterPulse();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterPulse(_loc5_).Speed = 0.800000012;
         _loc4_ = new GameObject(param1,im7_embed,"",382,326);
         _loc4_.baseRotation = 0;
         _loc4_.additive = true;
         _loc5_ = new GameObjectFilterBlink();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterBlink(_loc5_).Interval = 200;
         GameObjectFilterBlink(_loc5_).AliveTime = 0;
         GameObjectFilterBlink(_loc5_).BlinkAlpha = 0.100000001;
         _loc4_ = new GameObject(param1,im8_embed,"",394,326);
         _loc4_.baseRotation = 0;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.630000353;
         _loc4_.baseScaleY = 0.630000353;
         _loc5_ = new GameObjectFilterBlink();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterBlink(_loc5_).Interval = 200;
         GameObjectFilterBlink(_loc5_).AliveTime = 0;
         GameObjectFilterBlink(_loc5_).BlinkAlpha = 0.5;
         _loc4_ = new GameObject(param1,im9_embed,"",385,326);
         _loc4_.baseRotation = 0;
         _loc4_.additive = true;
         _loc5_ = new GameObjectFilterPulse();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterPulse(_loc5_).Speed = 1;
         _loc4_ = new GameObject(param1,im10_embed,"",533,360);
         _loc4_.baseRotation = 88.9992142;
         _loc4_.baseAlpha = 0.900000095;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.270000696;
         _loc4_.baseScaleY = 0.270000696;
         _loc5_ = new GameObjectFilterBlink();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterBlink(_loc5_).Interval = 128;
         GameObjectFilterBlink(_loc5_).AliveTime = 0;
         GameObjectFilterBlink(_loc5_).BlinkAlpha = 0;
         _loc4_ = new GameObject(param1,im11_embed,"",326,367);
         _loc4_.baseRotation = 88.1992264;
         _loc4_.baseScaleX = 0.260000706;
         _loc4_.baseScaleY = 0.260000706;
         _loc5_ = new GameObjectFilterBlink();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterBlink(_loc5_).Interval = 200;
         GameObjectFilterBlink(_loc5_).AliveTime = 0;
         GameObjectFilterBlink(_loc5_).BlinkAlpha = 0.100000001;
         _loc4_ = new GameObject(param1,im12_embed,"",326,339);
         _loc4_.baseRotation = 88.6992188;
         _loc4_.baseScaleX = 0.290000677;
         _loc4_.baseScaleY = 0.290000677;
         _loc5_ = new GameObjectFilterBlink();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterBlink(_loc5_).Interval = 200;
         GameObjectFilterBlink(_loc5_).AliveTime = 0;
         GameObjectFilterBlink(_loc5_).BlinkAlpha = 0.100000001;
         if(!param3)
         {
            param2.addChild(param1.m);
         }
      }
   }
}

