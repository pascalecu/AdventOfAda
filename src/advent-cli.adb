with Ada.Command_Line;
with Ada.Text_IO;

with Advent.Runner;
with Advent.Types;

package body Advent.CLI is

   use Ada.Command_Line;
   use Ada.Text_IO;

   procedure Print_Help;

   procedure Handle_Run;
   procedure Handle_List;

   -----------------
   -- Print_Help --
   -----------------

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

   ----------------
   -- Handle_Run --
   ----------------

   procedure Handle_Run is
   begin
      case Argument_Count is

         when 2      =>
            if Argument (2) = "all" then
               Advent.Runner.Run_All;
            else
               Advent.Runner.Run
                 (Advent.Types.Year_Number'Value (Argument (2)));
            end if;

         when 3      =>
            Advent.Runner.Run
              (Year => Advent.Types.Year_Number'Value (Argument (2)),
               Day  => Advent.Types.Day_Number'Value (Argument (3)));

         when others =>
            Print_Help;

      end case;

   exception
      when Constraint_Error =>
         Put_Line ("Invalid year or day.");
   end Handle_Run;

   -----------------
   -- Handle_List --
   -----------------

   procedure Handle_List is
   begin
      Advent.Runner.List;
   end Handle_List;

   ---------
   -- Run --
   ---------

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

         elsif Command = "run" then

            Handle_Run;

         elsif Command = "list" then

            Handle_List;

         else

            Put_Line ("Unknown command: " & Command);
            New_Line;
            Print_Help;

         end if;

      end;

   end Run;

end Advent.CLI;
