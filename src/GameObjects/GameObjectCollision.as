package GameObjects
{
   import Engine.Collision.*;
   import Engine.Collision.Shapes.*;
   import Engine.Common.*;
   import Engine.Common.Math.*;
   import Engine.Dynamics.*;
   
   public class GameObjectCollision
   {
      public static var world:b2World;
      
      public var approxX:Number;
      
      public var vecTemp:b2Vec2;
      
      public var lastSynchronized:int = 0;
      
      public var approxRadius:Number;
      
      public var approxY:Number;
      
      public var lastMiniSync:int = 0;
      
      public var body:b2Body;
      
      public var bodydef:b2BodyDef;
      
      public var go:GameObject;
      
      public var type:int = 0;
      
      public var disabled:Boolean = false;
      
      public var children:Array;
      
      public function GameObjectCollision()
      {
         var _loc1_:b2AABB = null;
         var _loc2_:b2Vec2 = null;
         var _loc3_:Boolean = false;
         children = new Array();
         vecTemp = new b2Vec2();
         super();
         if(!world)
         {
            _loc1_ = new b2AABB();
            _loc1_.minVertex.Set(-100,-100);
            _loc1_.maxVertex.Set(100,100);
            _loc2_ = new b2Vec2(0,0);
            _loc3_ = true;
            world = new b2World(_loc1_,_loc2_,_loc3_);
         }
         bodydef = new b2BodyDef();
      }
      
      public function pushPolygon(param1:GameObjectCollisionPoly) : void
      {
         param1.finalize();
         children.push(param1);
         bodydef.AddShape(param1.polyDef);
      }
      
      public function miniSync() : void
      {
         if(lastMiniSync == go.ticks)
         {
            return;
         }
         lastMiniSync = go.ticks;
         var _loc1_:b2Shape = body.m_shapeList;
         var _loc2_:Number = go.baseRotation / 180 * Math.PI;
         var _loc3_:int = 0;
         while(_loc3_ < body.m_shapeCount)
         {
            children[_loc3_].tformedX = Math.cos(-_loc2_) * children[_loc3_].approxX + Math.sin(-_loc2_) * children[_loc3_].approxY + go.basex;
            children[_loc3_].tformedY = -Math.sin(-_loc2_) * children[_loc3_].approxX + Math.cos(-_loc2_) * children[_loc3_].approxY + go.basey;
            _loc1_ = _loc1_.m_next;
            _loc3_++;
         }
      }
      
      public function collidesWith(param1:GameObjectCollision) : Boolean
      {
         var _loc8_:b2Shape = null;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Boolean = false;
         var _loc15_:b2Manifold = null;
         if(disabled || param1.disabled)
         {
            return false;
         }
         var _loc2_:Number = go.basex - param1.go.basex;
         var _loc3_:Number = go.basey - param1.go.basey;
         var _loc4_:Number = (go.baseWidth + param1.go.baseWidth + go.baseHeight + param1.go.baseHeight) * 0.7;
         if(_loc2_ < -_loc4_ || _loc2_ > _loc4_ || _loc3_ < -_loc4_ || _loc3_ > _loc4_)
         {
            return false;
         }
         miniSync();
         param1.miniSync();
         var _loc5_:b2Shape = body.m_shapeList;
         var _loc6_:int = 0;
         var _loc7_:int = body.m_shapeCount - 1;
         while(_loc7_ >= 0)
         {
            _loc8_ = param1.body.m_shapeList;
            _loc9_ = param1.body.m_shapeCount - 1;
            while(_loc9_ >= 0)
            {
               _loc10_ = children[_loc7_].tformedX - param1.children[_loc9_].tformedX;
               _loc11_ = children[_loc7_].tformedY - param1.children[_loc9_].tformedY;
               _loc12_ = _loc10_ * _loc10_ + _loc11_ * _loc11_;
               _loc13_ = children[_loc7_].approxRadius + param1.children[_loc9_].approxRadius;
               _loc14_ = false;
               if(_loc12_ < _loc13_ * _loc13_)
               {
                  _loc14_ = true;
               }
               if(_loc14_)
               {
                  synchronize();
                  param1.synchronize();
                  _loc15_ = new b2Manifold();
                  b2Collision.b2CollidePoly(_loc15_,b2PolyShape(_loc5_),b2PolyShape(_loc8_));
                  if(_loc15_.points[0].separation < 9999999)
                  {
                     return true;
                  }
               }
               _loc8_ = _loc8_.m_next;
               _loc9_--;
            }
            _loc5_ = _loc5_.m_next;
            _loc7_--;
         }
         return false;
      }
      
      public function finalize() : void
      {
         body = new b2Body(bodydef,world);
      }
      
      public function synchronize() : void
      {
         var _loc2_:Number = NaN;
         if(lastSynchronized == go.ticks)
         {
            return;
         }
         lastSynchronized = go.ticks;
         vecTemp.x = go.basex;
         vecTemp.y = go.basey;
         var _loc1_:b2Shape = body.m_shapeList;
         _loc2_ = go.baseRotation / 180 * Math.PI;
         body.m_flags &= ~b2Body.e_frozenFlag;
         body.SetOriginPosition(vecTemp,_loc2_);
         body.SynchronizeShapes();
      }
   }
}

