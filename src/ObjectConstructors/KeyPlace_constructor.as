package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class KeyPlace_constructor
   {
      public static var LayerName:String = "Floor";
      
      public static var baseim_embed:Class = Embeds.key1_png;
      
      public static var baseim:BitmapData = new Embeds.key1_png().bitmapData;
      
      public static var child1_embed:Class = Embeds.decal_free_33_png;
      
      public static var child1:BitmapData = new Embeds.decal_free_33_png().bitmapData;
      
      public function KeyPlace_constructor()
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
         _loc6_ = new GameObject(param1,child1_embed,"Floor",2,-2);
         _loc6_.name = "";
         _loc6_.baseHandleX = 0.5;
         _loc6_.baseHandleY = 0.5;
         _loc6_.basex = 2;
         _loc6_.basey = -2;
         _loc6_.baseScaleX = 1.16999984;
         _loc6_.baseScaleY = 1.16999984;
         _loc6_.additive = true;
         _loc6_.animSpeed = 0;
         _loc7_ = new GameObjectFilterPulse();
         _loc6_.addFilter(_loc7_);
         GameObjectFilterPulse(_loc7_).Speed = 1;
         param2.addChild(_loc6_);
      }
   }
}

