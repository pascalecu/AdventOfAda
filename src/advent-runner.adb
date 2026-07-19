with Ada.Strings.Unbounded;
with Ada.Text_IO;

with Advent.Input;
with Advent.Puzzle;
with Advent.Registry;

package body Advent.Runner is

   use Ada.Strings.Unbounded;
   use Ada.Text_IO;

   procedure Run
     (Year : Advent.Types.Year_Number; Day : Advent.Types.Day_Number)
   is
      Puzzle : constant Advent.Puzzle.Puzzle_Info :=
        Advent.Registry.Lookup (Year, Day);
   begin
      Put_Line ("Year" & Puzzle.Year'Image);
      Put_Line ("");

      Put_Line ("--- " & "Day" & Puzzle.Day'Image & ": " & To_String (Puzzle.Title) & " ---");
      New_Line;

      declare
         Input  : constant String := Advent.Input.Read (Year, Day);
         Answer : constant Advent.Types.Puzzle_Answer :=
           Puzzle.Solve.all (Input);
      begin
         Put_Line ("Part 1: " & To_String (Answer.Part_1));
         Put_Line ("Part 2: " & To_String (Answer.Part_2));
      end;
   end Run;

   procedure Run (Year : Advent.Types.Year_Number) is
   begin
      Put_Line ("TODO: run every implemented puzzle in" & Year'Image);
   end Run;

   procedure Run_All is
   begin
      Put_Line ("TODO: run every implemented puzzle");
   end Run_All;

   procedure List is
   begin
      Put_Line ("TODO: list implemented puzzles");
   end List;

end Advent.Runner;
