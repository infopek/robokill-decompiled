package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class Swarm_constructor
   {
      public static var LayerName:String = "Player";
      
      public static var baseim_embed:Class = Embeds.swarm001_png;
      
      public static var baseim:BitmapData = new Embeds.swarm001_png().bitmapData;
      
      public static var imageSet_1_embed:Class = Embeds.swarm001_png;
      
      public static var imageSet_1:BitmapData = new Embeds.swarm001_png().bitmapData;
      
      public static var imageSet_2_embed:Class = Embeds.swarm002_png;
      
      public static var imageSet_2:BitmapData = new Embeds.swarm002_png().bitmapData;
      
      public static var imageSet_3_embed:Class = Embeds.swarm003_png;
      
      public static var imageSet_3:BitmapData = new Embeds.swarm003_png().bitmapData;
      
      public static var imageSet_4_embed:Class = Embeds.swarm004_png;
      
      public static var imageSet_4:BitmapData = new Embeds.swarm004_png().bitmapData;
      
      public static var imageSet_5_embed:Class = Embeds.swarm005_png;
      
      public static var imageSet_5:BitmapData = new Embeds.swarm005_png().bitmapData;
      
      public static var imageSet_6_embed:Class = Embeds.swarm006_png;
      
      public static var imageSet_6:BitmapData = new Embeds.swarm006_png().bitmapData;
      
      public static var imageSet_7_embed:Class = Embeds.swarm007_png;
      
      public static var imageSet_7:BitmapData = new Embeds.swarm007_png().bitmapData;
      
      public static var imageSet_8_embed:Class = Embeds.swarm008_png;
      
      public static var imageSet_8:BitmapData = new Embeds.swarm008_png().bitmapData;
      
      public static var imageSet_9_embed:Class = Embeds.swarm009_png;
      
      public static var imageSet_9:BitmapData = new Embeds.swarm009_png().bitmapData;
      
      public static var imageSet_10_embed:Class = Embeds.swarm010_png;
      
      public static var imageSet_10:BitmapData = new Embeds.swarm010_png().bitmapData;
      
      public static var imageSet_11_embed:Class = Embeds.swarm011_png;
      
      public static var imageSet_11:BitmapData = new Embeds.swarm011_png().bitmapData;
      
      public static var imageSet_12_embed:Class = Embeds.swarm012_png;
      
      public static var imageSet_12:BitmapData = new Embeds.swarm012_png().bitmapData;
      
      public static var imageSet_13_embed:Class = Embeds.swarm013_png;
      
      public static var imageSet_13:BitmapData = new Embeds.swarm013_png().bitmapData;
      
      public static var imageSet_14_embed:Class = Embeds.swarm014_png;
      
      public static var imageSet_14:BitmapData = new Embeds.swarm014_png().bitmapData;
      
      public static var imageSet_15_embed:Class = Embeds.swarm015_png;
      
      public static var imageSet_15:BitmapData = new Embeds.swarm015_png().bitmapData;
      
      public static var imageSet_16_embed:Class = Embeds.swarm016_png;
      
      public static var imageSet_16:BitmapData = new Embeds.swarm016_png().bitmapData;
      
      public static var imageSet:Array = [imageSet_1,imageSet_2,imageSet_3,imageSet_4,imageSet_5,imageSet_6,imageSet_7,imageSet_8,imageSet_9,imageSet_10,imageSet_11,imageSet_12,imageSet_13,imageSet_14,imageSet_15,imageSet_16];
      
      public function Swarm_constructor()
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
         param2.animSpeed = 6;
         Swarm(param2).imageSet = imageSet;
         param2.imageSet = imageSet;
      }
   }
}

