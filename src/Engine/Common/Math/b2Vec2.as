package Engine.Common.Math
{
   public class b2Vec2
   {
      public var x:Number;
      public var y:Number;

      // Constructor: initializes vector with optional x and y values
      public function b2Vec2(xVal:Number = 0, yVal:Number = 0)
      {
         super();
         x = xVal;
         y = yVal;
      }

      // Static factory method for creating a new vector
      public static function Make(xVal:Number, yVal:Number) : b2Vec2
      {
         return new b2Vec2(xVal, yVal);
      }

      // Adds another vector to this one
      public function Add(other:b2Vec2) : void
      {
         x += other.x;
         y += other.y;
      }

      // Sets this vector to the given x and y values
      public function Set(xVal:Number = 0, yVal:Number = 0) : void
      {
         x = xVal;
         y = yVal;
      }

      // Multiplies this vector by a scalar
      public function Multiply(scalar:Number) : void
      {
         x *= scalar;
         y *= scalar;
      }

      // Returns the magnitude (length) of the vector
      public function Length() : Number
      {
         return Math.sqrt(x * x + y * y);
      }

      // Applies a 2x2 matrix transformation to this vector
      public function MulM(matrix:b2Mat22) : void
      {
         var tempX:Number = x;
         x = matrix.col1.x * tempX + matrix.col2.x * y;
         y = matrix.col1.y * tempX + matrix.col2.y * y;
      }

      // Sets the vector to (0, 0)
      public function SetZero() : void
      {
         x = 0;
         y = 0;
      }

      // Sets this vector to the component-wise minimum of itself and another vector
      public function MinV(other:b2Vec2) : void
      {
         x = x < other.x ? x : other.x;
         y = y < other.y ? y : other.y;
      }

      // Normalizes the vector and returns its original length
      public function Normalize() : Number
      {
         var len:Number = Length();
         if (len < Number.MIN_VALUE)
         {
            return 0;
         }
         var invLen:Number = 1 / len;
         x *= invLen;
         y *= invLen;
         return len;
      }

      // Rotates this vector by the cross product with a scalar (v × s)
      public function CrossVF(scalar:Number) : void
      {
         var tempX:Number = x;
         x = scalar * y;
         y = -scalar * tempX;
      }

      // Sets this vector to the component-wise maximum of itself and another vector
      public function MaxV(other:b2Vec2) : void
      {
         x = x > other.x ? x : other.x;
         y = y > other.y ? y : other.y;
      }

      // Copies the values of another vector into this one
      public function SetV(source:b2Vec2) : void
      {
         x = source.x;
         y = source.y;
      }

      // Returns a new vector that is the negation of this one
      public function Negative() : b2Vec2
      {
         return new b2Vec2(-x, -y);
      }

      // Rotates this vector by the cross product with a scalar (s × v)
      public function CrossFV(scalar:Number) : void
      {
         var tempX:Number = x;
         x = -scalar * y;
         y = scalar * tempX;
      }

      // Sets this vector to the absolute value of each component
      public function Abs() : void
      {
         x = Math.abs(x);
         y = Math.abs(y);
      }

      // Subtracts another vector from this one
      public function Subtract(other:b2Vec2) : void
      {
         x -= other.x;
         y -= other.y;
      }

      // Creates and returns a copy of this vector
      public function Copy() : b2Vec2
      {
         return new b2Vec2(x, y);
      }

      // Applies the transpose of a 2x2 matrix to this vector
      public function MulTM(matrix:b2Mat22) : void
      {
         var tempX:Number = b2Math.b2Dot(this, matrix.col1);
         y = b2Math.b2Dot(this, matrix.col2);
         x = tempX;
      }

      // Checks if both components are valid finite numbers
      public function IsValid() : Boolean
      {
         return b2Math.b2IsValid(x) && b2Math.b2IsValid(y);
      }
   }
}
