package body RTCH.Maths.Vectors is
   function Normalise (V : in Vector) return Vector is
      V_Length : constant Float := Magnitude (V);
   begin
      return Make_Vector (X => V.X / V_Length,
                          Y => V.Y / V_Length,
                          Z => V.Z / V_Length);
   end Normalise;
end RTCH.Maths.Vectors;
