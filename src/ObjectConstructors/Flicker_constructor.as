package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class Flicker_constructor
   {
      public static var LayerName:String = "Player";
      
      public static var baseim_embed:Class = Embeds.flicker_01_png;
      
      public static var baseim:BitmapData = new Embeds.flicker_01_png().bitmapData;
      
      public static var images_1_embed:Class = Embeds.flicker_01_png;
      
      public static var images_1:BitmapData = new Embeds.flicker_01_png().bitmapData;
      
      public static var images_2_embed:Class = Embeds.flicker_02_png;
      
      public static var images_2:BitmapData = new Embeds.flicker_02_png().bitmapData;
      
      public static var images:Array = [images_1,images_2];
      
      public function Flicker_constructor()
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
         Flicker(param2).images = images;
         param2.imageSet = images;
      }
   }
}

