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

   -- @given ^c1 ← color\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Given_Colour_C1 (Red, Green, Blue : Float);

   -- @given ^c2 ← color\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Given_Colour_C2 (Red, Green, Blue : Float);

   -- @then ^c1 \+ c2 = color\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_C1_Add_C2_Is_Colour (Red, Green, Blue : Float);

   -- @then ^c1 - c2 = color\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_C1_Sub_C2_Is_Colour (Red, Green, Blue : Float);

   -- @then ^c \* ([-+]?\d+\.?\d*) = color\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_C_Times_Scalar_Is_Colour (Scalar, Red, Green, Blue : Float);

   -- @then ^c1 \* c2 = color\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure Then_C1_Times_C2_Is_Colour (Red, Green, Blue : Float);
private
   C  : Colour;
   C1 : Colour;
   C2 : Colour;
end RTCH.Colours.Steps;
