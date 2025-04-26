package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class FloorTile_constructor
   {
      public static var LayerName:String = "";
      
      public static var baseim_embed:Class = Embeds.floor_tile_01_png;
      
      public static var baseim:BitmapData = new Embeds.floor_tile_01_png().bitmapData;
      
      public static var images_1_embed:Class = Embeds.floor_tile_01_png;
      
      public static var images_1:BitmapData = new Embeds.floor_tile_01_png().bitmapData;
      
      public static var images_2_embed:Class = Embeds.floor_tile_02_png;
      
      public static var images_2:BitmapData = new Embeds.floor_tile_02_png().bitmapData;
      
      public static var images_3_embed:Class = Embeds.floor_tile_03_png;
      
      public static var images_3:BitmapData = new Embeds.floor_tile_03_png().bitmapData;
      
      public static var images_4_embed:Class = Embeds.floor_tile_04_png;
      
      public static var images_4:BitmapData = new Embeds.floor_tile_04_png().bitmapData;
      
      public static var images_5_embed:Class = Embeds.floor_tile_05_png;
      
      public static var images_5:BitmapData = new Embeds.floor_tile_05_png().bitmapData;
      
      public static var images_6_embed:Class = Embeds.floor_tile_06_png;
      
      public static var images_6:BitmapData = new Embeds.floor_tile_06_png().bitmapData;
      
      public static var images_7_embed:Class = Embeds.floor_tile_07_png;
      
      public static var images_7:BitmapData = new Embeds.floor_tile_07_png().bitmapData;
      
      public static var images_8_embed:Class = Embeds.floor_tile_08_png;
      
      public static var images_8:BitmapData = new Embeds.floor_tile_08_png().bitmapData;
      
      public static var images_9_embed:Class = Embeds.floor_tile_09_png;
      
      public static var images_9:BitmapData = new Embeds.floor_tile_09_png().bitmapData;
      
      public static var images_10_embed:Class = Embeds.floor_tile_10_png;
      
      public static var images_10:BitmapData = new Embeds.floor_tile_10_png().bitmapData;
      
      public static var images_11_embed:Class = Embeds.floor_tile_11_png;
      
      public static var images_11:BitmapData = new Embeds.floor_tile_11_png().bitmapData;
      
      public static var images_12_embed:Class = Embeds.floor_tile_12_png;
      
      public static var images_12:BitmapData = new Embeds.floor_tile_12_png().bitmapData;
      
      public static var images_13_embed:Class = Embeds.floor_tile_13_png;
      
      public static var images_13:BitmapData = new Embeds.floor_tile_13_png().bitmapData;
      
      public static var images_14_embed:Class = Embeds.floor_tile_14_png;
      
      public static var images_14:BitmapData = new Embeds.floor_tile_14_png().bitmapData;
      
      public static var images_15_embed:Class = Embeds.floor_tile_15_png;
      
      public static var images_15:BitmapData = new Embeds.floor_tile_15_png().bitmapData;
      
      public static var images_16_embed:Class = Embeds.floor_tile_16_png;
      
      public static var images_16:BitmapData = new Embeds.floor_tile_16_png().bitmapData;
      
      public static var images_17_embed:Class = Embeds.floor_tile_17_png;
      
      public static var images_17:BitmapData = new Embeds.floor_tile_17_png().bitmapData;
      
      public static var images:Array = [images_1,images_2,images_3,images_4,images_5,images_6,images_7,images_8,images_9,images_10,images_11,images_12,images_13,images_14,images_15,images_16,images_17];
      
      public function FloorTile_constructor()
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
         FloorTile(param2).images = images;
         param2.imageSet = images;
      }
   }
}

