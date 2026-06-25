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
      Pistas_Ocupadas : array (1..2) of Boolean := (False, False);
      Siguiente_Pista : T_Rango_Pista := 1;

   BEGIN
      PKG_debug.Escribir("======================INICIO TASK Torre_Control");

      ACCEPT Iniciar_Torre_Control;
      PKG_debug.Escribir("======================TASK Torre_Control INICIADO");

      loop
         select
              accept Peticion_Descenso(Aerovia_Destino : in T_Rango_AeroVia; Concedido : out Boolean) do
                 pkg_espacio_aereo.Control_Aerovias(Aerovia_Destino).Reserva_Descenso(Concedido);
            end Peticion_Descenso;

            delay 2.0;
         or
            accept Solicitar_Pista (Pista : out T_Rango_Pista) do
               Pista := Siguiente_Pista;
               if Siguiente_Pista = 1 then Siguiente_Pista := 2;
               else Siguiente_Pista := 1;
               end if;
            end Solicitar_Pista;
         or
            accept Solicitar_Aterrizaje (Pista : in T_Rango_Pista) do
               if Pistas_Ocupadas(Pista) then
                  requeue Esperar_Pista(Pista);
               else
                  Pistas_Ocupadas(Pista) := True;
               end if;
            end Solicitar_Aterrizaje;
         or
            when not Pistas_Ocupadas(1) =>
               accept Esperar_Pista (1) do
                  Pistas_Ocupadas(1) := True;
               end Esperar_Pista;
         or
            when not Pistas_Ocupadas(2) =>
               accept Esperar_Pista (2) do
                  Pistas_Ocupadas(2) := True;
               end Esperar_Pista;
         or
            accept Liberar_Pista (Pista : in T_Rango_Pista) do
               Pistas_Ocupadas(Pista) := False;
            end Liberar_Pista;
         end select;

      end loop;

      exception
       when event: others =>
        PKG_debug.Escribir("ERROR en TASK Torre_Control: " & Exception_Name(Exception_Identity(event)));

   END Tarea_Torre_Control;


end PKG_Torre_Control;
