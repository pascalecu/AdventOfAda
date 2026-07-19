with Advent.Types;

package Advent.Solver is
   function Solve (Input : String) return Advent.Types.Puzzle_Answer
   is abstract;

   type Solver_Function is
     access function (Input : String) return Advent.Types.Puzzle_Answer;
end Advent.Solver;
