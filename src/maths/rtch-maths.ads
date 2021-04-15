with Ada.Numerics.Generic_Elementary_Functions;

package RTCH.Maths with
  Pure is

   pragma Warnings (Off);  --  Turn off "unused" warning.
   package Float_Elementary_Functions is new Ada.Numerics.Generic_Elementary_Functions (Float);
   use Float_Elementary_Functions;
   pragma Warnings (On);

   Epsilon : constant := 0.00001;

   function Equals (Left, Right : in Float) return Boolean is (if abs (Left - Right) < Epsilon then True else False);
end RTCH.Maths;
