package Tuples.Steps is
   -- @given ^a ← tuple\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Given_Tuple_A (X, Y, Z, W : Float);

   -- @then ^a.x = ([-+]?\d+\.?\d*)$
   procedure Then_A_X_Is (Expected : Float);

   -- @and ^a.y = ([-+]?\d+\.?\d*)$
   procedure And_A_Y_Is (Expected : Float);

   -- @and ^a.z = ([-+]?\d+\.?\d*)$
   procedure And_A_Z_Is (Expected : Float);

   -- @and ^a.w = ([-+]?\d+\.?\d*)$
   procedure And_A_W_Is (Expected : Float);

   -- @and ^a is a point$
   procedure And_A_Is_A_Point;

   -- @and ^a is not a vector$
   procedure And_A_Is_Not_A_Vector;

   -- @and ^a is not a point$
   procedure And_A_Is_Not_A_Point;

   -- @and ^a is a vector$
   procedure And_A_Is_A_Vector;

   -- @given ^p ← point\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Given_Point_P (X, Y, Z : Float);

   -- @then ^p = tuple\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_P_Is_A_Tuple (X, Y, Z, W : Float);

   -- @given ^v ← vector\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Given_Vector_V (X, Y, Z : Float);

   -- @then ^v = tuple\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_V_Is_A_Tuple (X, Y, Z, W : Float);

   -- @given ^a1 ← tuple\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Given_Tuple_A1 (X, Y, Z, W : Float);

   -- @given ^a2 ← tuple\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Given_Tuple_A2 (X, Y, Z, W : Float);

   -- @then ^a1 \+ a2 = tuple\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_A1_Plus_A2_Is (X, Y, Z, W : Float);

   -- @given ^p1 ← point\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Given_Point_P1 (X, Y, Z : Float);

   -- @and ^p2 ← point\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure And_Given_Point_P2 (X, Y, Z : Float);

   -- @then ^p1 - p2 = vector\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_P1_Minus_P2_Is_Vector (X, Y, Z : Float);

   -- @then ^p - v = point\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_P_Minus_V_Is_Point (X, Y, Z : Float);

   -- @given ^v1 ← vector\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Given_Vector_V1 (X, Y, Z : Float);

   -- @and ^v2 ← vector\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure And_Given_Vector_V2 (X, Y, Z : Float);

   -- @then ^v1 - v2 = vector\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_V1_Minus_V2_Is_Vector (X, Y, Z : Float);

   -- @given ^zero ← vector\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Given_Zero_Vector (X, Y, Z : Float);

   -- @then ^zero - v = vector\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_Zero_Minus_V_Is_Vector (X, Y, Z : Float);

   -- @then ^-a = tuple\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_Tuple_Is_Negative_A (X, Y, Z, W : Float);

   -- @then ^a \* ([-+]?\d+\.?\d*) = tuple\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_A_Times_Scalar_Is_Tuple (Scalar, X, Y, Z, W : Float);

   -- @then ^a / ([-+]?\d+\.?\d*) = tuple\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_A_Divide_By_Scalar_Is_Tuple (Scalar, X, Y, Z, W : Float);

   -- @then ^magnitude\(v\) = ([-+]?\d+\.?\d*)$
   procedure Then_Magnitude_Of_V_Is (Result : Float);

   -- @then ^magnitude\(v\) = √([-+]?\d+\.?\d*)$
   procedure Then_Magnitude_Of_V_Is_Sqrt_Of (Result : Float);

   -- @then ^normalize\(v\) = vector\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_Normalise_V_Is_Vector (X, Y, Z : Float);

   -- @then ^normalize\(v\) = approximately vector\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_Normalise_V_Is_Approximately_Vector (X, Y, Z : Float);

   -- @when ^norm ← normalize\(v\)$
   procedure When_Normalise_V_As_Norm;

   -- @then ^magnitude\(norm\) = 1$
   procedure Then_Magnitude_Norm_Is_One;

   -- @then ^dot\(v1, v2\) = ([-+]?\d+\.?\d*)$
   procedure Then_Dot_Of_V1_And_V2_Is (Scalar : Float);
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
   Zero : Vector;
   Norm : Vector;
end Tuples.Steps;
