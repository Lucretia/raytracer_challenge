with Ada.Numerics.Generic_Elementary_Functions;

package Tuples is
   pragma Preelaborate;

   package Float_Elementary_Functions is new Ada.Numerics.Generic_Elementary_Functions (Float);
   use Float_Elementary_Functions;

   Epsilon : constant := 0.00001;

   function Equals (Left, Right : in Float) return Boolean is (if abs (Left - Right) < Epsilon then True else False);

   type Tuple_Index is (X, Y, Z, W);
   type Tuple is array (Tuple_Index) of Float;

   function "+" (Left, Right : in Tuple) return Tuple is
      (Tuple'(X => Left (X) + Right (X),
              Y => Left (Y) + Right (Y),
              Z => Left (Z) + Right (Z),
              W => Left (W) + Right (W)));

   function "-" (Right : in Tuple) return Tuple is
      (Tuple'(X => -Right (X),
              Y => -Right (Y),
              Z => -Right (Z),
              W => -Right (W)));

   function "*" (Left : in Tuple; Right : in Float) return Tuple is
      (Tuple'(X => Left (X) * Right,
              Y => Left (Y) * Right,
              Z => Left (Z) * Right,
              W => Left (W) * Right));

   function "/" (Left : in Tuple; Right : in Float) return Tuple is
      (Tuple'(X => Left (X) / Right,
              Y => Left (Y) / Right,
              Z => Left (Z) / Right,
              W => Left (W) / Right));

   function Is_Point (T : in Tuple) return Boolean is (T (W) = 1.0);
   function Is_Vector (T : in Tuple) return Boolean is (T (W) = 0.0);

   subtype Point is Tuple; --  TODO - Make this a type?

   function Make_Point (X1, Y1, Z1 : Float) return Point is (Point'(X => X1, Y => Y1, Z => Z1, W => 1.0));

   subtype Vector is Tuple; --  TODO - Make this a type?

   function Make_Vector (X1, Y1, Z1 : Float) return Vector is (Vector'(X => X1, Y => Y1, Z => Z1, W => 0.0));

   function "-" (Left, Right : in Point) return Vector is
      (Vector'(X => Left (X) - Right (X),
               Y => Left (Y) - Right (Y),
               Z => Left (Z) - Right (Z),
               W => Left (W) - Right (W)));

   --  TODO - Ada 2022: Add with Static.
   function Magnitude (V : in Vector) return Float is (Sqrt (V (X) ** 2 + V (Y) ** 2 + V (Z) ** 2 + V (W) ** 2));
   function Normalise (V : in Vector) return Vector;
   function Dot (V1, V2 : in Vector) return Float is
      (V1 (X) * V2 (X) +
       V1 (Y) * V2 (Y) +
       V1 (Z) * V2 (Z) +
       V1 (W) * V2 (W));
   function Cross (A, B : in Vector) return Vector is
      (Make_Vector (X1 => A (Y) * B (Z) - A (Z) * B (Y),
                    Y1 => A (Z) * B (X) - A (X) * B (Z),
                    Z1 => A (X) * B (Y) - A (Y) * B (X)));
end Tuples;
