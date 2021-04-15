package RTCH.Maths.Tuples with
  Pure is
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
end RTCH.Maths.Tuples;
