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
end Tuples.Steps;
