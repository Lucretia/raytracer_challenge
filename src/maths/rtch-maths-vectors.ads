with RTCH.Maths.Tuples;

package RTCH.Maths.Vectors with
  Preelaborate is

   subtype Vector is Tuples.Tuple; --  TODO - Make this a type?

   function Make_Vector (X, Y, Z : Float) return Vector is
     (Vector'(Tuples.X => X,
              Tuples.Y => Y,
              Tuples.Z => Z,
              Tuples.W => 0.0));

   function "-" (Left, Right : in Tuples.Point) return Vector is
      (Vector'(Tuples.X => Left (Tuples.X) - Right (Tuples.X),
               Tuples.Y => Left (Tuples.Y) - Right (Tuples.Y),
               Tuples.Z => Left (Tuples.Z) - Right (Tuples.Z),
               Tuples.W => Left (Tuples.W) - Right (Tuples.W)));

   --  TODO - Ada 2022: Add with Static.
   function Magnitude (V : in Vector) return Float is
     (Sqrt (V (Tuples.X) ** 2 +
            V (Tuples.Y) ** 2 +
            V (Tuples.Z) ** 2 +
            V (Tuples.W) ** 2));

   function Normalise (V : in Vector) return Vector;
   function Dot (V1, V2 : in Vector) return Float is
      (V1 (Tuples.X) * V2 (Tuples.X) +
       V1 (Tuples.Y) * V2 (Tuples.Y) +
       V1 (Tuples.Z) * V2 (Tuples.Z) +
       V1 (Tuples.W) * V2 (Tuples.W));
   function Cross (A, B : in Vector) return Vector is
      (Make_Vector (X => A (Tuples.Y) * B (Tuples.Z) - A (Tuples.Z) * B (Tuples.Y),
                    Y => A (Tuples.Z) * B (Tuples.X) - A (Tuples.X) * B (Tuples.Z),
                    Z => A (Tuples.X) * B (Tuples.Y) - A (Tuples.Y) * B (Tuples.X)));
end RTCH.Maths.Vectors;

