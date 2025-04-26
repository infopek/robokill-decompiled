package Engine.Dynamics
{
   import Engine.Collision.Shapes.b2ShapeDef;
   import Engine.Common.Math.b2Vec2;
   import Engine.Common.b2Settings;
   
   public class b2BodyDef
   {
      public var angularDamping:Number;
      
      public var linearVelocity:b2Vec2;
      
      public var position:b2Vec2;
      
      public var isSleeping:Boolean;
      
      public var allowSleep:Boolean;
      
      public var userData:*;
      
      public var preventRotation:Boolean;
      
      public var shapes:Array = new Array();
      
      public var linearDamping:Number;
      
      public var rotation:Number;
      
      public var angularVelocity:Number;
      
      public function b2BodyDef()
      {
         super();
         userData = null;
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxShapesPerBody)
         {
            shapes[_loc1_] = null;
            _loc1_++;
         }
         position = new b2Vec2(0,0);
         rotation = 0;
         linearVelocity = new b2Vec2(0,0);
         angularVelocity = 0;
         linearDamping = 0;
         angularDamping = 0;
         allowSleep = true;
         isSleeping = false;
         preventRotation = false;
      }
      
      public function AddShape(param1:b2ShapeDef) : *
      {
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxShapesPerBody)
         {
            if(shapes[_loc2_] == null)
            {
               shapes[_loc2_] = param1;
               break;
            }
            _loc2_++;
         }
      }
   }
}

