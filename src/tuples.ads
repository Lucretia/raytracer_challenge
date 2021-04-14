package Tuples is
   pragma Pure;

   type Tuple_Index is (X, Y, Z, W);
   type Tuple is array (Tuple_Index) of Float;

   function Is_Point (T : in Tuple) return Boolean is (T (W) = 1.0);
   function Is_Vector (T : in Tuple) return Boolean is (T (W) = 0.0);

   -- TODO - Make these types?
   subtype Point is Tuple;
   subtype Vector is Tuple;

   function Make_Point (X1, Y1, Z1 : Float) return Point is (Point'(X => X1, Y => Y1, Z => Z1, W => 1.0));
   function Make_Vector (X1, Y1, Z1 : Float) return Vector is (Vector'(X => X1, Y => Y1, Z => Z1, W => 0.0));
end Tuples;
