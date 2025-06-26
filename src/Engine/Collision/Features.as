package Engine.Collision
{
   public class Features
   {
      // These are the individual feature identifiers:
      // Each is an 8-bit integer (0–255), packed into one 32-bit integer (_key)
      public var _referenceFace:int;       // bit 0–7
      public var _incidentEdge:int;        // bit 8–15
      public var _flip:int;                // bit 24–31
      public var _incidentVertex:int;      // bit 16–23

      // The actual ID object that stores the packed 32-bit key
      public var _m_id:b2ContactID;

      public function Features()
      {
         super();
      }

      // ---- GETTERS ----

      public function get referenceFace() : int
      {
         return _referenceFace;
      }

      public function get flip() : int
      {
         return _flip;
      }

      public function get incidentEdge() : int
      {
         return _incidentEdge;
      }

      public function get incidentVertex() : int
      {
         return _incidentVertex;
      }

      // ---- SETTERS with bit-packing logic ----

      public function set referenceFace(param1:int) : *
      {
         _referenceFace = param1;
         // Clear bits 0–7, then OR with new value
         _m_id._key = _m_id._key & 0xFFFFFF00 | (_referenceFace & 0xFF);
      }

      public function set incidentEdge(param1:int) : *
      {
         _incidentEdge = param1;
         // Clear bits 8–15, then OR with new value shifted left by 8 bits
         _m_id._key = _m_id._key & 0xFFFF00FF | ((_incidentEdge << 8) & 0xFF00);
      }

      public function set incidentVertex(param1:int) : *
      {
         _incidentVertex = param1;
         // Clear bits 16–23, then OR with new value shifted left by 16 bits
         _m_id._key = _m_id._key & 0xFF00FFFF | ((_incidentVertex << 16) & 0xFF0000);
      }

      public function set flip(param1:int) : *
      {
         _flip = param1;
         // Clear bits 24–31, then OR with new value shifted left by 24 bits
         _m_id._key = _m_id._key & 0x00FFFFFF | ((_flip << 24) & 0xFF000000);
      }
   }
}
