with BDD.Asserts;  use BDD.Asserts;

package body RTCH.Colours.Steps is
   procedure Given_Colour_C (Red, Green, Blue : Float) is
   begin
      C := Make_Colour (Red, Green, Blue);
   end Given_Colour_C;

   procedure Then_C_Red_Is (Red : Float) is
   begin
      Assert (C.Red = Red);
   end Then_C_Red_Is;

   procedure And_C_Green_Is (Green : Float) is
   begin
      Assert (C.Green = Green);
   end And_C_Green_Is;

   procedure And_C_Blue_Is (Blue : Float) is
   begin
      Assert (C.Blue = Blue);
   end And_C_Blue_Is;

   procedure Given_Colour_C1 (Red, Green, Blue : Float) is
   begin
      C1 := Make_Colour (Red, Green, Blue);
   end Given_Colour_C1;

   procedure Given_Colour_C2 (Red, Green, Blue : Float) is
   begin
      C2 := Make_Colour (Red, Green, Blue);
   end Given_Colour_C2;

   procedure Then_C1_Add_C2_Is_Colour (Red, Green, Blue : Float) is
   begin
      Assert (C1 + C2 = Make_Colour (Red, Green, Blue));
   end Then_C1_Add_C2_Is_Colour;

   procedure Then_C1_Sub_C2_Is_Colour (Red, Green, Blue : Float) is
   begin
      Assert (C1 - C2 = Make_Colour (Red, Green, Blue));
   end Then_C1_Sub_C2_Is_Colour;

   procedure Then_C_Times_Scalar_Is_Colour (Scalar, Red, Green, Blue : Float) is
   begin
      Assert (C * Scalar = Make_Colour (Red, Green, Blue));
   end Then_C_Times_Scalar_Is_Colour;

   procedure Then_C1_Times_C2_Is_Colour (Red, Green, Blue : Float) is
   begin
      Assert (C1 * C2 = Make_Colour (Red, Green, Blue));
   end Then_C1_Times_C2_Is_Colour;
end RTCH.Colours.Steps;
