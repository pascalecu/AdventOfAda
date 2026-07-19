with Ada.Strings.Unbounded;
with Advent.Puzzle;
with Advent.Types;

package body Advent.Registry is

   function Lookup
     (Year : Advent.Types.Year_Number; Day : Advent.Types.Day_Number)
      return Advent.Puzzle.Puzzle_Info is
   begin
      return
        (Year  => Year,
         Day   => Day,
         Title => Ada.Strings.Unbounded.To_Unbounded_String ("TODO"),
         Solve => null);
   end Lookup;

end Advent.Registry;
