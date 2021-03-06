package RTCH.Maths.Tuples with
  Pure is
   type Tuple is record
      X : Float;
      Y : Float;
      Z : Float;
      W : Float;
   end record;

   function "+" (Left, Right : in Tuple) return Tuple is
      (Tuple'(X => Left.X + Right.X,
              Y => Left.Y + Right.Y,
              Z => Left.Z + Right.Z,
              W => Left.W + Right.W));

   function "-" (Right : in Tuple) return Tuple is
      (Tuple'(X => -Right.X,
              Y => -Right.Y,
              Z => -Right.Z,
              W => -Right.W));

   function "*" (Left : in Tuple; Right : in Float) return Tuple is
      (Tuple'(X => Left.X * Right,
              Y => Left.Y * Right,
              Z => Left.Z * Right,
              W => Left.W * Right));

   function "/" (Left : in Tuple; Right : in Float) return Tuple is
      (Tuple'(X => Left.X / Right,
              Y => Left.Y / Right,
              Z => Left.Z / Right,
              W => Left.W / Right));

   function Is_Point (T : in Tuple) return Boolean is (T.W = 1.0);
   function Is_Vector (T : in Tuple) return Boolean is (T.W = 0.0);
end RTCH.Maths.Tuples;
