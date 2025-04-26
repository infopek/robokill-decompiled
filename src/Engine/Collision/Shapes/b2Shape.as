package Engine.Collision.Shapes
{
   import Engine.Collision.b2BroadPhase;
   import Engine.Collision.b2Pair;
   import Engine.Common.Math.b2Mat22;
   import Engine.Common.Math.b2Math;
   import Engine.Common.Math.b2Vec2;
   import Engine.Dynamics.b2Body;
   
   public class b2Shape
   {
      public static const e_unknownShape:int = -1;
      
      public static const e_circleShape:int = 0;
      
      public static const e_boxShape:int = 1;
      
      public static const e_polyShape:int = 2;
      
      public static const e_meshShape:int = 3;
      
      public static const e_shapeTypeCount:int = 4;
      
      public var m_R:b2Mat22 = new b2Mat22();
      
      public var m_next:b2Shape;
      
      public var m_friction:Number;
      
      public var m_type:int;
      
      public var m_proxyId:int;
      
      public var m_userData:* = null;
      
      public var m_body:b2Body;
      
      public var m_restitution:Number;
      
      public var m_position:b2Vec2 = new b2Vec2();
      
      public function b2Shape(param1:b2ShapeDef, param2:b2Body)
      {
         super();
         m_userData = param1.userData;
         m_friction = param1.friction;
         m_restitution = param1.restitution;
         m_body = param2;
         m_proxyId = b2Pair.b2_nullProxy;
      }
      
      public static function Destroy(param1:b2Shape) : *
      {
         if(param1.m_proxyId != b2Pair.b2_nullProxy)
         {
            param1.m_body.m_world.m_broadPhase.DestroyProxy(param1.m_proxyId);
         }
      }
      
      public static function PolyMass(param1:b2MassData, param2:Array, param3:int, param4:Number) : *
      {
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc5_:b2Vec2 = new b2Vec2();
         _loc5_.SetZero();
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:b2Vec2 = new b2Vec2(0,0);
         var _loc9_:Number = 1 / 3;
         var _loc10_:int = 0;
         while(_loc10_ < param3)
         {
            _loc11_ = _loc8_;
            _loc12_ = param2[_loc10_];
            _loc13_ = _loc10_ + 1 < param3 ? param2[_loc10_ + 1] : param2[0];
            _loc14_ = b2Math.SubtractVV(_loc12_,_loc11_);
            _loc15_ = b2Math.SubtractVV(_loc13_,_loc11_);
            _loc16_ = b2Math.b2CrossVV(_loc14_,_loc15_);
            _loc17_ = 0.5 * _loc16_;
            _loc6_ += _loc17_;
            _loc18_ = new b2Vec2();
            _loc18_.SetV(_loc11_);
            _loc18_.Add(_loc12_);
            _loc18_.Add(_loc13_);
            _loc18_.Multiply(_loc9_ * _loc17_);
            _loc5_.Add(_loc18_);
            _loc19_ = _loc11_.x;
            _loc20_ = _loc11_.y;
            _loc21_ = _loc14_.x;
            _loc22_ = _loc14_.y;
            _loc23_ = _loc15_.x;
            _loc24_ = _loc15_.y;
            _loc25_ = _loc9_ * (0.25 * (_loc21_ * _loc21_ + _loc23_ * _loc21_ + _loc23_ * _loc23_) + (_loc19_ * _loc21_ + _loc19_ * _loc23_)) + 0.5 * _loc19_ * _loc19_;
            _loc26_ = _loc9_ * (0.25 * (_loc22_ * _loc22_ + _loc24_ * _loc22_ + _loc24_ * _loc24_) + (_loc20_ * _loc22_ + _loc20_ * _loc24_)) + 0.5 * _loc20_ * _loc20_;
            _loc7_ += _loc16_ * (_loc25_ + _loc26_);
            _loc10_++;
         }
         param1.mass = param4 * _loc6_;
         _loc5_.Multiply(1 / _loc6_);
         param1.center = _loc5_;
         _loc7_ = param4 * (_loc7_ - _loc6_ * b2Math.b2Dot(_loc5_,_loc5_));
         param1.I = _loc7_;
      }
      
      public static function Create(param1:b2ShapeDef, param2:b2Body, param3:b2Vec2) : b2Shape
      {
         switch(param1.type)
         {
            case e_circleShape:
               return new b2CircleShape(param1,param2,param3);
            case e_boxShape:
            case e_polyShape:
               return new b2PolyShape(param1,param2,param3);
            default:
               return null;
         }
      }
      
      public function ResetProxy(param1:b2BroadPhase) : *
      {
      }
      
      public function GetNext() : b2Shape
      {
         return m_next;
      }
      
      public function GetType() : int
      {
         return m_type;
      }
      
      public function GetUserData() : *
      {
         return m_userData;
      }
      
      public function Support(param1:Number, param2:Number) : b2Vec2
      {
         return null;
      }
      
      public function Synchronize(param1:b2Vec2, param2:b2Mat22) : *
      {
      }
      
      public function GetRotationMatrix() : b2Mat22
      {
         return m_R;
      }
      
      public function GetBody() : b2Body
      {
         return m_body;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return false;
      }
      
      public function GetPosition() : b2Vec2
      {
         return m_position;
      }
   }
}

