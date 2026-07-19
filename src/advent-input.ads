with Advent.Types;

package Advent.Input is

   function Read
     (Year : Advent.Types.Year_Number; Day : Advent.Types.Day_Number)
      return String;

   function Read_File (Filename : String) return String;

end Advent.Input;
