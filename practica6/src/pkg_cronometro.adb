with Ada.Calendar; use Ada.Calendar;
with Ada.Real_Time; use Ada.Real_Time;
with PKG_graficos;

package body PKG_cronometro is

   task body T_Cronometro_Calendar is
      Hora_Inicio: Ada.Calendar.Time := Ada.Calendar.Clock;
      Siguiente_Instante: Ada.Calendar.Time := Hora_Inicio;
      Periodo: constant Duration := 1.0;
   begin
      loop
         Siguiente_Instante := Siguiente_Instante + Periodo;
         delay until Siguiente_Instante;
         
         PKG_graficos.Actualiza_Cronometro(Ada.Calendar.Clock - Hora_Inicio);
      end loop;
   end T_Cronometro_Calendar;

   task body T_Cronometro_Real_Time is
      Hora_Inicio : Ada.Real_Time.Time := Ada.Real_Time.Clock;
      Siguiente_Instante : Ada.Real_Time.Time := Hora_Inicio;
      Periodo : constant Ada.Real_Time.Time_Span := Ada.Real_Time.Seconds(1);
   begin
      loop
         Siguiente_Instante := Siguiente_INstante + Periodo;
         delay until Siguiente_Instante;
         
         PKG_graficos.Actualiza_Cronometro(
                                           Ada.Real_Time.To_Duration(Ada.Real_Time.Clock - Hora_Inicio)
                                          );
      end loop;
   end T_Cronometro_Real_Time;
      
end PKG_cronometro;
