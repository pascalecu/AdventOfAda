with Advent.Types;

package Advent.Solver is
   type Solver_Access is
     access function (Input : String) return Advent.Types.Puzzle_Answer;
end Advent.Solver;
