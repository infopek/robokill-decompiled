package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class Beserker_constructor
   {
      public static var LayerName:String = "Player";
      
      public static var baseim_embed:Class = Embeds.beserker_png;
      
      public static var baseim:BitmapData = new Embeds.beserker_png().bitmapData;
      
      public static var cover_1_embed:Class = Embeds.charge_shield001_png;
      
      public static var cover_1:BitmapData = new Embeds.charge_shield001_png().bitmapData;
      
      public static var cover_2_embed:Class = Embeds.charge_shield002_png;
      
      public static var cover_2:BitmapData = new Embeds.charge_shield002_png().bitmapData;
      
      public static var cover_3_embed:Class = Embeds.charge_shield003_png;
      
      public static var cover_3:BitmapData = new Embeds.charge_shield003_png().bitmapData;
      
      public static var cover_4_embed:Class = Embeds.charge_shield004_png;
      
      public static var cover_4:BitmapData = new Embeds.charge_shield004_png().bitmapData;
      
      public static var cover_5_embed:Class = Embeds.charge_shield005_png;
      
      public static var cover_5:BitmapData = new Embeds.charge_shield005_png().bitmapData;
      
      public static var cover_6_embed:Class = Embeds.charge_shield006_png;
      
      public static var cover_6:BitmapData = new Embeds.charge_shield006_png().bitmapData;
      
      public static var cover_7_embed:Class = Embeds.charge_shield007_png;
      
      public static var cover_7:BitmapData = new Embeds.charge_shield007_png().bitmapData;
      
      public static var cover_8_embed:Class = Embeds.charge_shield008_png;
      
      public static var cover_8:BitmapData = new Embeds.charge_shield008_png().bitmapData;
      
      public static var cover:Array = [cover_1,cover_2,cover_3,cover_4,cover_5,cover_6,cover_7,cover_8];
      
      public function Beserker_constructor()
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
         Beserker(param2).cover = cover;
         param2.imageSet = cover;
      }
   }
}

