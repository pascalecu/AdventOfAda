with Ada.Strings.Unbounded;
with Advent.Years.Y2015.Day01;

package body Advent.Years.Y2015 is
   function Lookup
     (Day : Advent.Types.Day_Number) return Advent.Puzzle.Puzzle_Info is
   begin
      case Day is
         when 1      =>
            return Advent.Years.Y2015.Day01.Puzzle;

         when others =>
            return
              (Year  => 2015,
               Day   => Day,
               Title =>
                 Ada.Strings.Unbounded.To_Unbounded_String ("Unknown Puzzle"),
               Solve => null);
      end case;
   end Lookup;

end Advent.Years.Y2015;
