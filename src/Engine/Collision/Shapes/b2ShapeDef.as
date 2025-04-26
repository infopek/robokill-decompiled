package Engine.Collision.Shapes
{
   import Engine.Common.Math.b2Math;
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   
   public class b2ShapeDef
   {
      public var type:int;
      
      public var groupIndex:int;
      
      public var localPosition:b2Vec2;
      
      public var categoryBits:int;
      
      public var localRotation:Number;
      
      public var density:Number;
      
      public var restitution:Number;
      
      public var userData:* = null;
      
      public var maskBits:int;
      
      public var friction:Number;
      
      public function b2ShapeDef()
      {
         super();
         type = b2Shape.e_unknownShape;
         userData = null;
         localPosition = new b2Vec2(0,0);
         localRotation = 0;
         friction = 0.2;
         restitution = 0;
         density = 0;
         categoryBits = 1;
         maskBits = 65535;
         groupIndex = 0;
      }
      
      public function ComputeMass(param1:b2MassData) : *
      {
         var _loc2_:b2CircleDef = null;
         var _loc3_:b2BoxDef = null;
         var _loc4_:b2PolyDef = null;
         param1.center = new b2Vec2(0,0);
         if(density == 0)
         {
            param1.mass = 0;
            param1.center.Set(0,0);
            param1.I = 0;
         }
         switch(type)
         {
            case b2Shape.e_circleShape:
               _loc2_ = this as b2CircleDef;
               param1.mass = density * b2Settings.b2_pi * _loc2_.radius * _loc2_.radius;
               param1.center.Set(0,0);
               param1.I = 0.5 * param1.mass * _loc2_.radius * _loc2_.radius;
               break;
            case b2Shape.e_boxShape:
               _loc3_ = this as b2BoxDef;
               param1.mass = 4 * density * _loc3_.extents.x * _loc3_.extents.y;
               param1.center.Set(0,0);
               param1.I = param1.mass / 3 * b2Math.b2Dot(_loc3_.extents,_loc3_.extents);
               break;
            case b2Shape.e_polyShape:
               _loc4_ = this as b2PolyDef;
               b2Shape.PolyMass(param1,_loc4_.vertices,_loc4_.vertexCount,density);
               break;
            default:
               param1.mass = 0;
               param1.center.Set(0,0);
               param1.I = 0;
         }
      }
   }
}

