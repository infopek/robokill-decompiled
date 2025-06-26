package Engine.Common.Math
{
   public class b2Math
   {
      public function b2Math()
      {
         super();
      }

      // Cross product of vector and scalar: v × s
      public static function b2CrossVF(v:b2Vec2, s:Number) : b2Vec2
      {
         return new b2Vec2(s * v.y, -s * v.x);
      }

      // Add two vectors
      public static function AddVV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         return new b2Vec2(a.x + b.x, a.y + b.y);
      }

      // Check if a number is valid (not NaN or Infinity)
      public static function b2IsValid(value:Number) : Boolean
      {
         return isFinite(value);
      }

      // Swap the first element of two single-element arrays
      public static function b2Swap(a:Array, b:Array) : void
      {
         var temp:* = a[0];
         a[0] = b[0];
         b[0] = temp;
      }

      // Absolute value of a number
      public static function b2Abs(value:Number) : Number
      {
         return value > 0 ? value : -value;
      }

      // Absolute value of matrix: applies abs() to each element
      public static function b2AbsM(mat:b2Mat22) : b2Mat22
      {
         return new b2Mat22(0, b2AbsV(mat.col1), b2AbsV(mat.col2));
      }

      // Subtract two vectors: a - b
      public static function SubtractVV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         return new b2Vec2(a.x - b.x, a.y - b.y);
      }

      // 2D cross product of two vectors (returns a scalar)
      public static function b2CrossVV(a:b2Vec2, b:b2Vec2) : Number
      {
         return a.x * b.y - a.y * b.x;
      }

      // Clamp a value between min and max
      public static function b2Clamp(value:Number, min:Number, max:Number) : Number
      {
         return b2Max(min, b2Min(value, max));
      }

      // Absolute value of a vector
      public static function b2AbsV(v:b2Vec2) : b2Vec2
      {
         return new b2Vec2(b2Abs(v.x), b2Abs(v.y));
      }

      // Component-wise minimum of two vectors
      public static function b2MinV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         return new b2Vec2(b2Min(a.x, b.x), b2Min(a.y, b.y));
      }

      // Dot product of two vectors
      public static function b2Dot(a:b2Vec2, b:b2Vec2) : Number
      {
         return a.x * b.x + a.y * b.y;
      }

      // Cross product of scalar and vector: s × v
      public static function b2CrossFV(s:Number, v:b2Vec2) : b2Vec2
      {
         return new b2Vec2(-s * v.y, s * v.x);
      }

      // Matrix addition
      public static function AddMM(a:b2Mat22, b:b2Mat22) : b2Mat22
      {
         return new b2Mat22(0, AddVV(a.col1, b.col1), AddVV(a.col2, b.col2));
      }

      // Transpose(M1) * M2
      public static function b2MulTMM(m1:b2Mat22, m2:b2Mat22) : b2Mat22
      {
         var col1:b2Vec2 = new b2Vec2(b2Dot(m1.col1, m2.col1), b2Dot(m1.col2, m2.col1));
         var col2:b2Vec2 = new b2Vec2(b2Dot(m1.col1, m2.col2), b2Dot(m1.col2, m2.col2));
         return new b2Mat22(0, col1, col2);
      }

      // Component-wise maximum of two vectors
      public static function b2MaxV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         return new b2Vec2(b2Max(a.x, b.x), b2Max(a.y, b.y));
      }

      // Check if an unsigned int is a power of two
      public static function b2IsPowerOfTwo(x:uint) : Boolean
      {
         return x > 0 && (x & (x - 1)) == 0;
      }

      // Clamp vector within min and max vectors
      public static function b2ClampV(v:b2Vec2, min:b2Vec2, max:b2Vec2) : b2Vec2
      {
         return b2MaxV(min, b2MinV(v, max));
      }

      // Multiply scalar and vector
      public static function MulFV(scalar:Number, v:b2Vec2) : b2Vec2
      {
         return new b2Vec2(scalar * v.x, scalar * v.y);
      }

      // Multiply transpose of matrix with vector: Transpose(M) * v
      public static function b2MulTMV(m:b2Mat22, v:b2Vec2) : b2Vec2
      {
         return new b2Vec2(b2Dot(v, m.col1), b2Dot(v, m.col2));
      }

      // Min of two numbers
      public static function b2Min(a:Number, b:Number) : Number
      {
         return a < b ? a : b;
      }

      // Random number between -1 and 1
      public static function b2Random() : Number
      {
         return Math.random() * 2 - 1;
      }

      // Matrix multiplication: M1 * M2
      public static function b2MulMM(m1:b2Mat22, m2:b2Mat22) : b2Mat22
      {
         return new b2Mat22(0, b2MulMV(m1, m2.col1), b2MulMV(m1, m2.col2));
      }

      // Next power of two for an unsigned int
      public static function b2NextPowerOfTwo(x:uint) : uint
      {
         x |= x >> 1 & 0x7FFFFFFF;
         x |= x >> 2 & 0x3FFFFFFF;
         x |= x >> 4 & 0x0FFFFFFF;
         x |= x >> 8 & 0xFFFFFF;
         x |= x >> 16 & 0xFFFF;
         return x + 1;
      }

      // Max of two numbers
      public static function b2Max(a:Number, b:Number) : Number
      {
         return a > b ? a : b;
      }

      // Multiply matrix with vector: M * v
      public static function b2MulMV(m:b2Mat22, v:b2Vec2) : b2Vec2
      {
         return new b2Vec2(
            m.col1.x * v.x + m.col2.x * v.y,
            m.col1.y * v.x + m.col2.y * v.y
         );
      }
   }
}
