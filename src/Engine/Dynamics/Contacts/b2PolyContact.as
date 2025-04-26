package Engine.Dynamics.Contacts
{
   import Engine.Collision.*;
   import Engine.Collision.Shapes.*;
   import Engine.Common.*;
   import Engine.Common.Math.*;
   import Engine.Dynamics.*;
   
   public class b2PolyContact extends b2Contact
   {
      public var m_manifold:Array = [new b2Manifold()];
      
      private var m0:b2Manifold = new b2Manifold();
      
      public function b2PolyContact(param1:b2Shape, param2:b2Shape)
      {
         super(param1,param2);
         m_manifold[0].pointCount = 0;
      }
      
      public static function Destroy(param1:b2Contact, param2:*) : *
      {
      }
      
      public static function Create(param1:b2Shape, param2:b2Shape, param3:*) : b2Contact
      {
         return new b2PolyContact(param1,param2);
      }
      
      override public function Evaluate() : *
      {
         var _loc4_:b2ContactPoint = null;
         var _loc5_:b2ContactPoint = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:b2ContactPoint = null;
         var _loc9_:uint = 0;
         var _loc10_:int = 0;
         var _loc11_:b2ContactPoint = null;
         var _loc12_:b2ContactID = null;
         var _loc1_:b2Manifold = m_manifold[0];
         var _loc2_:Array = m0.points;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.pointCount)
         {
            _loc4_ = _loc2_[_loc3_];
            _loc5_ = _loc1_.points[_loc3_];
            _loc4_.normalImpulse = _loc5_.normalImpulse;
            _loc4_.tangentImpulse = _loc5_.tangentImpulse;
            _loc4_.id = _loc5_.id.Copy();
            _loc3_++;
         }
         m0.pointCount = _loc1_.pointCount;
         b2Collision.b2CollidePoly(_loc1_,m_shape1 as b2PolyShape,m_shape2 as b2PolyShape);
         if(_loc1_.pointCount > 0)
         {
            _loc6_ = [false,false];
            _loc7_ = 0;
            while(_loc7_ < _loc1_.pointCount)
            {
               _loc8_ = _loc1_.points[_loc7_];
               _loc8_.normalImpulse = 0;
               _loc8_.tangentImpulse = 0;
               _loc9_ = _loc8_.id.key;
               _loc10_ = 0;
               while(_loc10_ < m0.pointCount)
               {
                  if(_loc6_[_loc10_] != true)
                  {
                     _loc11_ = m0.points[_loc10_];
                     _loc12_ = _loc11_.id;
                     if(_loc12_.key == _loc9_)
                     {
                        _loc6_[_loc10_] = true;
                        _loc8_.normalImpulse = _loc11_.normalImpulse;
                        _loc8_.tangentImpulse = _loc11_.tangentImpulse;
                        break;
                     }
                  }
                  _loc10_++;
               }
               _loc7_++;
            }
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

