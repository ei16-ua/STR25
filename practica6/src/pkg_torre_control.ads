--******************* PKG_TORRE_CONTROL.ADS *****************************
-- Paquete que implementa la tarea de la torre de control
--***********************************************************************
pragma Queuing_Policy(Priority_Queuing);

with PKG_tipos; use PKG_tipos;

PACKAGE PKG_Torre_Control IS

   TASK Tarea_Torre_Control IS
      ENTRY Iniciar_Torre_Control;
      entry Peticion_Descenso(Aerovia_Destino : in T_Rango_AeroVia; Concedido : out Boolean);

      entry Solicitar_Pista(Pista : out T_Rango_Pista);
      entry Solicitar_Aterrizaje(Pista : in T_Rango_Pista);
      entry Liberar_Pista(Pista : in T_Rango_Pista);

   private
      entry Esperar_Pista(1..2); --para reencolar aviones, uno por pista
   END Tarea_Torre_Control;

end PKG_Torre_Control;
