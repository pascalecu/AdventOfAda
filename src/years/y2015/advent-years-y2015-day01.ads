with Advent.Types;
with Advent.Puzzle;
with Ada.Strings.Unbounded;

package Advent.Years.Y2015.Day01 is

   function Solve (Input : String) return Advent.Types.Puzzle_Answer;

   Puzzle : constant Advent.Puzzle.Puzzle_Info :=
     (Year  => 2015,
      Day   => 1,
      Title => Ada.Strings.Unbounded.To_Unbounded_String ("Not Quite Lisp"),
      Solve => Solve'Access);

end Advent.Years.Y2015.Day01;
