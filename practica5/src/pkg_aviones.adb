with PKG_tipos; use PKG_tipos;
with PKG_graficos;
with PKG_debug;
with Ada.Exceptions; use Ada.Exceptions;
with Ada.Numerics.Discrete_Random;

with PKG_cronometro;
with pkg_espacio_aereo;
with PKG_Torre_Control;

package body pkg_aviones is

   task body T_Tarea_Avion is
      Avion : T_RecordAvion := Datos_Avion.all;
      Celda_Actual : T_Rango_Rejilla_X;
      Siguiente_Pos_X: T_CoordenadaX;
      Siguiente_Celda: T_Rango_Rejilla_X;
      Permiso_Concedido : Boolean:= False;
      
      -- no repetir el code
      procedure Hacer_Un_Paso_Vuelo is
      begin
         delay(RETARDO_MOVIMIENTO);
         Siguiente_Pos_X := PKG_graficos.Nueva_PosicionX(Avion.pos.X, Avion.velocidad.X);
         Siguiente_Celda := PKG_graficos.Posicion_ZonaEspacioAereo(Siguiente_Pos_X);
         
         if Celda_Actual /= Siguiente_Celda then
            pkg_espacio_aereo.Control_Aerovias(Avion.aerovia).Actualizar_Posicion(Celda_Actual, Siguiente_Celda);
            Celda_Actual := Siguiente_Celda;
         end if;
         
         PKG_graficos.Actualiza_Movimiento(Avion);
         
      end Hacer_Un_Paso_Vuelo;
   
   begin
      Celda_Actual:= PKG_graficos.Posicion_ZonaEspacioAereo(Avion.pos.X);
      
      select
         pkg_espacio_aereo.Control_Aerovias(Avion.aerovia).Solicitar_Acceso(Celda_Actual);
      or
         delay 1.0;
         Avion.color := Orange;
         pkg_espacio_aereo.Control_Aerovias(Avion.aerovia).Solicitar_Acceso(Celda_Actual);
      end select;
      
      PKG_graficos.Aparece(Avion);
      
      loop
         if not Permiso_Concedido then
            select
               PKG_Torre_Control.Tarea_Torre_Control.Peticion_Descenso(Avion.aerovia +1, Permiso_Concedido);
               if Permiso_Concedido then
                  Avion.color := Yellow;
               end if;
            then abort
               loop
                  Hacer_Un_Paso_Vuelo;
               end loop;
            end select;
         else
            if pkg_espacio_aereo.Control_Aerovias(Avion.aerovia +1).Zona_Libre(Celda_Actual) then
               pkg_espacio_aereo.Control_Aerovias(Avion.aerovia +1).Ocupar_Zona(Celda_Actual);
               pkg_espacio_aereo.Control_Aerovias(Avion.aerovia).Liberar_Zona_Y_Salida(Celda_Actual);
               PKG_graficos.Desaparece(Avion);
               
               Avion.aerovia := Avion.aerovia +1;
               
               if Avion.aerovia = NUM_AEROVIAS then
                  pkg_espacio_aereo.Control_Aerovias(Avion.aerovia).Liberar_Zona_Y_Salida(Celda_Actual);
                  exit; --termina la tarea del avión
               else
                  Avion.color := Blue;
                  Avion.velocidad.X := -Avion.velocidad.X;
                  Avion.pos := PKG_graficos.Pos_Inicio(Avion.pos.X, Avion.aerovia);
                  PKG_graficos.Aparece(Avion);
                  
                  Permiso_Concedido:= False;
               end if;
               
            else
               Hacer_Un_Paso_Vuelo;
            end if;
         end if;
      end loop;
        
   exception
      when event: DETECTADA_POSIBLE_COLISION =>
         PKG_debug.Escribir("Colision detectada. Desaparece AvionID: " & T_IdAvion'Image(Avion.id));
         PKG_graficos.Desaparece(Avion);
         
      when event: others =>
         PKG_debug.Escribir("Error en task T_Tarea_Avion: " & Exception_Name((event)));
   end T_Tarea_Avion;
   

   task body Tarea_GeneraAviones is
      
      type Ptr_T_Tarea_Avion is access T_Tarea_Avion;
      
      
      package Random_Retardo is new Ada.Numerics.Discrete_Random (T_RetardoAparicionAviones);
      Generador: Random_Retardo.Generator;
      Retardo : T_RetardoAparicionAviones;
      
      Info_Avion : Ptr_T_RecordAvion; --variable temporal
      
   begin
      Random_Retardo.Reset(Generador);
      
      for i in 1 .. NUM_INICIAL_AVIONES_AEROVIA loop
         -- inicializar la info del avion
         for Aerovia in T_Rango_AeroVia range 1 .. 4 loop
            Info_Avion := new T_RecordAvion;
            Info_Avion.id := T_IdAvion(i -1); --Va de 0 a 2 pq es un tipo MOD 3
            Info_Avion.aerovia := Aerovia;
            Info_Avion.aerovia_inicial := Aerovia;
            Info_Avion.pista := 0; -- pq no tiene pista asignada
            Info_Avion.color := Blue;
            
            if Aerovia mod 2 /= 0 then
               Info_Avion.velocidad.X := VELOCIDAD_VUELO;
            else
               Info_Avion.velocidad.X := -VELOCIDAD_VUELO;
            end if;
            Info_Avion.velocidad.Y := 0;
            
            Info_Avion.pos := PKG_graficos.Pos_Inicio(Aerovia);
            Info_Avion.tren_aterrizaje := False;
            
            --Crear avion en forma dinámica
            declare
               Nuevo_Avion_Task :  Ptr_T_Tarea_Avion := new T_Tarea_Avion(Info_Avion);
            begin
               null;
            end;
            
            -- Crear un tiempo entre aviones al crear
            Retardo := Random_Retardo.Random(Generador);
            delay(Duration(Retardo));
            
         end loop;
      end loop;
      
   exception
      when event: others =>
         PKG_debug.Escribir("Error en task Tarea_GeneraAviones: " & Exception_Name(Exception_Identity(event)));
   end Tarea_GeneraAviones;
   
begin
   declare
      --Ada Calendar
      Crono : PKG_cronometro.Ptr_T_Cronometro_Calendar := new PKG_cronometro.T_Cronometro_Calendar;
         
      --Ada Real Time ok
      --Crono : PKG_cronometro.Ptr_T_Cronometro_Real_time := new PKG_cronometro.T_Cronometro_Real_Time;
   begin
      null;
   end;
   
end pkg_aviones;
