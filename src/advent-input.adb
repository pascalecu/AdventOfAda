with Ada.Directories;
with Ada.Strings;
with Ada.Strings.Fixed;
with Ada.Strings.Unbounded;
with Ada.Text_IO;

package body Advent.Input is

   use Ada.Strings;
   use Ada.Strings.Fixed;
   use Ada.Strings.Unbounded;
   use Ada.Text_IO;

   function Image (Value : Integer) return String;

   function Day_Image
     (Day : Advent.Types.Day_Number) return String;

   function Puzzle_Path
     (Year : Advent.Types.Year_Number;
      Day  : Advent.Types.Day_Number)
      return String;

   procedure Run (Year : Advent.Types.Year_Number) is
   begin
      Ada.Text_IO.Put_Line ("TODO for Year" & Year'Image);
   end Run;

   procedure Run_All is
   begin
      Ada.Text_IO.Put_Line ("TODO Run_All");
   end Run_All;

   ----------
   -- Image --
   ----------

   function Image (Value : Integer) return String is
   begin
      return Trim (Integer'Image (Value), Both);
   end Image;

   ----------------
   -- Day_Image --
   ----------------

   function Day_Image
     (Day : Advent.Types.Day_Number)
      return String is
   begin
      if Day < 10 then
         return "0" & Image (Integer (Day));
      else
         return Image (Integer (Day));
      end if;
   end Day_Image;

   -----------------
   -- Puzzle_Path --
   -----------------

   function Puzzle_Path
     (Year : Advent.Types.Year_Number;
      Day  : Advent.Types.Day_Number)
      return String is
   begin
      return
        "inputs/"
        & Image (Integer (Year))
        & "/day"
        & Day_Image (Day)
        & ".txt";
   end Puzzle_Path;

   ---------------
   -- Read_File --
   ---------------

   function Read_File
     (Filename : String)
      return String is
      File : File_Type;
      Data : Unbounded_String;
   begin
      if not Ada.Directories.Exists (Filename) then
         raise Name_Error with "Input file not found: " & Filename;
      end if;

      Open (File, In_File, Filename);

      while not End_Of_File (File) loop
         Append (Data, Get_Line (File));

         exit when End_Of_File (File);

         Append (Data, ASCII.LF);
      end loop;

      Close (File);

      return To_String (Data);

   exception
      when others =>
         if Is_Open (File) then
            Close (File);
         end if;
         raise;
   end Read_File;

   ----------
   -- Read --
   ----------

   function Read
     (Year : Advent.Types.Year_Number;
      Day  : Advent.Types.Day_Number)
      return String is
   begin
      return Read_File (Puzzle_Path (Year, Day));
   end Read;

end Advent.Input;