with Ada.Command_Line;
with Ada.Text_IO;

package body Advent.CLI is

   use Ada.Command_Line;
   use Ada.Text_IO;

   procedure Print_Help is
   begin
      Put_Line ("Advent of Ada");
      New_Line;

      Put_Line ("Usage:");
      Put_Line ("  aoc run <year> <day>");
      Put_Line ("  aoc run <year>");
      Put_Line ("  aoc run all");
      Put_Line ("  aoc list");
      Put_Line ("  aoc help");
   end Print_Help;

   procedure Run is
   begin
      if Argument_Count = 0 then
         Print_Help;
         return;
      end if;

      declare
         Command : constant String := Argument (1);
      begin
         if Command = "help" then
            Print_Help;

         elsif Command = "list" then
            Put_Line ("TODO: list implemented puzzles");

         elsif Command = "run" then

            case Argument_Count is

               when 2 =>
                  Put_Line ("TODO: run year or all");

               when 3 =>
                  Put_Line ("TODO: run specific day");

               when others =>
                  Print_Help;

            end case;

         else
            Put_Line ("Unknown command: " & Command);
            New_Line;
            Print_Help;
         end if;
      end;
   end Run;

end Advent.CLI;