package Tuples is
   pragma Pure;

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

   --  TODO - Make these types?
   subtype Point is Tuple;
   subtype Vector is Tuple;

   function "-" (Left, Right : in Point) return Vector is
      (Vector'(X => Left (X) - Right (X),
               Y => Left (Y) - Right (Y),
               Z => Left (Z) - Right (Z),
               W => Left (W) - Right (W)));

   function Make_Point (X1, Y1, Z1 : Float) return Point is (Point'(X => X1, Y => Y1, Z => Z1, W => 1.0));
   function Make_Vector (X1, Y1, Z1 : Float) return Vector is (Vector'(X => X1, Y => Y1, Z => Z1, W => 0.0));
end Tuples;
