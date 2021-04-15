package RTCH.Maths with
  Pure is

   Epsilon : constant := 0.00001;

   function Equals (Left, Right : in Float) return Boolean is (if abs (Left - Right) < Epsilon then True else False);
end RTCH.Maths;
