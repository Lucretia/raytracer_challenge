package body RTCH.Visuals.Canvases with
  Preelaborate is

   function Make_Canvas (Width, Height : in Positive) return Canvas_Access is
   begin
      return new Canvas (1 .. Width, 1 .. Height);
   end Make_Canvas;

   procedure Set_Pixel (C : in out Canvas; X, Y : in Positive; Colour : in Colours.Colour) is
   begin
      C (X, Y) := Colour;
   end Set_Pixel;

   -- type Canvas (Width, Height : Positive) is record
   --    Pixels : Pixel_Array (1 .. Width, 1 .. Height) := ((others => (others => Make_Colour (0.0, 0.0, 0.0))));
   -- end record;
end RTCH.Visuals.Canvases;
