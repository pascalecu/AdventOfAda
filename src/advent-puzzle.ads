with Ada.Strings.Unbounded;

with Advent.Solver;
with Advent.Types;

package Advent.Puzzle is

   subtype Unbounded_String is Ada.Strings.Unbounded.Unbounded_String;

   type Puzzle_Info is record
      Year : Advent.Types.Year_Number;
      Day  : Advent.Types.Day_Number;

      Title : Unbounded_String;

      Solve : Advent.Solver.Solver_Function;
   end record;

end Advent.Puzzle;
