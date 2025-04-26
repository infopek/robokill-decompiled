package SceneConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import flash.display.*;
   import flash.geom.*;
   
   public class End_constructor
   {
      public static var im1_embed:Class = Embeds.end_1_jpg;
      
      public static var im1:BitmapData = new Embeds.end_1_jpg().bitmapData;
      
      public static var im2_embed:Class = Embeds.smoke_d006_png;
      
      public static var im2:BitmapData = new Embeds.smoke_d006_png().bitmapData;
      
      public static var im3_embed:Class = Embeds.smoke_d009_png;
      
      public static var im3:BitmapData = new Embeds.smoke_d009_png().bitmapData;
      
      public static var im4_embed:Class = Embeds.smoke_d007_png;
      
      public static var im4:BitmapData = new Embeds.smoke_d007_png().bitmapData;
      
      public static var im5_embed:Class = Embeds.smoke_d006_png;
      
      public static var im5:BitmapData = new Embeds.smoke_d006_png().bitmapData;
      
      public static var im6_embed:Class = Embeds.smoke_d007_png;
      
      public static var im6:BitmapData = new Embeds.smoke_d007_png().bitmapData;
      
      public static var im7_embed:Class = Embeds.smoke_d010_png;
      
      public static var im7:BitmapData = new Embeds.smoke_d010_png().bitmapData;
      
      public static var im8_embed:Class = Embeds.smoke_d006_png;
      
      public static var im8:BitmapData = new Embeds.smoke_d006_png().bitmapData;
      
      public static var im9_embed:Class = Embeds.smoke_d007_png;
      
      public static var im9:BitmapData = new Embeds.smoke_d007_png().bitmapData;
      
      public static var im10_embed:Class = Embeds.smoke_d009_png;
      
      public static var im10:BitmapData = new Embeds.smoke_d009_png().bitmapData;
      
      public static var im11_embed:Class = Embeds.smoke_d008_png;
      
      public static var im11:BitmapData = new Embeds.smoke_d008_png().bitmapData;
      
      public static var im12_embed:Class = Embeds.smoke_d009_png;
      
      public static var im12:BitmapData = new Embeds.smoke_d009_png().bitmapData;
      
      public static var im13_embed:Class = Embeds.smoke_d007_png;
      
      public static var im13:BitmapData = new Embeds.smoke_d007_png().bitmapData;
      
      public static var im14_embed:Class = Embeds.smoke_d008_png;
      
      public static var im14:BitmapData = new Embeds.smoke_d008_png().bitmapData;
      
      public static var im15_embed:Class = Embeds.decal_free_33_png;
      
      public static var im15:BitmapData = new Embeds.decal_free_33_png().bitmapData;
      
      public static var im16_embed:Class = Embeds.decal_free_33_png;
      
      public static var im16:BitmapData = new Embeds.decal_free_33_png().bitmapData;
      
      public static var im17_embed:Class = Embeds.decal_free_33_png;
      
      public static var im17:BitmapData = new Embeds.decal_free_33_png().bitmapData;
      
      public static var im18_embed:Class = Embeds.decal_free_33_png;
      
      public static var im18:BitmapData = new Embeds.decal_free_33_png().bitmapData;
      
      public static var im19_embed:Class = Embeds.decal_free_33_png;
      
      public static var im19:BitmapData = new Embeds.decal_free_33_png().bitmapData;
      
      public static var im20_embed:Class = Embeds.pulse_04_png;
      
      public static var im20:BitmapData = new Embeds.pulse_04_png().bitmapData;
      
      public static var im21_embed:Class = Embeds.pulse_04_png;
      
      public static var im21:BitmapData = new Embeds.pulse_04_png().bitmapData;
      
      public function End_constructor()
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
         _loc4_ = new GameObject(param1,im2_embed,"",621,417);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.200000688;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 6.37005138;
         _loc4_.baseScaleY = 6.37005138;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = 0.140000001;
         _loc4_ = new GameObject(param1,im3_embed,"",625,94);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.400000572;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 4.81001568;
         _loc4_.baseScaleY = 4.81001568;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = -0.13000001;
         _loc4_ = new GameObject(param1,im4_embed,"",522,21);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.180000678;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.810000181;
         _loc4_.baseScaleY = 0.810000181;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = -0.300000012;
         _loc4_ = new GameObject(param1,im5_embed,"",329,484);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.160000667;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.750000238;
         _loc4_.baseScaleY = 0.750000238;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = -0.300000012;
         _loc4_ = new GameObject(param1,im6_embed,"",349,372);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.210000694;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.680000305;
         _loc4_.baseScaleY = 0.680000305;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = 0.200000003;
         _loc4_ = new GameObject(param1,im7_embed,"",351,352);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.680000305;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.700000286;
         _loc4_.baseScaleY = 0.700000286;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = 0.200000003;
         _loc4_ = new GameObject(param1,im8_embed,"",670,81);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.0900006592;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 3.58999753;
         _loc4_.baseScaleY = 3.58999753;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = 0.200000003;
         _loc4_ = new GameObject(param1,im9_embed,"",511,35);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.150000662;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.770000219;
         _loc4_.baseScaleY = 0.770000219;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = 0.219999999;
         _loc4_ = new GameObject(param1,im10_embed,"",345,398);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.500000477;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.690000296;
         _loc4_.baseScaleY = 0.690000296;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = -0.200000003;
         _loc4_ = new GameObject(param1,im11_embed,"",337,437);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.320000648;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.630000353;
         _loc4_.baseScaleY = 0.630000353;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = 0.129999995;
         _loc4_ = new GameObject(param1,im12_embed,"",325,576);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.310000658;
         _loc4_.additive = true;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = -0.200000003;
         _loc4_ = new GameObject(param1,im13_embed,"",479,77);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.190000683;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.670000315;
         _loc4_.baseScaleY = 0.670000315;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = 0.200000003;
         _loc4_ = new GameObject(param1,im14_embed,"",356,293);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.300000668;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.640000343;
         _loc4_.baseScaleY = 0.640000343;
         _loc5_ = new GameObjectFilterRotate();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterRotate(_loc5_).Speed = 0.300000012;
         _loc4_ = new GameObject(param1,im15_embed,"",406,202);
         _loc4_.baseRotation = 0;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.720000267;
         _loc4_.baseScaleY = 0.720000267;
         _loc5_ = new GameObjectFilterPulse();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterPulse(_loc5_).Speed = 1;
         _loc4_ = new GameObject(param1,im16_embed,"",365,443);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.650000334;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.690000296;
         _loc4_.baseScaleY = 0.690000296;
         _loc5_ = new GameObjectFilterPulse();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterPulse(_loc5_).Speed = 1;
         _loc4_ = new GameObject(param1,im17_embed,"",416,203);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0;
         _loc4_.additive = true;
         _loc5_ = new GameObjectFilterPulse();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterPulse(_loc5_).Speed = 0.5;
         _loc4_ = new GameObject(param1,im18_embed,"",428,206);
         _loc4_.baseRotation = 0;
         _loc4_.baseAlpha = 0.180000678;
         _loc4_.additive = true;
         _loc4_.baseScaleX = 0.640000343;
         _loc4_.baseScaleY = 0.640000343;
         _loc5_ = new GameObjectFilterPulse();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterPulse(_loc5_).Speed = 1;
         _loc4_ = new GameObject(param1,im19_embed,"",395,372);
         _loc4_.baseRotation = 0;
         _loc4_.additive = true;
         _loc5_ = new GameObjectFilterPulse();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterPulse(_loc5_).Speed = 0.300000012;
         _loc4_ = new GameObject(param1,im20_embed,"",387,292);
         _loc4_.baseRotation = 0;
         _loc4_.additive = true;
         _loc5_ = new GameObjectFilterBlink();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterBlink(_loc5_).Interval = 200;
         GameObjectFilterBlink(_loc5_).AliveTime = 0;
         GameObjectFilterBlink(_loc5_).BlinkAlpha = 0.5;
         _loc4_ = new GameObject(param1,im21_embed,"",403,451);
         _loc4_.baseRotation = 0;
         _loc4_.additive = true;
         _loc5_ = new GameObjectFilterBlink();
         _loc4_.addFilter(_loc5_);
         GameObjectFilterBlink(_loc5_).Interval = 200;
         GameObjectFilterBlink(_loc5_).AliveTime = 0;
         GameObjectFilterBlink(_loc5_).BlinkAlpha = 0.5;
         if(!param3)
         {
            param2.addChild(param1.m);
         }
      }
   }
}

