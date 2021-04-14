with BDD.Asserts;  use BDD.Asserts;
-- with BDD.Tables;   use BDD.Tables;

package body Tuples.Steps is
   procedure Given_Tuple_A (X, Y, Z, W : Float) is
   begin
      A := Tuple'(X, Y, Z, W);
   end Given_Tuple_A;

   procedure Then_A_X_Is (Expected : Float) is
   begin
      Assert_Equal (A (X), Expected);
   end Then_A_X_Is;

   procedure And_A_Y_Is (Expected : Float) is
   begin
      Assert_Equal (A (Y), Expected);
   end And_A_Y_Is;

   procedure And_A_Z_Is (Expected : Float) is
   begin
      Assert_Equal (A (Z), Expected);
   end And_A_Z_Is;

   procedure And_A_W_Is (Expected : Float) is
   begin
      Assert_Equal (A (W), Expected);
   end And_A_W_Is;

   procedure And_A_Is_A_Point is
   begin
      Assert (Is_Point (A));
   end And_A_Is_A_Point;

   procedure And_A_Is_Not_A_Vector is
   begin
      Assert (not Is_Vector (A));
   end And_A_Is_Not_A_Vector;

   procedure And_A_Is_Not_A_Point is
   begin
      Assert (not Is_Point (A));
   end And_A_Is_Not_A_Point;

   procedure And_A_Is_A_Vector is
   begin
      Assert (Is_Vector (A));
   end And_A_Is_A_Vector;

   procedure Given_Point_P (X, Y, Z : Float) is
   begin
      P := Make_Point (X, Y, Z);
   end Given_Point_P;

   procedure Then_P_Is_A_Tuple (X, Y, Z, W : Float) is
   begin
      Assert (P = Tuple'(X, Y, Z, W));
   end Then_P_Is_A_Tuple;

   procedure Given_Vector_V (X, Y, Z : Float) is
   begin
      V := Make_Vector (X, Y, Z);
   end Given_Vector_V;

   procedure Then_V_Is_A_Tuple (X, Y, Z, W : Float) is
   begin
      Assert (V = Tuple'(X, Y, Z, W));
   end Then_V_Is_A_Tuple;

   procedure Given_Tuple_A1 (X, Y, Z, W : Float) is
   begin
      A1 := Tuple'(X, Y, Z, W);
   end Given_Tuple_A1;

   procedure Given_Tuple_A2 (X, Y, Z, W : Float) is
   begin
      A2 := Tuple'(X, Y, Z, W);
   end Given_Tuple_A2;

   procedure Then_A1_Plus_A2_Is (X, Y, Z, W : Float) is
   begin
      Assert (A1 + A2 = Tuple'(X, Y, Z, W));
   end Then_A1_Plus_A2_Is;

   procedure Given_Point_P1 (X, Y, Z : Float) is
   begin
      P1 := Make_Point (X, Y, Z);
   end Given_Point_P1;

   procedure And_Given_Point_P2 (X, Y, Z : Float) is
   begin
      P2 := Make_Point (X, Y, Z);
   end And_Given_Point_P2;

   procedure Then_P1_Minus_P2_Is_Vector (X, Y, Z : Float) is
   begin
      Assert (P1 - P2 = Make_Vector (X, Y, Z));
   end Then_P1_Minus_P2_Is_Vector;

   procedure Then_P_Minus_V_Is_Point (X, Y, Z : Float) is
   begin
      Assert (P - V = Make_Point (X, Y, Z));
   end Then_P_Minus_V_Is_Point;

   procedure Given_Vector_V1 (X, Y, Z : Float) is
   begin
      V1 := Make_Vector (X, Y, Z);
   end Given_Vector_V1;

   procedure And_Given_Vector_V2 (X, Y, Z : Float) is
   begin
      V2 := Make_Vector (X, Y, Z);
   end And_Given_Vector_V2;

   procedure Then_V1_Minus_V2_Is_Vector (X, Y, Z : Float) is
   begin
      Assert (V1 - V2 = Make_Vector (X, Y, Z));
   end Then_V1_Minus_V2_Is_Vector;

   procedure Given_Zero_Vector (X, Y, Z : Float) is
   begin
      Assert (X = Y and Y = Z and Z = 0.0);
      Assert (Zero = Make_Vector (X, Y, Z));
   end Given_Zero_Vector;

   procedure Then_Zero_Minus_V_Is_Vector (X, Y, Z : Float) is
   begin
      Assert (Zero - V = Make_Vector (X, Y, Z));
   end Then_Zero_Minus_V_Is_Vector;

   procedure Then_Tuple_Is_Negative_A (X, Y, Z, W : Float) is
   begin
      Assert (-A = Tuple'(X, Y, Z, W));
   end Then_Tuple_Is_Negative_A;

   procedure Then_A_Times_Scalar_Is_Tuple (Scalar, X, Y, Z, W : Float) is
   begin
      Assert (A * Scalar = Tuple'(X, Y, Z, W));
   end Then_A_Times_Scalar_Is_Tuple;
end Tuples.Steps;
