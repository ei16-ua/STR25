--******************* PKG_TORRE_CONTROL.ADS *****************************
-- Paquete que implementa la tarea de la torre de control
--***********************************************************************

with PKG_tipos; use PKG_tipos;

PACKAGE PKG_Torre_Control IS

   TASK Tarea_Torre_Control IS
      ENTRY Iniciar_Torre_Control;
      entry Peticion_Descenso(Aerovia_Destino : in T_Rango_AeroVia; Concedido : out Boolean);
   END Tarea_Torre_Control;

end PKG_Torre_Control;
