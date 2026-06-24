package body pkg_espacio_aereo is

   protected body T_PO_Aerovia is
      function Zona_Seguridad_Libre return Boolean is
      begin
         return not Rejilla(T_Rango_Rejilla_X'First) and then
           not rejilla(T_Rango_Rejilla_X'First +1) and then
           not rejilla(T_Rango_Rejilla_X'Last) and then
           not rejilla(T_Rango_Rejilla_X'Last -1);
      end Zona_Seguridad_Libre;
      
      entry Solicitar_Acceso (Celda_Inicial : in T_Rango_Rejilla_X)
        when Zona_Seguridad_Libre and Num_Aviones < MAX_AVIONES_AEROVIA is
      begin
         Num_Aviones := Num_Aviones +1;
         
         Rejilla(Celda_Inicial-1) := True;
         Rejilla(Celda_Inicial) := True;
         Rejilla(Celda_Inicial+1) := True;
      end Solicitar_Acceso;
      
      procedure Actualizar_Posicion(Celda_Antigua, Celda_Nueva : in T_Rango_Rejilla_X) is
      begin
         --liberar la pos antigua
         Rejilla(Celda_Antigua -1) := False;
         Rejilla(Celda_Antigua) := False;
         Rejilla(Celda_Antigua +1) := False;
         
         --marcar nueva pos
         Rejilla(Celda_Nueva -1) := TRUE;
         Rejilla(Celda_Nueva) := TRUE;
         Rejilla(Celda_Nueva +1) := TRUE;
      end Actualizar_Posicion;
      
      end T_PO_Aerovia;

end pkg_espacio_aereo;
