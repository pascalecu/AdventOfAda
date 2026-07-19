with Advent.Types;

package Advent.Input is

   function Read
     (Year : Advent.Types.Year_Number; Day : Advent.Types.Day_Number)
      return String;

   function Read_Example
     (Year : Advent.Types.Year_Number; Day : Advent.Types.Day_Number)
      return String;

end Advent.Input;
