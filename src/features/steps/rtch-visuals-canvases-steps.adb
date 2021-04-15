with Ada.Unchecked_Deallocation;
with BDD.Asserts;  use BDD.Asserts;

package body RTCH.Visuals.Canvases.Steps is
   procedure Given_Canvas_C (Width, Height : Positive) is
      procedure Free is new Ada.Unchecked_Deallocation (Object => Canvas, Name => Canvas_Access);
   begin
      if C /= null then
         Free (C);
      end if;

      C := Make_Canvas (Width, Height);
      -- C := Make_Canvas (Width, Height);
   end Given_Canvas_C;

   procedure Then_C_Width_Is (W : Positive) is
   begin
      Assert (Get_Width (C.all) = W);
   end Then_C_Width_Is;

   procedure And_C_Height_Is (H : Positive) is
   begin
      Assert (Get_Height (C.all) = H);
   end And_C_Height_Is;

   procedure And_For_All_Pixels_Equals (Red, Green, Blue : Float) is
      Test_Colour : constant Colour := Make_Colour (Red, Green, Blue);
   begin
      for Pixel of C.all loop
         Assert (Pixel = Test_Colour);
      end loop;
   end And_For_All_Pixels_Equals;
end RTCH.Visuals.Canvases.Steps;
