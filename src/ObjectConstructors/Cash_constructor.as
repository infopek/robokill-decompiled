package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class Cash_constructor
   {
      public static var LayerName:String = "Floor";
      
      public static var baseim_embed:Class = Embeds.cash_S_png;
      
      public static var baseim:BitmapData = new Embeds.cash_S_png().bitmapData;
      
      public static var CashSmall_embed:Class = Embeds.cash_S_png;
      
      public static var CashSmall:BitmapData = new Embeds.cash_S_png().bitmapData;
      
      public static var CashMedium_embed:Class = Embeds.cash_M_png;
      
      public static var CashMedium:BitmapData = new Embeds.cash_M_png().bitmapData;
      
      public static var CashHeavy_embed:Class = Embeds.cash_H_png;
      
      public static var CashHeavy:BitmapData = new Embeds.cash_H_png().bitmapData;
      
      public function Cash_constructor()
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
         Cash(param2).CashSmall = CashSmall;
         Cash(param2).CashMedium = CashMedium;
         Cash(param2).CashHeavy = CashHeavy;
      }
   }
}

