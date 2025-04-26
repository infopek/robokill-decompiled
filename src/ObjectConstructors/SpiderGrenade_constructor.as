package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class SpiderGrenade_constructor
   {
      public static var LayerName:String = "Player";
      
      public static var baseim_embed:Class = Embeds.spider_shot_png;
      
      public static var baseim:BitmapData = new Embeds.spider_shot_png().bitmapData;
      
      public static var imageSet:Array = [];
      
      public function SpiderGrenade_constructor()
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
         SpiderGrenade(param2).imageSet = imageSet;
         param2.imageSet = imageSet;
      }
   }
}

