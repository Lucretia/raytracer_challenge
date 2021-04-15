with RTCH.Colours; use RTCH.Colours;

package RTCH.Visuals.Canvases with
  Preelaborate is

   -- type Pixel_Array is array (Positive range <>, Positive range <>) of Colour;
   type Canvas is array (Positive range <>, Positive range <>) of Colour;
   type Canvas_Access is access all Canvas;

   function Make_Canvas (Width, Height : in Positive) return Canvas_Access;
   function Get_Width (C : in Canvas) return Positive is (C'Length (1));
   function Get_Height (C : in Canvas) return Positive is (C'Length (2));

   -- type Canvas (Width, Height : Positive) is record
   --    Pixels : Pixel_Array (1 .. Width, 1 .. Height) := ((others => (others => Make_Colour (0.0, 0.0, 0.0))));
   -- end record;
end RTCH.Visuals.Canvases;
