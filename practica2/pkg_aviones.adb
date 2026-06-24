with PKG_tipos; use PKG_tipos;
with PKG_graficos;
with PKG_debug;
with Ada.Exceptions; use Ada.Exceptions;
with Ada.Numerics.Discrete_Random;

package body pkg_aviones is

   task body T_Tarea_Avion is
      Avion : T_RecordAvion := Datos_Avion.all;
      
   begin
      PKG_debug.Escribir("Avion ID:" & T_IdAvion'Image(Avion.id) & " en la Aerovia: " & T_Rango_AeroVia'Image(Avion.aerovia));
      
      PKG_graficos.Aparece(Avion);
      
      loop
         delay(RETARDO_MOVIMIENTO);
         PKG_graficos.Actualiza_Movimiento(Avion);
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
   
     
         
end pkg_aviones;
