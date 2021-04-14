package Tuples.Steps is
   -- @given ^a ← tuple\(([-+]?\d+\.\d+), ([-+]?\d+\.\d+), ([-+]?\d+\.\d+), ([-+]?\d+\.\d+)\)$
   procedure Given_Tuple_A (X, Y, Z, W : Float);

   -- @then ^a.x = ([-+]?\d+\.\d+)$
   procedure Then_A_X_Is (Expected : Float);

   -- @and ^a.y = ([-+]?\d+\.\d+)$
   procedure And_A_Y_Is (Expected : Float);

   -- @and ^a.z = ([-+]?\d+\.\d+)$
   procedure And_A_Z_Is (Expected : Float);

   -- @and ^a.w = ([-+]?\d+\.\d+)$
   procedure And_A_W_Is (Expected : Float);

   -- @and ^a is a point$
   procedure A_Is_A_Point;

   -- @and ^a is not a vector$
   procedure A_Is_Not_A_Vector;

   -- @and ^a is not a point$
   procedure A_Is_Not_A_Point;

   -- @and ^a is a vector$
   procedure A_Is_A_Vector;
private
   A : Tuple;
end Tuples.Steps;
