--******************* PKG_TORRE_CONTROL.ADB *****************************
-- Paquete que implementa la tarea de la torre de control
--***********************************************************************

with PKG_graficos;
with PKG_debug;
with Ada.Exceptions; use Ada.Exceptions;
with Ada.Calendar; use Ada.Calendar;

with pkg_espacio_aereo;

PACKAGE BODY PKG_Torre_Control IS

   -----------------------------------------------------------------------
   -- DEFINICIÓN DE LA TAREA DE LA TORRE DE CONTROL
   -----------------------------------------------------------------------
   TASK BODY Tarea_Torre_Control IS

   BEGIN
      PKG_debug.Escribir("======================INICIO TASK Torre_Control");

      ACCEPT Iniciar_Torre_Control;
      PKG_debug.Escribir("======================TASK Torre_Control INICIADO");

      loop
         accept Peticion_Descenso(Aerovia_Destino : in T_Rango_AeroVia; Concedido : out Boolean) do
            pkg_espacio_aereo.Control_Aerovias(Aerovia_Destino).Reserva_Descenso(Concedido);
         end Peticion_Descenso;

         delay 2.0;
      end loop;

      exception
       when event: others =>
        PKG_debug.Escribir("ERROR en TASK Torre_Control: " & Exception_Name(Exception_Identity(event)));

   END Tarea_Torre_Control;


end PKG_Torre_Control;
