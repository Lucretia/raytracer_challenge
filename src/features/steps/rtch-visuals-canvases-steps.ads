with RTCH.Visuals.Canvases; use RTCH.Visuals.Canvases;
with RTCH.Colours; use RTCH.Colours;
package RTCH.Visuals.Canvases.Steps is
   -- @given ^c ← canvas\((\d+), (\d+)\)$
   procedure Given_Canvas_C (Width, Height : Positive);

   -- @then ^c.width = (\d+)$
   procedure Then_C_Width_Is (W : Positive);

   -- @and ^c.height = (\d+)$
   procedure And_C_Height_Is (H : Positive);

   -- @and ^every pixel of c is color\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure And_For_All_Pixels_Equals (Red, Green, Blue : Float);

   -- @and ^red ← color\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure And_Colour_Red (Red, Green, Blue : Float);

   -- GNAT BDD cannot handle identifiers.
   -- @when ^write_pixel\(c, (\d+), (\d+), red\)$
   procedure When_Write_Red_Pixel_To_C (X, Y : Positive);

   -- @then ^pixel_at\(c, (\d+), (\d+)\) = red$
   procedure Then_Pixel_At_Is_Red (X, Y : Positive);
private
   C          : Canvas_Access := null;
   Red_Colour : Colour;
end RTCH.Visuals.Canvases.Steps;
