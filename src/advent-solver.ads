with Advent.Types;

package Advent.Solver is

   type Solver_Function is
      access function (Input : String)
         return Advent.Types.Puzzle_Answer;

end Advent.Solver;