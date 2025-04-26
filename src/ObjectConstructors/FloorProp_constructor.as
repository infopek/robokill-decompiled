package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class FloorProp_constructor
   {
      public static var LayerName:String = "Floor";
      
      public static var baseim_embed:Class = Embeds.prop_01_png;
      
      public static var baseim:BitmapData = new Embeds.prop_01_png().bitmapData;
      
      public static var images_1_embed:Class = Embeds.prop_01_png;
      
      public static var images_1:BitmapData = new Embeds.prop_01_png().bitmapData;
      
      public static var images_2_embed:Class = Embeds.prop_02_png;
      
      public static var images_2:BitmapData = new Embeds.prop_02_png().bitmapData;
      
      public static var images_3_embed:Class = Embeds.prop_03_png;
      
      public static var images_3:BitmapData = new Embeds.prop_03_png().bitmapData;
      
      public static var images_4_embed:Class = Embeds.prop_04_png;
      
      public static var images_4:BitmapData = new Embeds.prop_04_png().bitmapData;
      
      public static var images_5_embed:Class = Embeds.prop_05_png;
      
      public static var images_5:BitmapData = new Embeds.prop_05_png().bitmapData;
      
      public static var images_6_embed:Class = Embeds.prop_06_png;
      
      public static var images_6:BitmapData = new Embeds.prop_06_png().bitmapData;
      
      public static var images_7_embed:Class = Embeds.prop_07_png;
      
      public static var images_7:BitmapData = new Embeds.prop_07_png().bitmapData;
      
      public static var images_8_embed:Class = Embeds.prop_08_png;
      
      public static var images_8:BitmapData = new Embeds.prop_08_png().bitmapData;
      
      public static var images_9_embed:Class = Embeds.prop_09_png;
      
      public static var images_9:BitmapData = new Embeds.prop_09_png().bitmapData;
      
      public static var images_10_embed:Class = Embeds.prop_10_png;
      
      public static var images_10:BitmapData = new Embeds.prop_10_png().bitmapData;
      
      public static var images_11_embed:Class = Embeds.prop_11_png;
      
      public static var images_11:BitmapData = new Embeds.prop_11_png().bitmapData;
      
      public static var images_12_embed:Class = Embeds.prop_12_png;
      
      public static var images_12:BitmapData = new Embeds.prop_12_png().bitmapData;
      
      public static var images_13_embed:Class = Embeds.prop_13_png;
      
      public static var images_13:BitmapData = new Embeds.prop_13_png().bitmapData;
      
      public static var images_14_embed:Class = Embeds.prop_14_png;
      
      public static var images_14:BitmapData = new Embeds.prop_14_png().bitmapData;
      
      public static var images_15_embed:Class = Embeds.prop_15_png;
      
      public static var images_15:BitmapData = new Embeds.prop_15_png().bitmapData;
      
      public static var images_16_embed:Class = Embeds.prop_16_png;
      
      public static var images_16:BitmapData = new Embeds.prop_16_png().bitmapData;
      
      public static var images_17_embed:Class = Embeds.prop_17_png;
      
      public static var images_17:BitmapData = new Embeds.prop_17_png().bitmapData;
      
      public static var images_18_embed:Class = Embeds.prop_18_png;
      
      public static var images_18:BitmapData = new Embeds.prop_18_png().bitmapData;
      
      public static var images_19_embed:Class = Embeds.prop_19_png;
      
      public static var images_19:BitmapData = new Embeds.prop_19_png().bitmapData;
      
      public static var images_20_embed:Class = Embeds.prop_20_png;
      
      public static var images_20:BitmapData = new Embeds.prop_20_png().bitmapData;
      
      public static var images_21_embed:Class = Embeds.prop_21_png;
      
      public static var images_21:BitmapData = new Embeds.prop_21_png().bitmapData;
      
      public static var images_22_embed:Class = Embeds.prop_22_png;
      
      public static var images_22:BitmapData = new Embeds.prop_22_png().bitmapData;
      
      public static var images_23_embed:Class = Embeds.prop_23_png;
      
      public static var images_23:BitmapData = new Embeds.prop_23_png().bitmapData;
      
      public static var images_24_embed:Class = Embeds.prop_24_png;
      
      public static var images_24:BitmapData = new Embeds.prop_24_png().bitmapData;
      
      public static var images_25_embed:Class = Embeds.prop_25_png;
      
      public static var images_25:BitmapData = new Embeds.prop_25_png().bitmapData;
      
      public static var images_26_embed:Class = Embeds.prop_26_png;
      
      public static var images_26:BitmapData = new Embeds.prop_26_png().bitmapData;
      
      public static var images_27_embed:Class = Embeds.prop_27_png;
      
      public static var images_27:BitmapData = new Embeds.prop_27_png().bitmapData;
      
      public static var images_28_embed:Class = Embeds.prop_28_png;
      
      public static var images_28:BitmapData = new Embeds.prop_28_png().bitmapData;
      
      public static var images_29_embed:Class = Embeds.prop_29_png;
      
      public static var images_29:BitmapData = new Embeds.prop_29_png().bitmapData;
      
      public static var images_30_embed:Class = Embeds.prop_30_png;
      
      public static var images_30:BitmapData = new Embeds.prop_30_png().bitmapData;
      
      public static var images_31_embed:Class = Embeds.prop_31_png;
      
      public static var images_31:BitmapData = new Embeds.prop_31_png().bitmapData;
      
      public static var images_32_embed:Class = Embeds.prop_32_png;
      
      public static var images_32:BitmapData = new Embeds.prop_32_png().bitmapData;
      
      public static var images_33_embed:Class = Embeds.prop_33_png;
      
      public static var images_33:BitmapData = new Embeds.prop_33_png().bitmapData;
      
      public static var images_34_embed:Class = Embeds.prop_34_png;
      
      public static var images_34:BitmapData = new Embeds.prop_34_png().bitmapData;
      
      public static var images_35_embed:Class = Embeds.prop_35_png;
      
      public static var images_35:BitmapData = new Embeds.prop_35_png().bitmapData;
      
      public static var images:Array = [images_1,images_2,images_3,images_4,images_5,images_6,images_7,images_8,images_9,images_10,images_11,images_12,images_13,images_14,images_15,images_16,images_17,images_18,images_19,images_20,images_21,images_22,images_23,images_24,images_25,images_26,images_27,images_28,images_29,images_30,images_31,images_32,images_33,images_34,images_35];
      
      public function FloorProp_constructor()
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
         FloorProp(param2).images = images;
         param2.imageSet = images;
      }
   }
}

