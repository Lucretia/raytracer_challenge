with RTCH.Colours; use RTCH.Colours;

package RTCH.Colours.Steps is
   -- @given ^c ← color\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Given_Colour_C (Red, Green, Blue : Float);

   -- @then ^c.red = ([-+]?\d+\.?\d*)$
   procedure Then_C_Red_Is (Red : Float);

   -- @and ^c.green = ([-+]?\d+\.?\d*)$
   procedure And_C_Green_Is (Green : Float);

   -- @and ^c.blue = ([-+]?\d+\.?\d*)$
   procedure And_C_Blue_Is (Blue : Float);
private
   C : Colour;
end RTCH.Colours.Steps;
