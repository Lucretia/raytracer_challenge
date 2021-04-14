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

   procedure A_Is_A_Point is
   begin
      Assert (Is_Point (A));
   end A_Is_A_Point;

   procedure A_Is_Not_A_Vector is
   begin
      Assert (not Is_Vector (A));
   end A_Is_Not_A_Vector;

   procedure A_Is_Not_A_Point is
   begin
      Assert (not Is_Point (A));
   end A_Is_Not_A_Point;

   procedure A_Is_A_Vector is
   begin
      Assert (Is_Vector (A));
   end A_Is_A_Vector;
end Tuples.Steps;
