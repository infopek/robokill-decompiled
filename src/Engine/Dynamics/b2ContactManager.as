package Engine.Dynamics
{
   import Engine.Collision.Shapes.b2Shape;
   import Engine.Collision.b2PairCallback;
   import Engine.Dynamics.Contacts.b2Contact;
   import Engine.Dynamics.Contacts.b2ContactNode;
   import Engine.Dynamics.Contacts.b2NullContact;
   
   public class b2ContactManager extends b2PairCallback
   {
      public var m_world:b2World;
      
      public var m_destroyImmediate:Boolean;
      
      public var m_nullContact:b2NullContact = new b2NullContact();
      
      public function b2ContactManager()
      {
         super();
         m_world = null;
         m_destroyImmediate = false;
      }
      
      public function Collide() : *
      {
         var _loc1_:b2Body = null;
         var _loc2_:b2Body = null;
         var _loc3_:b2ContactNode = null;
         var _loc4_:b2ContactNode = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc5_:b2Contact = m_world.m_contactList;
         while(_loc5_ != null)
         {
            if(!(_loc5_.m_shape1.m_body.IsSleeping() && _loc5_.m_shape2.m_body.IsSleeping()))
            {
               _loc6_ = _loc5_.GetManifoldCount();
               _loc5_.Evaluate();
               _loc7_ = _loc5_.GetManifoldCount();
               if(_loc6_ == 0 && _loc7_ > 0)
               {
                  _loc1_ = _loc5_.m_shape1.m_body;
                  _loc2_ = _loc5_.m_shape2.m_body;
                  _loc3_ = _loc5_.m_node1;
                  _loc4_ = _loc5_.m_node2;
                  _loc3_.contact = _loc5_;
                  _loc3_.other = _loc2_;
                  _loc3_.prev = null;
                  _loc3_.next = _loc1_.m_contactList;
                  if(_loc3_.next != null)
                  {
                     _loc3_.next.prev = _loc5_.m_node1;
                  }
                  _loc1_.m_contactList = _loc5_.m_node1;
                  _loc4_.contact = _loc5_;
                  _loc4_.other = _loc1_;
                  _loc4_.prev = null;
                  _loc4_.next = _loc2_.m_contactList;
                  if(_loc4_.next != null)
                  {
                     _loc4_.next.prev = _loc4_;
                  }
                  _loc2_.m_contactList = _loc4_;
               }
               else if(_loc6_ > 0 && _loc7_ == 0)
               {
                  _loc1_ = _loc5_.m_shape1.m_body;
                  _loc2_ = _loc5_.m_shape2.m_body;
                  _loc3_ = _loc5_.m_node1;
                  _loc4_ = _loc5_.m_node2;
                  if(_loc3_.prev)
                  {
                     _loc3_.prev.next = _loc3_.next;
                  }
                  if(_loc3_.next)
                  {
                     _loc3_.next.prev = _loc3_.prev;
                  }
                  if(_loc3_ == _loc1_.m_contactList)
                  {
                     _loc1_.m_contactList = _loc3_.next;
                  }
                  _loc3_.prev = null;
                  _loc3_.next = null;
                  if(_loc4_.prev)
                  {
                     _loc4_.prev.next = _loc4_.next;
                  }
                  if(_loc4_.next)
                  {
                     _loc4_.next.prev = _loc4_.prev;
                  }
                  if(_loc4_ == _loc2_.m_contactList)
                  {
                     _loc2_.m_contactList = _loc4_.next;
                  }
                  _loc4_.prev = null;
                  _loc4_.next = null;
               }
            }
            _loc5_ = _loc5_.m_next;
         }
      }
      
      public function CleanContactList() : *
      {
         var _loc2_:b2Contact = null;
         var _loc1_:b2Contact = m_world.m_contactList;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_;
            _loc1_ = _loc1_.m_next;
            if(_loc2_.m_flags & b2Contact.e_destroyFlag)
            {
               DestroyContact(_loc2_);
               _loc2_ = null;
            }
         }
      }
      
      public function DestroyContact(param1:b2Contact) : *
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2ContactNode = null;
         var _loc5_:b2ContactNode = null;
         if(param1.m_prev)
         {
            param1.m_prev.m_next = param1.m_next;
         }
         if(param1.m_next)
         {
            param1.m_next.m_prev = param1.m_prev;
         }
         if(param1 == m_world.m_contactList)
         {
            m_world.m_contactList = param1.m_next;
         }
         if(param1.GetManifoldCount() > 0)
         {
            _loc2_ = param1.m_shape1.m_body;
            _loc3_ = param1.m_shape2.m_body;
            _loc4_ = param1.m_node1;
            _loc5_ = param1.m_node2;
            _loc2_.WakeUp();
            _loc3_.WakeUp();
            if(_loc4_.prev)
            {
               _loc4_.prev.next = _loc4_.next;
            }
            if(_loc4_.next)
            {
               _loc4_.next.prev = _loc4_.prev;
            }
            if(_loc4_ == _loc2_.m_contactList)
            {
               _loc2_.m_contactList = _loc4_.next;
            }
            _loc4_.prev = null;
            _loc4_.next = null;
            if(_loc5_.prev)
            {
               _loc5_.prev.next = _loc5_.next;
            }
            if(_loc5_.next)
            {
               _loc5_.next.prev = _loc5_.prev;
            }
            if(_loc5_ == _loc3_.m_contactList)
            {
               _loc3_.m_contactList = _loc5_.next;
            }
            _loc5_.prev = null;
            _loc5_.next = null;
         }
         b2Contact.Destroy(param1,m_world.m_blockAllocator);
         --m_world.m_contactCount;
      }
      
      override public function PairRemoved(param1:*, param2:*, param3:*) : *
      {
         if(param3 == null)
         {
            return;
         }
         var _loc4_:b2Contact = param3 as b2Contact;
         if(_loc4_ != m_nullContact)
         {
            if(m_destroyImmediate == true)
            {
               DestroyContact(_loc4_);
               _loc4_ = null;
            }
            else
            {
               _loc4_.m_flags |= b2Contact.e_destroyFlag;
            }
         }
      }
      
      override public function PairAdded(param1:*, param2:*) : *
      {
         var _loc8_:b2Shape = null;
         var _loc9_:b2Body = null;
         var _loc3_:b2Shape = param1 as b2Shape;
         var _loc4_:b2Shape = param2 as b2Shape;
         var _loc5_:b2Body = _loc3_.m_body;
         var _loc6_:b2Body = _loc4_.m_body;
         if(_loc5_.IsStatic() && _loc6_.IsStatic())
         {
            return m_nullContact;
         }
         if(_loc3_.m_body == _loc4_.m_body)
         {
            return m_nullContact;
         }
         if(_loc6_.m_invMass == 0)
         {
            _loc8_ = _loc3_;
            _loc3_ = _loc4_;
            _loc4_ = _loc8_;
            _loc9_ = _loc5_;
            _loc5_ = _loc6_;
            _loc6_ = _loc9_;
         }
         if(_loc6_.IsConnected(_loc5_))
         {
            return m_nullContact;
         }
         var _loc7_:b2Contact = b2Contact.Create(_loc3_,_loc4_,m_world.m_blockAllocator);
         if(_loc7_ == null)
         {
            return m_nullContact;
         }
         _loc7_.m_prev = null;
         _loc7_.m_next = m_world.m_contactList;
         if(m_world.m_contactList != null)
         {
            m_world.m_contactList.m_prev = _loc7_;
         }
         m_world.m_contactList = _loc7_;
         ++m_world.m_contactCount;
         return _loc7_;
      }
   }
}

