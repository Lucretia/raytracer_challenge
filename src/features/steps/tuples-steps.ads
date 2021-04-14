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
   procedure And_A_Is_A_Point;

   -- @and ^a is not a vector$
   procedure And_A_Is_Not_A_Vector;

   -- @and ^a is not a point$
   procedure And_A_Is_Not_A_Point;

   -- @and ^a is a vector$
   procedure And_A_Is_A_Vector;

   -- @given ^p ← point\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Given_Point_P (X, Y, Z : Float);

   -- @then ^p = tuple\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Then_P_Is_A_Tuple (X, Y, Z, W : Float);

   -- @given ^v ← vector\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Given_Vector_V (X, Y, Z : Float);

   -- @then ^v = tuple\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Then_V_Is_A_Tuple (X, Y, Z, W : Float);

   -- @given ^a1 ← tuple\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Given_Tuple_A1 (X, Y, Z, W : Float);

   -- @given ^a2 ← tuple\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Given_Tuple_A2 (X, Y, Z, W : Float);

   -- @then ^a1 \+ a2 = tuple\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Then_A1_Plus_A2_Is (X, Y, Z, W : Float);

   -- @given ^p1 ← point\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Given_Point_P1 (X, Y, Z : Float);

   -- @and ^p2 ← point\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure And_Given_Point_P2 (X, Y, Z : Float);

   -- @then ^p1 - p2 = vector\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Then_P1_Minus_P2_Is_Vector (X, Y, Z : Float);

   -- @then ^p - v = point\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Then_P_Minus_V_Is_Point (X, Y, Z : Float);

   -- @given ^v1 ← vector\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Given_Vector_V1 (X, Y, Z : Float);

   -- @and ^v2 ← vector\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure And_Given_Vector_V2 (X, Y, Z : Float);

   -- @then ^v1 - v2 = vector\(([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?), ([-+]?\d+(?: \.\d+)?)\)$
   procedure Then_V1_Minus_V2_Is_Vector (X, Y, Z : Float);
private
   A  : Tuple;
   P  : Point;
   V  : Vector;
   A1 : Tuple;
   A2 : Tuple;
   P1 : Point;
   P2 : Point;
   V1 : Vector;
   V2 : Vector;
end Tuples.Steps;
