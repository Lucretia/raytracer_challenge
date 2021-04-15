package body RTCH.Maths.Tuples is
   function Normalise (V : in Vector) return Vector is
      V_Length : constant Float := Magnitude (V);
   begin
      return Make_Vector (X1 => V (X) / V_Length,
                          Y1 => V (Y) / V_Length,
                          Z1 => V (Z) / V_Length);
   end Normalise;
end RTCH.Maths.Tuples;
