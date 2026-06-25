with PKG_tipos; use PKG_tipos;

package pkg_espacio_aereo is
   protected type T_PO_Aerovia is
      entry Solicitar_Acceso (Celda_Inicial : in T_Rango_Rejilla_X);
      procedure Actualizar_Posicion (Celda_Antigua, Celda_Nueva : in T_Rango_Rejilla_X);
      
      --ampliar el obj protegido
      procedure Reserva_Descenso(Concedido : out Boolean);
      function Zona_Libre(Celda : in T_Rango_Rejilla_X) return Boolean;
      procedure Ocupar_Zona(Celda : in T_Rango_Rejilla_X);
      procedure Liberar_Zona_Y_Salida(Celda : in T_Rango_Rejilla_X);
      
   private
      Rejilla : T_Rejilla_Ocupacion := (others => False);
      Num_Aviones : Natural := 0;
      
      function Zona_Seguridad_Libre return Boolean;
   end T_PO_Aerovia;
   Control_Aerovias : array (T_Rango_Aerovia) of T_PO_Aerovia; --importante, array de objetos protegidos

end pkg_espacio_aereo;
