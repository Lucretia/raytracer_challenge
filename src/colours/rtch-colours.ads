with RTCH.Maths; use RTCH.Maths;
package RTCH.Colours with
  Pure is

   type Colour is record
      Red   : Float := 0.0;
      Green : Float := 0.0;
      Blue  : Float := 0.0;
   end record;

   function Make_Colour (Red, Green, Blue : Float) return Colour is
      (Colour'(Red   => Red,
               Green => Green,
               Blue  => Blue));

   function "=" (Left, Right: in Colour) return Boolean is
      (Equals (Left.Red,   Right.Red) and
       Equals (Left.Green, Right.Green) and
       Equals (Left.Blue,  Right.Blue));

   function "+" (Left, Right : in Colour) return Colour is
      (Colour'(Red   => Left.Red   + Right.Red,
               Green => Left.Green + Right.Green,
               Blue  => Left.Blue  + Right.Blue));

   function "-" (Left, Right : in Colour) return Colour is
      (Colour'(Red   => Left.Red   - Right.Red,
               Green => Left.Green - Right.Green,
               Blue  => Left.Blue  - Right.Blue));

   function "*" (Left : in Colour; Right : in Float) return Colour is
      (Colour'(Red   => Left.Red   * Right,
               Green => Left.Green * Right,
               Blue  => Left.Blue  * Right));

   function "*" (Left, Right : in Colour) return Colour is
      (Colour'(Red   => Left.Red   * Right.Red,
               Green => Left.Green * Right.Green,
               Blue  => Left.Blue  * Right.Blue));

   function Hadamard_Product (Left, Right : in Colour) return Colour renames "*";
end RTCH.Colours;
