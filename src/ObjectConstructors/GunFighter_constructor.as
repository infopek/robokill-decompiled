package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class GunFighter_constructor
   {
      public static var collision_5:GameObjectCollision;
      
      public static var LayerName:String = "Player";
      
      public static var baseim_embed:Class = Embeds.hunter_head_png;
      
      public static var baseim:BitmapData = new Embeds.hunter_head_png().bitmapData;
      
      public function GunFighter_constructor()
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
         param2.animSpeed = 0;
         var _loc6_:GameObjectCollision = collision_5;
         if(!_loc6_)
         {
            _loc6_ = new GameObjectCollision();
            collision_5 = _loc6_;
         }
         param2.collision = _loc6_;
         param2.collisions[0] = _loc6_;
      }
   }
}

