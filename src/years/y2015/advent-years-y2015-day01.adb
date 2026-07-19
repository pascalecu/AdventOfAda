with Ada.Strings.Fixed;

package body Advent.Years.Y2015.Day01 is

   use Ada.Strings;
   use Ada.Strings.Fixed;
   use Ada.Strings.Unbounded;

   function Image (Value : Integer) return Unbounded_String is
   begin
      return To_Unbounded_String (Trim (Integer'Image (Value), Both));
   end Image;

   function Solve (Input : String) return Advent.Types.Puzzle_Answer is
      Floor                   : Integer := 0;
      First_Basement_Position : Integer := 0;
   begin
      for I in Input'Range loop
         case Input (I) is
            when '('    =>
               Floor := @ + 1;

            when ')'    =>
               Floor := @ - 1;

            when others =>
               null;
         end case;

         if Floor = -1 and then First_Basement_Position = 0 then
            First_Basement_Position := I;
         end if;
      end loop;

      return
        (Part_1 => Image (Floor), Part_2 => Image (First_Basement_Position));
   end Solve;

end Advent.Years.Y2015.Day01;
