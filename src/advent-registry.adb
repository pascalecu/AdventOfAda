with Advent.Years.Y2015;

package body Advent.Registry is

   function Lookup
     (Year : Advent.Types.Year_Number; Day : Advent.Types.Day_Number)
      return Advent.Puzzle.Puzzle_Info is
   begin
      case Year is

         when 2015   =>
            return Advent.Years.Y2015.Lookup (Day);

         when others =>
            raise Constraint_Error
              with "No puzzles registered for " & Year'Image;

      end case;
   end Lookup;

end Advent.Registry;
