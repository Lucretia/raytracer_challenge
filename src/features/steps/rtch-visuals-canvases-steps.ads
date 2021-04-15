with RTCH.Visuals.Canvases; use RTCH.Visuals.Canvases;

package RTCH.Visuals.Canvases.Steps is
   -- @given ^c ← canvas\((\d+), (\d+)\)$
   procedure Given_Canvas_C (Width, Height : Positive);

   -- @then ^c.width = (\d+)$
   procedure Then_C_Width_Is (W : Positive);

   -- @and ^c.height = (\d+)$
   procedure And_C_Height_Is (H : Positive);

   -- @and ^every pixel of c is color\(([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*), ([-+]?\d+\.?\d*)\)$
   procedure And_For_All_Pixels_Equals (Red, Green, Blue : Float);
private
   C : Canvas_Access := null;
end RTCH.Visuals.Canvases.Steps;
