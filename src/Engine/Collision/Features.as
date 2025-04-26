package Engine.Collision
{
   public class Features
   {
      public var _referenceFace:int;
      
      public var _incidentEdge:int;
      
      public var _flip:int;
      
      public var _incidentVertex:int;
      
      public var _m_id:b2ContactID;
      
      public function Features()
      {
         super();
      }
      
      public function get referenceFace() : int
      {
         return _referenceFace;
      }
      
      public function set incidentVertex(param1:int) : *
      {
         _incidentVertex = param1;
         _m_id._key = _m_id._key & 4278255615 | _incidentVertex << 16 & 0xFF0000;
      }
      
      public function get flip() : int
      {
         return _flip;
      }
      
      public function get incidentEdge() : int
      {
         return _incidentEdge;
      }
      
      public function set referenceFace(param1:int) : *
      {
         _referenceFace = param1;
         _m_id._key = _m_id._key & 4294967040 | _referenceFace & 0xFF;
      }
      
      public function get incidentVertex() : int
      {
         return _incidentVertex;
      }
      
      public function set flip(param1:int) : *
      {
         _flip = param1;
         _m_id._key = _m_id._key & 0xFFFFFF | _flip << 24 & 4278190080;
      }
      
      public function set incidentEdge(param1:int) : *
      {
         _incidentEdge = param1;
         _m_id._key = _m_id._key & 4294902015 | _incidentEdge << 8 & 0xFF00;
      }
   }
}

