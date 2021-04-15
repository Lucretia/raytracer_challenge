with Ada.Text_IO; use Ada.Text_IO;
with RTCH.Maths.Tuples; use RTCH.Maths.Tuples;
with RTCH.Maths.Points; use RTCH.Maths.Points;
with RTCH.Maths.Vectors; use RTCH.Maths.Vectors;

procedure Projectiles is
   package FIO is new Float_IO (Float);
   use FIO;

   package IIO is new Integer_IO (Natural);
   use IIO;

   type Projectile is record
      Position : Point;
      Velocity : Vector;
   end record;

   type Environment is record
      Gravity : Vector;
      Wind    : Vector;
   end record;

   function Tick (Env : in Environment; Proj : in Projectile) return Projectile is
   begin
      return P : Projectile do
         P.Position := Proj.Position + Proj.Velocity;
         P.Velocity := Proj.Velocity + Env.Gravity + Env.Wind;
      end return;
   end Tick;

   procedure Report_On (P : in Projectile) is
   begin
      Put ("Project (");
      Put (P.Position.X, Aft => 3, Exp => 0);
      Put (", ");
      Put (P.Position.Y, Aft => 3, Exp => 0);
      Put_Line (")");
   end Report_On;

   --  Projectile starts one unit above the origin.
   --  Velocity is normalized to 1 unit/tick.
   P     : Projectile  := (Position => Make_Point (0.0, 1.0, 0.0), Velocity => Normalise (Make_Vector (0.0, 1.0, 0.0)));
   E     : Environment := (Make_Vector (0.0, -0.1, 0.0), Make_Vector (-0.01, 0.0, 0.0));
   Count : Natural     := Natural'First;
begin
   Report_On (P);

   while P.Position.Y > 0.0 loop
      P     := Tick (E, P);
      Count := Count + 1;

      Report_On (P);

      delay 1.0 / 1000.0;
   end loop;

   Put ("Projectile took ");
   Put (Count, Width => 0);
   Put_Line (" ticks to hit the ground.");
end Projectiles;
