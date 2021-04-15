with RTCH.Maths.Tuples;
with RTCH.Maths.Points;

package RTCH.Maths.Vectors with
  Preelaborate is

   subtype Vector is Tuples.Tuple; --  TODO - Make this a type?

   function Make_Vector (X, Y, Z : Float) return Vector is
     (Vector'(X => X,
              Y => Y,
              Z => Z,
              W => 0.0));

   function "-" (Left, Right : in Points.Point) return Vector is
      (Vector'(X => Left.X - Right.X,
               Y => Left.Y - Right.Y,
               Z => Left.Z - Right.Z,
               W => Left.W - Right.W));

   --  TODO - Ada 2022: Add with Static.
   function Magnitude (V : in Vector) return Float is
     (Sqrt (V.X ** 2 +
            V.Y ** 2 +
            V.Z ** 2 +
            V.W ** 2));

   function Normalise (V : in Vector) return Vector;
   function Dot (V1, V2 : in Vector) return Float is
      (V1.X * V2.X +
       V1.Y * V2.Y +
       V1.Z * V2.Z +
       V1.W * V2.W);
   function Cross (A, B : in Vector) return Vector is
      (Make_Vector (X => A.Y * B.Z - A.Z * B.Y,
                    Y => A.Z * B.X - A.X * B.Z,
                    Z => A.X * B.Y - A.Y * B.X));
end RTCH.Maths.Vectors;

