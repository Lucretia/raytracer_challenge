with RTCH.Maths.Tuples;

package RTCH.Maths.Points with
  Pure is

   subtype Point is Tuples.Tuple; --  TODO - Make this a type?

   function Make_Point (X, Y, Z : Float) return Point is
      (Point'(X => X,
              Y => Y,
              Z => Z,
              W => 1.0));
end RTCH.Maths.Points;
