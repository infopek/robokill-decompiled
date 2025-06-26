package Engine.Collision {
    import Engine.Common.Math.b2Vec2;

    public class b2AABB {
        
        public var lowerCorner:b2Vec2 = new b2Vec2();  // Previously: minVertex
        public var upperCorner:b2Vec2 = new b2Vec2();  // Previously: maxVertex

        public function b2AABB() {
            super();
        }

        public function IsValid():Boolean {
            var width:Number = upperCorner.x - lowerCorner.x;
            var height:Number = upperCorner.y - lowerCorner.y;

            var hasPositiveArea:Boolean = width >= 0 && height >= 0;
            return hasPositiveArea && lowerCorner.IsValid() && upperCorner.IsValid();
        }
    }
}
