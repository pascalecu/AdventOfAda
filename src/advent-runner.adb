with Ada.Text_IO;

package body Advent.Runner is

   procedure Run
     (Year : Advent.Types.Year_Number; Day : Advent.Types.Day_Number) is
   begin
      Ada.Text_IO.Put_Line
        ("TODO for Year" & Year'Image & ", Day" & Day'Image);
   end Run;

   procedure Run (Year : Advent.Types.Year_Number) is
   begin
      Ada.Text_IO.Put_Line ("TODO for Year" & Year'Image);
   end Run;

   procedure Run_All is
   begin
      Ada.Text_IO.Put_Line ("TODO Run_All");
   end Run_All;

   procedure List is
   begin
      Ada.Text_IO.Put_Line ("TODO List");
   end List;

end Advent.Runner;
