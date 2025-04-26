package Engine.Dynamics.Contacts
{
   import Engine.Collision.*;
   import Engine.Collision.Shapes.*;
   import Engine.Common.*;
   import Engine.Common.Math.*;
   import Engine.Dynamics.*;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
      public var m_manifold:Array = [new b2Manifold()];
      
      public function b2PolyAndCircleContact(param1:b2Shape, param2:b2Shape)
      {
         super(param1,param2);
         b2Settings.b2Assert(m_shape1.m_type == b2Shape.e_polyShape);
         b2Settings.b2Assert(m_shape2.m_type == b2Shape.e_circleShape);
         m_manifold[0].pointCount = 0;
         m_manifold[0].points[0].normalImpulse = 0;
         m_manifold[0].points[0].tangentImpulse = 0;
      }
      
      public static function Destroy(param1:b2Contact, param2:*) : *
      {
      }
      
      public static function Create(param1:b2Shape, param2:b2Shape, param3:*) : b2Contact
      {
         return new b2PolyAndCircleContact(param1,param2);
      }
      
      override public function Evaluate() : *
      {
         b2Collision.b2CollidePolyAndCircle(m_manifold[0],m_shape1 as b2PolyShape,m_shape2 as b2CircleShape);
         if(m_manifold[0].pointCount > 0)
         {
            m_manifoldCount = 1;
         }
         else
         {
            m_manifoldCount = 0;
         }
      }
      
      override public function GetManifolds() : Array
      {
         return m_manifold;
      }
   }
}

