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

   type Input_Kind is (Puzzle, Example);

   function Read
     (Kind : Input_Kind;
      Year : Advent.Types.Year_Number;
      Day  : Advent.Types.Day_Number)
      return String;

   function Image (Value : Integer) return String;

   function Day_Image
     (Day : Advent.Types.Day_Number)
      return String;

   function Path
     (Kind : Input_Kind;
      Year : Advent.Types.Year_Number;
      Day  : Advent.Types.Day_Number)
      return String;

   function Load
     (Filename : String)
      return String;

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
      return String
   is
   begin
      if Day < 10 then
         return "0" & Image (Integer (Day));
      else
         return Image (Integer (Day));
      end if;
   end Day_Image;

   ----------
   -- Path --
   ----------

   function Path
     (Kind : Input_Kind;
      Year : Advent.Types.Year_Number;
      Day  : Advent.Types.Day_Number)
      return String
   is
      Root : constant String :=
        (case Kind is
            when Puzzle  => "inputs",
            when Example => "examples");
   begin
      return
        Root
        & "/"
        & Image (Integer (Year))
        & "/day"
        & Day_Image (Day)
        & ".txt";
   end Path;

   ----------
   -- Load --
   ----------

   function Load
     (Filename : String)
      return String
   is
      File : File_Type;
      Data : Unbounded_String;
   begin

      if not Ada.Directories.Exists (Filename) then
         raise Name_Error with
           "Input file not found: " & Filename;
      end if;

      Open
        (File,
         In_File,
         Filename);

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
   end Load;

   ----------
   -- Read --
   ----------

   function Read
     (Kind : Input_Kind;
      Year : Advent.Types.Year_Number;
      Day  : Advent.Types.Day_Number)
      return String
   is
   begin
      return Load (Path (Kind, Year, Day));
   end Read;

   ----------
   -- Read --
   ----------

   function Read
     (Year : Advent.Types.Year_Number;
      Day  : Advent.Types.Day_Number)
      return String
   is
   begin
      return Read (Puzzle, Year, Day);
   end Read;

   ------------------
   -- Read_Example --
   ------------------

   function Read_Example
     (Year : Advent.Types.Year_Number;
      Day  : Advent.Types.Day_Number)
      return String
   is
   begin
      return Read (Example, Year, Day);
   end Read_Example;

end Advent.Input;