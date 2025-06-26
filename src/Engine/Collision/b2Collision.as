package Engine.Collision
{
   import Engine.Collision.Shapes.*;
   import Engine.Common.*;
   import Engine.Common.Math.*;
   
   public class b2Collision
   {
      public static const b2_nullFeature:uint = 255;
      
      public static var v1:b2Vec2 = new b2Vec2();
      
      public static var v2:b2Vec2 = new b2Vec2();
      
      public static var d:b2Vec2 = new b2Vec2();
      
      public static var dLocal1:b2Vec2 = new b2Vec2();
      
      private static var b2CollidePolyTempVec:b2Vec2 = new b2Vec2();
      
      public function b2Collision()
      {
         super();
      }
      
      public static function EdgeSeparation(param1:b2PolyShape, param2:int, param3:b2PolyShape) : Number
      {
         var var5:Array = null;
         var var8:int = 0;
         var var14:Number = NaN;
         var var23:b2Vec2 = null;
         var var24:Number = NaN;
         var var4:int = param1.m_vertexCount;
         var5 = param1.m_vertices;
         var var6:int = param3.m_vertexCount;
         var var7:Array = param3.m_vertices;
         var8 = param2;
         var var9:int = param2 + 1 == var4 ? 0 : param2 + 1;
         var var10:Number = var5[var9].x - var5[var8].x;
         var var11:Number = var5[var9].y - var5[var8].y;
         var var12:Number = var10;
         var10 = var11;
         var11 = -var12;
         var var13:Number = 1 / Math.sqrt(var10 * var10 + var11 * var11);
         var10 *= var13;
         var11 *= var13;
         var14 = var10;
         var var15:Number = var11;
         var12 = var14;
         var var16:b2Mat22 = param1.m_R;
         var14 = var16.col1.x * var12 + var16.col2.x * var15;
         var15 = var16.col1.y * var12 + var16.col2.y * var15;
         var var17:Number = var14;
         var var18:Number = var15;
         var16 = param3.m_R;
         var12 = var17 * var16.col1.x + var18 * var16.col1.y;
         var18 = var17 * var16.col2.x + var18 * var16.col2.y;
         var17 = var12;
         var var19:int = 0;
         var var20:Number = Number.MAX_VALUE;
         var var21:int = 0;
         while(var21 < var6)
         {
            var23 = var7[var21];
            var24 = var23.x * var17 + var23.y * var18;
            if(var24 < var20)
            {
               var20 = var24;
               var19 = var21;
            }
            var21++;
         }
         v1.x = 0;
         v1.y = 0;
         v1.SetV(var5[var8]);
         v1.MulM(param1.m_R);
         v1.Add(param1.m_position);
         v2.x = 0;
         v2.y = 0;
         v2.SetV(var7[var19]);
         v2.MulM(param3.m_R);
         v2.Add(param3.m_position);
         v2.Subtract(v1);
         return v2.x * var14 + v2.y * var15;
      }
      
      public static function b2TestOverlap(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var var3:b2Vec2 = param2.lowerCorner;
         var var4:b2Vec2 = param1.upperCorner;
         var var5:Number = var3.x - var4.x;
         var var6:Number = var3.y - var4.y;
         var3 = param1.lowerCorner;
         var4 = param2.upperCorner;
         var var7:Number = var3.x - var4.x;
         var var8:Number = var3.y - var4.y;
         if(var5 > 0 || var6 > 0)
         {
            return false;
         }
         if(var7 > 0 || var8 > 0)
         {
            return false;
         }
         return true;
      }
      
      public static function b2CollidePolyAndCircle(param1:b2Manifold, param2:b2PolyShape, param3:b2CircleShape) : *
      {
         var var4:b2ContactPoint = null;
         var var5:Number = NaN;
         var var6:Number = NaN;
         var var11:Number = NaN;
         var var22:Number = NaN;
         var var23:Number = NaN;
         var var24:Number = NaN;
         var var25:b2Vec2 = null;
         param1.pointCount = 0;
         var var7:Number = param3.m_position.x - param2.m_position.x;
         var var8:Number = param3.m_position.y - param2.m_position.y;
         var var9:b2Mat22 = param2.m_R;
         var var10:Number = var7 * var9.col1.x + var8 * var9.col1.y;
         var8 = var7 * var9.col2.x + var8 * var9.col2.y;
         var7 = var10;
         var var12:int = 0;
         var var13:Number = -Number.MAX_VALUE;
         var var14:Number = param3.m_radius;
         var var15:int = 0;
         while(var15 < param2.m_vertexCount)
         {
            var24 = param2.m_normals[var15].x * (var7 - param2.m_vertices[var15].x) + param2.m_normals[var15].y * (var8 - param2.m_vertices[var15].y);
            if(var24 > var14)
            {
               return;
            }
            if(var24 > var13)
            {
               var13 = var24;
               var12 = var15;
            }
            var15++;
         }
         if(var13 < Number.MIN_VALUE)
         {
            param1.pointCount = 1;
            var25 = param2.m_normals[var12];
            param1.normal.x = var9.col1.x * var25.x + var9.col2.x * var25.y;
            param1.normal.y = var9.col1.y * var25.x + var9.col2.y * var25.y;
            var4 = param1.points[0];
            var4.id.features.incidentEdge = var12;
            var4.id.features.incidentVertex = b2_nullFeature;
            var4.id.features.referenceFace = b2_nullFeature;
            var4.id.features.flip = 0;
            var4.position.x = param3.m_position.x - var14 * param1.normal.x;
            var4.position.y = param3.m_position.y - var14 * param1.normal.y;
            var4.separation = var13 - var14;
            return;
         }
         var var16:int = var12;
         var var17:int = int(param2.m_nextVert[var16]);
         var var18:Number = param2.m_vertices[var17].x - param2.m_vertices[var16].x;
         var var19:Number = param2.m_vertices[var17].y - param2.m_vertices[var16].y;
         var var20:Number = Math.sqrt(var18 * var18 + var19 * var19);
         var18 /= var20;
         var19 /= var20;
         if(var20 < Number.MIN_VALUE)
         {
            var5 = var7 - param2.m_vertices[var16].x;
            var6 = var8 - param2.m_vertices[var16].y;
            var11 = Math.sqrt(var5 * var5 + var6 * var6);
            var5 /= var11;
            var6 /= var11;
            if(var11 > var14)
            {
               return;
            }
            param1.pointCount = 1;
            param1.normal.Set(var9.col1.x * var5 + var9.col2.x * var6,var9.col1.y * var5 + var9.col2.y * var6);
            var4 = param1.points[0];
            var4.id.features.incidentEdge = b2_nullFeature;
            var4.id.features.incidentVertex = var16;
            var4.id.features.referenceFace = b2_nullFeature;
            var4.id.features.flip = 0;
            var4.position.x = param3.m_position.x - var14 * param1.normal.x;
            var4.position.y = param3.m_position.y - var14 * param1.normal.y;
            var4.separation = var11 - var14;
            return;
         }
         var var21:Number = (var7 - param2.m_vertices[var16].x) * var18 + (var8 - param2.m_vertices[var16].y) * var19;
         var4 = param1.points[0];
         var4.id.features.incidentEdge = b2_nullFeature;
         var4.id.features.incidentVertex = b2_nullFeature;
         var4.id.features.referenceFace = b2_nullFeature;
         var4.id.features.flip = 0;
         if(var21 <= 0)
         {
            var22 = Number(param2.m_vertices[var16].x);
            var23 = Number(param2.m_vertices[var16].y);
            var4.id.features.incidentVertex = var16;
         }
         else if(var21 >= var20)
         {
            var22 = Number(param2.m_vertices[var17].x);
            var23 = Number(param2.m_vertices[var17].y);
            var4.id.features.incidentVertex = var17;
         }
         else
         {
            var22 = var18 * var21 + param2.m_vertices[var16].x;
            var23 = var19 * var21 + param2.m_vertices[var16].y;
            var4.id.features.incidentEdge = var16;
         }
         var5 = var7 - var22;
         var6 = var8 - var23;
         var11 = Math.sqrt(var5 * var5 + var6 * var6);
         var5 /= var11;
         var6 /= var11;
         if(var11 > var14)
         {
            return;
         }
         param1.pointCount = 1;
         param1.normal.Set(var9.col1.x * var5 + var9.col2.x * var6,var9.col1.y * var5 + var9.col2.y * var6);
         var4.position.x = param3.m_position.x - var14 * param1.normal.x;
         var4.position.y = param3.m_position.y - var14 * param1.normal.y;
         var4.separation = var11 - var14;
      }
      
      public static function FindIncidentEdge(param1:Array, param2:b2PolyShape, param3:int, param4:b2PolyShape) : *
      {
         var var21:int = 0;
         var var22:int = 0;
         var var25:ClipVertex = null;
         var var26:int = 0;
         var var27:int = 0;
         var var28:Number = NaN;
         var var29:Number = NaN;
         var var30:Number = NaN;
         var var5:int = param2.m_vertexCount;
         var var6:Array = param2.m_vertices;
         var var7:int = param4.m_vertexCount;
         var var8:Array = param4.m_vertices;
         var var9:int = param3;
         var var10:int = param3 + 1 == var5 ? 0 : param3 + 1;
         var var11:b2Vec2 = var6[var10];
         var var12:Number = var11.x;
         var var13:Number = var11.y;
         var11 = var6[var9];
         var12 -= var11.x;
         var13 -= var11.y;
         var var14:Number = var12;
         var12 = var13;
         var13 = -var14;
         var var15:Number = 1 / Math.sqrt(var12 * var12 + var13 * var13);
         var12 *= var15;
         var13 *= var15;
         var var16:Number = var12;
         var var17:Number = var13;
         var14 = var16;
         var var18:b2Mat22 = param2.m_R;
         var16 = var18.col1.x * var14 + var18.col2.x * var17;
         var17 = var18.col1.y * var14 + var18.col2.y * var17;
         var var19:Number = var16;
         var var20:Number = var17;
         var18 = param4.m_R;
         var14 = var19 * var18.col1.x + var20 * var18.col1.y;
         var20 = var19 * var18.col2.x + var20 * var18.col2.y;
         var19 = var14;
         var var23:Number = Number.MAX_VALUE;
         var var24:int = 0;
         while(var24 < var7)
         {
            var26 = var24;
            var27 = var24 + 1 < var7 ? var24 + 1 : 0;
            var11 = var8[var27];
            var28 = var11.x;
            var29 = var11.y;
            var11 = var8[var26];
            var28 -= var11.x;
            var29 -= var11.y;
            var14 = var28;
            var28 = var29;
            var29 = -var14;
            var15 = 1 / Math.sqrt(var28 * var28 + var29 * var29);
            var28 *= var15;
            var29 *= var15;
            var30 = var28 * var19 + var29 * var20;
            if(var30 < var23)
            {
               var23 = var30;
               var21 = var26;
               var22 = var27;
            }
            var24++;
         }
         var25 = param1[0];
         var11 = var25.v;
         var11.SetV(var8[var21]);
         var11.MulM(param4.m_R);
         var11.Add(param4.m_position);
         var25.id.features.referenceFace = param3;
         var25.id.features.incidentEdge = var21;
         var25.id.features.incidentVertex = var21;
         var25 = param1[1];
         var11 = var25.v;
         var11.SetV(var8[var22]);
         var11.MulM(param4.m_R);
         var11.Add(param4.m_position);
         var25.id.features.referenceFace = param3;
         var25.id.features.incidentEdge = var21;
         var25.id.features.incidentVertex = var22;
      }
      
      public static function FindMaxSeparation(param1:Array, param2:b2PolyShape, param3:b2PolyShape) : Number
      {
         var var13:int = 0;
         var var14:Number = NaN;
         var var15:int = 0;
         var var16:Number = NaN;
         var var17:int = 0;
         var var18:Number = NaN;
         var var4:int = param2.m_vertexCount;
         var var5:Array = param2.m_vertices;
         d.x = 0;
         d.y = 0;
         d.SetV(param3.m_position);
         d.Subtract(param2.m_position);
         dLocal1.x = 0;
         dLocal1.y = 0;
         dLocal1.SetV(d);
         dLocal1.MulTM(param2.m_R);
         var var6:int = 0;
         var var7:Number = -Number.MAX_VALUE;
         var var8:int = 0;
         while(var8 < var4)
         {
            var16 = b2Math.b2Dot(var5[var8],dLocal1);
            if(var16 > var7)
            {
               var7 = var16;
               var6 = var8;
            }
            var8++;
         }
         var var9:int = var6 - 1 >= 0 ? var6 - 1 : var4 - 1;
         var var10:Number = EdgeSeparation(param2,var9,param3);
         if(var10 > 0)
         {
            return var10;
         }
         var var11:int = var6;
         var var12:Number = EdgeSeparation(param2,var11,param3);
         if(var12 > 0)
         {
            return var12;
         }
         if(var10 > var12)
         {
            var15 = -1;
            var13 = var9;
            var14 = var10;
         }
         else
         {
            var15 = 1;
            var13 = var11;
            var14 = var12;
         }
         while(true)
         {
            if(var15 == -1)
            {
               var17 = var13 - 1 >= 0 ? var13 - 1 : var4 - 1;
            }
            else
            {
               var17 = var13 + 1 < var4 ? var13 + 1 : 0;
            }
            var18 = EdgeSeparation(param2,var17,param3);
            if(var18 > 0)
            {
               break;
            }
            if(var18 <= var14)
            {
               param1[0] = var13;
               return var14;
            }
            var13 = var17;
            var14 = var18;
         }
         return var18;
      }
      
      public static function ClipSegmentToLine(param1:Array, param2:Array, param3:b2Vec2, param4:Number) : int
      {
         var var7:b2Vec2 = null;
         var var8:Number = NaN;
         var var10:Number = NaN;
         var var11:b2Vec2 = null;
         var var5:int = 0;
         var var6:b2Vec2 = param2[0].v;
         var7 = param2[1].v;
         var8 = b2Math.b2Dot(param3,param2[0].v) - param4;
         var var9:Number = b2Math.b2Dot(param3,param2[1].v) - param4;
         if(var8 <= 0)
         {
            var var12:*;
            param1[var12 = var5++] = param2[0];
         }
         if(var9 <= 0)
         {
            param1[var12 = var5++] = param2[1];
         }
         if(var8 * var9 < 0)
         {
            var10 = var8 / (var8 - var9);
            var11 = param1[var5].v;
            var11.x = var6.x + var10 * (var7.x - var6.x);
            var11.y = var6.y + var10 * (var7.y - var6.y);
            if(var8 > 0)
            {
               param1[var5].id = param2[0].id;
            }
            else
            {
               param1[var5].id = param2[1].id;
            }
            var5++;
         }
         return var5;
      }
      
      public static function b2CollidePoly(param1:b2Manifold, param2:b2PolyShape, param3:b2PolyShape) : *
      {
         var var10:b2PolyShape = null;
         var var11:b2PolyShape = null;
         var var12:int = 0;
         var var13:int = 0;
         var var39:int = 0;
         var var42:b2Vec2 = null;
         var var43:Number = NaN;
         var var44:b2ContactPoint = null;
         param1.pointCount = 0;
         var var4:int = 0;
         var var5:Array = [var4];
         var var6:Number = FindMaxSeparation(var5,param2,param3);
         var4 = int(var5[0]);
         if(var6 > 0)
         {
            return;
         }
         var var7:int = 0;
         var var8:Array = [var7];
         var var9:Number = FindMaxSeparation(var8,param3,param2);
         var7 = int(var8[0]);
         if(var9 > 0)
         {
            return;
         }
         var var14:Number = 0.98;
         var var15:Number = 0.001;
         if(var9 > var14 * var6 + var15)
         {
            var10 = param3;
            var11 = param2;
            var12 = var7;
            var13 = 1;
         }
         else
         {
            var10 = param2;
            var11 = param3;
            var12 = var4;
            var13 = 0;
         }
         var var16:Array = [new ClipVertex(),new ClipVertex()];
         FindIncidentEdge(var16,var10,var12,var11);
         var var17:int = var10.m_vertexCount;
         var var18:Array = var10.m_vertices;
         var var19:b2Vec2 = var18[var12];
         var var20:b2Vec2 = var12 + 1 < var17 ? var18[var12 + 1] : var18[0];
         var var21:Number = var20.x - var19.x;
         var var22:Number = var20.y - var19.y;
         var var23:Number = var20.x - var19.x;
         var var24:Number = var20.y - var19.y;
         var var25:Number = var23;
         var var26:b2Mat22 = var10.m_R;
         var23 = var26.col1.x * var25 + var26.col2.x * var24;
         var24 = var26.col1.y * var25 + var26.col2.y * var24;
         var var27:Number = 1 / Math.sqrt(var23 * var23 + var24 * var24);
         var23 *= var27;
         var24 *= var27;
         var var28:Number = var23;
         var var29:Number = var24;
         var25 = var28;
         var28 = var29;
         var29 = -var25;
         var var30:Number = var19.x;
         var var31:Number = var19.y;
         var25 = var30;
         var26 = var10.m_R;
         var30 = var26.col1.x * var25 + var26.col2.x * var31;
         var31 = var26.col1.y * var25 + var26.col2.y * var31;
         var30 += var10.m_position.x;
         var31 += var10.m_position.y;
         var var32:Number = var20.x;
         var var33:Number = var20.y;
         var25 = var32;
         var26 = var10.m_R;
         var32 = var26.col1.x * var25 + var26.col2.x * var33;
         var33 = var26.col1.y * var25 + var26.col2.y * var33;
         var32 += var10.m_position.x;
         var33 += var10.m_position.y;
         var var34:Number = var28 * var30 + var29 * var31;
         var var35:Number = -(var23 * var30 + var24 * var31);
         var var36:Number = var23 * var32 + var24 * var33;
         var var37:Array = [new ClipVertex(),new ClipVertex()];
         var var38:Array = [new ClipVertex(),new ClipVertex()];
         b2CollidePolyTempVec.Set(-var23,-var24);
         var39 = ClipSegmentToLine(var37,var16,b2CollidePolyTempVec,var35);
         if(var39 < 2)
         {
            return;
         }
         b2CollidePolyTempVec.Set(var23,var24);
         var39 = ClipSegmentToLine(var38,var37,b2CollidePolyTempVec,var36);
         if(var39 < 2)
         {
            return;
         }
         if(var13)
         {
            param1.normal.Set(-var28,-var29);
         }
         else
         {
            param1.normal.Set(var28,var29);
         }
         var var40:int = 0;
         var var41:int = 0;
         while(var41 < b2Settings.b2_maxManifoldPoints)
         {
            var42 = var38[var41].v;
            var43 = var28 * var42.x + var29 * var42.y - var34;
            if(var43 <= 0)
            {
               var44 = param1.points[var40];
               var44.separation = var43;
               var44.position.SetV(var38[var41].v);
               var44.id.Set(var38[var41].id);
               var44.id.features.flip = var13;
               var40++;
            }
            var41++;
         }
         param1.pointCount = var40;
      }
      
      public static function b2CollideCircle(param1:b2Manifold, param2:b2CircleShape, param3:b2CircleShape) : *
      {
         var var8:Number = NaN;
         var var10:Number = NaN;
         var var11:Number = NaN;
         param1.pointCount = 0;
         var var4:Number = param3.m_position.x - param2.m_position.x;
         var var5:Number = param3.m_position.y - param2.m_position.y;
         var var6:Number = var4 * var4 + var5 * var5;
         var var7:Number = param2.m_radius + param3.m_radius;
         if(var6 > var7 * var7)
         {
            return;
         }
         if(var6 < Number.MIN_VALUE)
         {
            var8 = -var7;
            param1.normal.Set(0,1);
         }
         else
         {
            var10 = Math.sqrt(var6);
            var8 = var10 - var7;
            var11 = 1 / var10;
            param1.normal.x = var11 * var4;
            param1.normal.y = var11 * var5;
         }
         param1.pointCount = 1;
         var var9:b2ContactPoint = param1.points[0];
         var9.id.key = 0;
         var9.separation = var8;
         var9.position.x = param3.m_position.x - param3.m_radius * param1.normal.x;
         var9.position.y = param3.m_position.y - param3.m_radius * param1.normal.y;
      }
   }
}

