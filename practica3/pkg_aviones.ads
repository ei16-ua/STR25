with PKG_tipos; use PKG_tipos;
package pkg_aviones is
   task type T_Tarea_Avion (Datos_Avion : Ptr_T_RecordAvion);
   task Tarea_GeneraAviones;

end pkg_aviones;
