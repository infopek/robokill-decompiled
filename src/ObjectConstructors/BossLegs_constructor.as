package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class BossLegs_constructor
   {
      public static var collision_13:GameObjectCollision;
      
      public static var LayerName:String = "BelowPlayer";
      
      public static var baseim_embed:Class = Embeds.boss_fly001_png;
      
      public static var baseim:BitmapData = new Embeds.boss_fly001_png().bitmapData;
      
      public static var imageSet_1_embed:Class = Embeds.boss_fly001_png;
      
      public static var imageSet_1:BitmapData = new Embeds.boss_fly001_png().bitmapData;
      
      public static var imageSet_2_embed:Class = Embeds.boss_fly002_png;
      
      public static var imageSet_2:BitmapData = new Embeds.boss_fly002_png().bitmapData;
      
      public static var imageSet_3_embed:Class = Embeds.boss_fly003_png;
      
      public static var imageSet_3:BitmapData = new Embeds.boss_fly003_png().bitmapData;
      
      public static var imageSet_4_embed:Class = Embeds.boss_fly004_png;
      
      public static var imageSet_4:BitmapData = new Embeds.boss_fly004_png().bitmapData;
      
      public static var imageSet_5_embed:Class = Embeds.boss_fly005_png;
      
      public static var imageSet_5:BitmapData = new Embeds.boss_fly005_png().bitmapData;
      
      public static var imageSet_6_embed:Class = Embeds.boss_fly006_png;
      
      public static var imageSet_6:BitmapData = new Embeds.boss_fly006_png().bitmapData;
      
      public static var imageSet_7_embed:Class = Embeds.boss_fly007_png;
      
      public static var imageSet_7:BitmapData = new Embeds.boss_fly007_png().bitmapData;
      
      public static var imageSet_8_embed:Class = Embeds.boss_fly008_png;
      
      public static var imageSet_8:BitmapData = new Embeds.boss_fly008_png().bitmapData;
      
      public static var imageSet:Array = [imageSet_1,imageSet_2,imageSet_3,imageSet_4,imageSet_5,imageSet_6,imageSet_7,imageSet_8];
      
      public function BossLegs_constructor()
      {
         super();
      }
      
      public static function setup(param1:GameScene, param2:GameObject) : void
      {
         var _loc3_:GameObjectFilter = null;
         var _loc4_:ParticleEmitter = null;
         var _loc5_:ParticleFilter = null;
         var _loc7_:GameObject = null;
         var _loc8_:GameObjectFilter = null;
         var _loc9_:GameObjectCollisionPoly = null;
         param2.baseHandleX = 0.5;
         param2.baseHandleY = 0.5;
         param2.addConditionalParticleArray(globalParticles.getParticles());
         param2.animSpeed = 3;
         var _loc6_:GameObjectCollision = collision_13;
         if(!_loc6_)
         {
            _loc6_ = new GameObjectCollision();
            collision_13 = _loc6_;
         }
         param2.collision = _loc6_;
         param2.collisions[0] = _loc6_;
         BossLegs(param2).imageSet = imageSet;
         param2.imageSet = imageSet;
      }
   }
}

