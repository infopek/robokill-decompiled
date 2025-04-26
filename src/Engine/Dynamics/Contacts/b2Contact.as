package Engine.Dynamics.Contacts
{
   import Engine.Collision.*;
   import Engine.Collision.Shapes.*;
   import Engine.Common.*;
   import Engine.Common.Math.*;
   import Engine.Dynamics.*;
   
   public class b2Contact
   {
      public static var s_registers:Array;
      
      public static var e_islandFlag:uint = 1;
      
      public static var e_destroyFlag:uint = 2;
      
      public static var s_initialized:Boolean = false;
      
      public var m_shape1:b2Shape;
      
      public var m_shape2:b2Shape;
      
      public var m_next:b2Contact;
      
      public var m_prev:b2Contact;
      
      public var m_friction:Number;
      
      public var m_manifoldCount:int;
      
      public var m_node1:b2ContactNode = new b2ContactNode();
      
      public var m_node2:b2ContactNode = new b2ContactNode();
      
      public var m_restitution:Number;
      
      public var m_flags:uint;
      
      public function b2Contact(param1:b2Shape = null, param2:b2Shape = null)
      {
         super();
         m_flags = 0;
         if(!param1 || !param2)
         {
            m_shape1 = null;
            m_shape2 = null;
            return;
         }
         m_shape1 = param1;
         m_shape2 = param2;
         m_manifoldCount = 0;
         m_friction = Math.sqrt(m_shape1.m_friction * m_shape2.m_friction);
         m_restitution = b2Math.b2Max(m_shape1.m_restitution,m_shape2.m_restitution);
         m_prev = null;
         m_next = null;
         m_node1.contact = null;
         m_node1.prev = null;
         m_node1.next = null;
         m_node1.other = null;
         m_node2.contact = null;
         m_node2.prev = null;
         m_node2.next = null;
         m_node2.other = null;
      }
      
      public static function InitializeRegisters() : *
      {
         var _loc2_:int = 0;
         s_registers = new Array(b2Shape.e_shapeTypeCount);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.e_shapeTypeCount)
         {
            s_registers[_loc1_] = new Array(b2Shape.e_shapeTypeCount);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.e_shapeTypeCount)
            {
               s_registers[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         AddType(b2CircleContact.Create,b2CircleContact.Destroy,b2Shape.e_circleShape,b2Shape.e_circleShape);
         AddType(b2PolyAndCircleContact.Create,b2PolyAndCircleContact.Destroy,b2Shape.e_polyShape,b2Shape.e_circleShape);
         AddType(b2PolyContact.Create,b2PolyContact.Destroy,b2Shape.e_polyShape,b2Shape.e_polyShape);
      }
      
      public static function Destroy(param1:b2Contact, param2:*) : *
      {
         if(param1.GetManifoldCount() > 0)
         {
            param1.m_shape1.m_body.WakeUp();
            param1.m_shape2.m_body.WakeUp();
         }
         var _loc3_:int = param1.m_shape1.m_type;
         var _loc4_:int = param1.m_shape2.m_type;
         var _loc5_:* = s_registers[_loc3_][_loc4_].destroyFcn;
         _loc5_(param1,param2);
      }
      
      public static function AddType(param1:*, param2:*, param3:int, param4:int) : *
      {
         s_registers[param3][param4].createFcn = param1;
         s_registers[param3][param4].destroyFcn = param2;
         s_registers[param3][param4].primary = true;
         if(param3 != param4)
         {
            s_registers[param4][param3].createFcn = param1;
            s_registers[param4][param3].destroyFcn = param2;
            s_registers[param4][param3].primary = false;
         }
      }
      
      public static function Create(param1:b2Shape, param2:b2Shape, param3:*) : b2Contact
      {
         var _loc7_:b2Contact = null;
         var _loc8_:int = 0;
         var _loc9_:b2Manifold = null;
         if(s_initialized == false)
         {
            InitializeRegisters();
            s_initialized = true;
         }
         var _loc4_:int = param1.m_type;
         var _loc5_:int = param2.m_type;
         var _loc6_:* = s_registers[_loc4_][_loc5_].createFcn;
         if(_loc6_)
         {
            if(s_registers[_loc4_][_loc5_].primary)
            {
               return _loc6_(param1,param2,param3);
            }
            _loc7_ = _loc6_(param2,param1,param3);
            _loc8_ = 0;
            while(_loc8_ < _loc7_.GetManifoldCount())
            {
               _loc9_ = _loc7_.GetManifolds()[_loc8_];
               _loc9_.normal = _loc9_.normal.Negative();
               _loc8_++;
            }
            return _loc7_;
         }
         return null;
      }
      
      public function GetShape1() : b2Shape
      {
         return m_shape1;
      }
      
      public function GetShape2() : b2Shape
      {
         return m_shape2;
      }
      
      public function GetManifoldCount() : int
      {
         return m_manifoldCount;
      }
      
      public function GetNext() : b2Contact
      {
         return m_next;
      }
      
      public function GetManifolds() : Array
      {
         return null;
      }
      
      public function Evaluate() : *
      {
      }
   }
}

