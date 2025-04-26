package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class Jumper_constructor
   {
      public static var LayerName:String = "Player";
      
      public static var baseim_embed:Class = Embeds.jumper001_png;
      
      public static var baseim:BitmapData = new Embeds.jumper001_png().bitmapData;
      
      public static var imageSet_1_embed:Class = Embeds.jumper001_png;
      
      public static var imageSet_1:BitmapData = new Embeds.jumper001_png().bitmapData;
      
      public static var imageSet_2_embed:Class = Embeds.jumper002_png;
      
      public static var imageSet_2:BitmapData = new Embeds.jumper002_png().bitmapData;
      
      public static var imageSet_3_embed:Class = Embeds.jumper003_png;
      
      public static var imageSet_3:BitmapData = new Embeds.jumper003_png().bitmapData;
      
      public static var imageSet_4_embed:Class = Embeds.jumper004_png;
      
      public static var imageSet_4:BitmapData = new Embeds.jumper004_png().bitmapData;
      
      public static var imageSet_5_embed:Class = Embeds.jumper005_png;
      
      public static var imageSet_5:BitmapData = new Embeds.jumper005_png().bitmapData;
      
      public static var imageSet_6_embed:Class = Embeds.jumper006_png;
      
      public static var imageSet_6:BitmapData = new Embeds.jumper006_png().bitmapData;
      
      public static var imageSet_7_embed:Class = Embeds.jumper007_png;
      
      public static var imageSet_7:BitmapData = new Embeds.jumper007_png().bitmapData;
      
      public static var imageSet_8_embed:Class = Embeds.jumper008_png;
      
      public static var imageSet_8:BitmapData = new Embeds.jumper008_png().bitmapData;
      
      public static var imageSet_9_embed:Class = Embeds.jumper009_png;
      
      public static var imageSet_9:BitmapData = new Embeds.jumper009_png().bitmapData;
      
      public static var imageSet_10_embed:Class = Embeds.jumper010_png;
      
      public static var imageSet_10:BitmapData = new Embeds.jumper010_png().bitmapData;
      
      public static var imageSet_11_embed:Class = Embeds.jumper011_png;
      
      public static var imageSet_11:BitmapData = new Embeds.jumper011_png().bitmapData;
      
      public static var imageSet_12_embed:Class = Embeds.jumper012_png;
      
      public static var imageSet_12:BitmapData = new Embeds.jumper012_png().bitmapData;
      
      public static var imageSet:Array = [imageSet_1,imageSet_2,imageSet_3,imageSet_4,imageSet_5,imageSet_6,imageSet_7,imageSet_8,imageSet_9,imageSet_10,imageSet_11,imageSet_12];
      
      public function Jumper_constructor()
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
         param2.animSpeed = 4;
         Jumper(param2).imageSet = imageSet;
         param2.imageSet = imageSet;
      }
   }
}

