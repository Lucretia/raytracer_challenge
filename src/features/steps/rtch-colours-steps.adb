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
end RTCH.Colours.Steps;
