package GameObjects
{
   import Engine.Collision.Shapes.*;
   
   public class GameObjectCollisionPoly
   {
      public var tformedX:Number;
      
      public var points:Array = new Array();
      
      public var approxX:Number;
      
      public var tformedY:Number;
      
      public var approxRadius:Number;
      
      public var polyDef:b2PolyDef;
      
      public var approxY:Number;
      
      public function GameObjectCollisionPoly()
      {
         super();
      }
      
      public function finalize() : void
      {
         polyDef = new b2PolyDef();
         polyDef.vertexCount = points.length;
         var _loc1_:int = int(points.length - 1);
         while(_loc1_ >= 0)
         {
            polyDef.vertices[_loc1_].Set(points[_loc1_][0],points[_loc1_][1]);
            _loc1_--;
         }
         polyDef.density = 1;
         polyDef.friction = 0.3;
      }
      
      public function pushPoint(param1:Number, param2:Number) : void
      {
         points.push([param1,param2]);
      }
   }
}

