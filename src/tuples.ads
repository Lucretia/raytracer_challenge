package Tuples is
   pragma Pure;

   type Tuple_Index is (X, Y, Z, W);
   type Tuple is array (Tuple_Index) of Float;

   function Is_Point (T : in Tuple) return Boolean is (T (W) = 1.0);
   function Is_Vector (T : in Tuple) return Boolean is (T (W) = 0.0);
end Tuples;
