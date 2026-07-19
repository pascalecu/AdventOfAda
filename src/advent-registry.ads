with Advent.Puzzle;
with Advent.Solver;
with Advent.Types;

package Advent.Registry is

   function Lookup
     (Year : Advent.Types.Year_Number; Day : Advent.Types.Day_Number)
      return Advent.Puzzle.Puzzle_Info;

end Advent.Registry;
