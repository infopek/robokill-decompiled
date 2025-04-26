package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class Door_constructor
   {
      public static var LayerName:String = "Background";
      
      public static var baseim_embed:Class = Embeds.door001_png;
      
      public static var baseim:BitmapData = new Embeds.door001_png().bitmapData;
      
      public static var openAnim_1_embed:Class = Embeds.door001_png;
      
      public static var openAnim_1:BitmapData = new Embeds.door001_png().bitmapData;
      
      public static var openAnim_2_embed:Class = Embeds.door002_png;
      
      public static var openAnim_2:BitmapData = new Embeds.door002_png().bitmapData;
      
      public static var openAnim_3_embed:Class = Embeds.door003_png;
      
      public static var openAnim_3:BitmapData = new Embeds.door003_png().bitmapData;
      
      public static var openAnim_4_embed:Class = Embeds.door004_png;
      
      public static var openAnim_4:BitmapData = new Embeds.door004_png().bitmapData;
      
      public static var openAnim_5_embed:Class = Embeds.door005_png;
      
      public static var openAnim_5:BitmapData = new Embeds.door005_png().bitmapData;
      
      public static var openAnim_6_embed:Class = Embeds.door006_png;
      
      public static var openAnim_6:BitmapData = new Embeds.door006_png().bitmapData;
      
      public static var openAnim_7_embed:Class = Embeds.door007_png;
      
      public static var openAnim_7:BitmapData = new Embeds.door007_png().bitmapData;
      
      public static var openAnim_8_embed:Class = Embeds.door008_png;
      
      public static var openAnim_8:BitmapData = new Embeds.door008_png().bitmapData;
      
      public static var openAnim_9_embed:Class = Embeds.door009_png;
      
      public static var openAnim_9:BitmapData = new Embeds.door009_png().bitmapData;
      
      public static var openAnim_10_embed:Class = Embeds.door010_png;
      
      public static var openAnim_10:BitmapData = new Embeds.door010_png().bitmapData;
      
      public static var openAnim:Array = [openAnim_1,openAnim_2,openAnim_3,openAnim_4,openAnim_5,openAnim_6,openAnim_7,openAnim_8,openAnim_9,openAnim_10];
      
      public function Door_constructor()
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
         Door(param2).openAnim = openAnim;
         param2.imageSet = openAnim;
      }
   }
}

