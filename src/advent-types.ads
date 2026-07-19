with Ada.Strings.Unbounded;

package Advent.Types is

   subtype Year_Number is Positive range 2015 .. 2025;
   subtype Day_Number is Positive range 1 .. 25;

   subtype Unbounded_String is Ada.Strings.Unbounded.Unbounded_String;

   type Puzzle_Answer is record
      Part_1 : Unbounded_String;
      Part_2 : Unbounded_String;
   end record;

end Advent.Types;
