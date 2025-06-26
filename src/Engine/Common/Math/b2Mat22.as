package Engine.Common.Math
{
   public class b2Mat22
   {
      public var col1:b2Vec2;
      public var col2:b2Vec2;

      public function b2Mat22(angleRadians:Number = 0, column1:b2Vec2 = null, column2:b2Vec2 = null)
      {
         col1 = new b2Vec2();
         col2 = new b2Vec2();
         super();

         if (column1 != null && column2 != null)
         {
            col1.SetV(column1);
            col2.SetV(column2);
         }
         else
         {
            var cos:Number = Math.cos(angleRadians);
            var sin:Number = Math.sin(angleRadians);
            col1.x = cos;
            col2.x = -sin;
            col1.y = sin;
            col2.y = cos;
         }
      }

      public function SetIdentity() : void
      {
         col1.x = 1; col2.x = 0;
         col1.y = 0; col2.y = 1;
      }

      public function SetVV(c1:b2Vec2, c2:b2Vec2) : void
      {
         col1.SetV(c1);
         col2.SetV(c2);
      }

      public function Set(angleRadians:Number) : void
      {
         var cos:Number = Math.cos(angleRadians);
         var sin:Number = Math.sin(angleRadians);
         col1.x = cos;
         col2.x = -sin;
         col1.y = sin;
         col2.y = cos;
      }

      public function SetZero() : void
      {
         col1.x = 0; col2.x = 0;
         col1.y = 0; col2.y = 0;
      }

      public function SetM(matrix:b2Mat22) : void
      {
         col1.SetV(matrix.col1);
         col2.SetV(matrix.col2);
      }

      public function AddM(matrix:b2Mat22) : void
      {
         col1.x += matrix.col1.x;
         col1.y += matrix.col1.y;
         col2.x += matrix.col2.x;
         col2.y += matrix.col2.y;
      }

      public function Abs() : void
      {
         col1.Abs();
         col2.Abs();
      }

      public function Copy() : b2Mat22
      {
         return new b2Mat22(0, col1, col2);
      }

      public function Invert(out:b2Mat22) : b2Mat22
      {
         var a:Number = col1.x;
         var b:Number = col2.x;
         var c:Number = col1.y;
         var d:Number = col2.y;
         var det:Number = a * d - b * c;

         det = 1 / det;

         out.col1.x =  det * d;
         out.col2.x = -det * b;
         out.col1.y = -det * c;
         out.col2.y =  det * a;
         return out;
      }

      public function Solve(out:b2Vec2, bX:Number, bY:Number) : b2Vec2
      {
         var a:Number = col1.x;
         var b:Number = col2.x;
         var c:Number = col1.y;
         var d:Number = col2.y;
         var det:Number = a * d - b * c;

         det = 1 / det;

         out.x = det * (d * bX - b * bY);
         out.y = det * (a * bY - c * bX);
         return out;
      }
   }
}
