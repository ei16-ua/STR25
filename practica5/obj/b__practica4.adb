pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__practica4.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__practica4.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E068 : Short_Integer; pragma Import (Ada, E068, "system__os_lib_E");
   E016 : Short_Integer; pragma Import (Ada, E016, "ada__exceptions_E");
   E012 : Short_Integer; pragma Import (Ada, E012, "system__soft_links_E");
   E010 : Short_Integer; pragma Import (Ada, E010, "system__exception_table_E");
   E033 : Short_Integer; pragma Import (Ada, E033, "ada__containers_E");
   E063 : Short_Integer; pragma Import (Ada, E063, "ada__io_exceptions_E");
   E007 : Short_Integer; pragma Import (Ada, E007, "ada__strings_E");
   E051 : Short_Integer; pragma Import (Ada, E051, "ada__strings__maps_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "ada__strings__maps__constants_E");
   E038 : Short_Integer; pragma Import (Ada, E038, "interfaces__c_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__exceptions_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "system__object_reader_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "system__dwarf_lines_E");
   E090 : Short_Integer; pragma Import (Ada, E090, "system__soft_links__initialize_E");
   E032 : Short_Integer; pragma Import (Ada, E032, "system__traceback__symbolic_E");
   E421 : Short_Integer; pragma Import (Ada, E421, "ada__assertions_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "ada__numerics_E");
   E094 : Short_Integer; pragma Import (Ada, E094, "ada__strings__utf_encoding_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "ada__tags_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "ada__strings__text_buffers_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "gnat_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "interfaces__c__strings_E");
   E151 : Short_Integer; pragma Import (Ada, E151, "ada__streams_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "system__file_control_block_E");
   E162 : Short_Integer; pragma Import (Ada, E162, "system__finalization_root_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "ada__finalization_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "system__file_io_E");
   E197 : Short_Integer; pragma Import (Ada, E197, "system__storage_pools_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "system__finalization_masters_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "system__storage_pools__subpools_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "system__task_info_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "system__task_primitives__operations_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "ada__calendar_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "ada__calendar__delays_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "ada__real_time_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "ada__text_io_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "system__pool_global_E");
   E484 : Short_Integer; pragma Import (Ada, E484, "system__random_seed_E");
   E455 : Short_Integer; pragma Import (Ada, E455, "system__tasking__initialization_E");
   E463 : Short_Integer; pragma Import (Ada, E463, "system__tasking__protected_objects_E");
   E465 : Short_Integer; pragma Import (Ada, E465, "system__tasking__protected_objects__entries_E");
   E469 : Short_Integer; pragma Import (Ada, E469, "system__tasking__queuing_E");
   E473 : Short_Integer; pragma Import (Ada, E473, "system__tasking__stages_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "glib_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "gtkada__types_E");
   E277 : Short_Integer; pragma Import (Ada, E277, "gdk__frame_timings_E");
   E229 : Short_Integer; pragma Import (Ada, E229, "glib__glist_E");
   E261 : Short_Integer; pragma Import (Ada, E261, "gdk__visual_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "glib__gslist_E");
   E400 : Short_Integer; pragma Import (Ada, E400, "glib__poll_E");
   E223 : Short_Integer; pragma Import (Ada, E223, "gtkada__c_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "glib__object_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "glib__type_conversion_hooks_E");
   E225 : Short_Integer; pragma Import (Ada, E225, "glib__types_E");
   E227 : Short_Integer; pragma Import (Ada, E227, "glib__values_E");
   E217 : Short_Integer; pragma Import (Ada, E217, "gtkada__bindings_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "cairo_E");
   E246 : Short_Integer; pragma Import (Ada, E246, "cairo__region_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "gdk__rectangle_E");
   E237 : Short_Integer; pragma Import (Ada, E237, "glib__generic_properties_E");
   E235 : Short_Integer; pragma Import (Ada, E235, "gdk__color_E");
   E253 : Short_Integer; pragma Import (Ada, E253, "gdk__rgba_E");
   E248 : Short_Integer; pragma Import (Ada, E248, "gdk__event_E");
   E378 : Short_Integer; pragma Import (Ada, E378, "glib__key_file_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "glib__properties_E");
   E402 : Short_Integer; pragma Import (Ada, E402, "glib__spawn_E");
   E398 : Short_Integer; pragma Import (Ada, E398, "glib__main_E");
   E340 : Short_Integer; pragma Import (Ada, E340, "glib__string_E");
   E338 : Short_Integer; pragma Import (Ada, E338, "glib__variant_E");
   E336 : Short_Integer; pragma Import (Ada, E336, "glib__g_icon_E");
   E411 : Short_Integer; pragma Import (Ada, E411, "gtk__actionable_E");
   E281 : Short_Integer; pragma Import (Ada, E281, "gtk__builder_E");
   E320 : Short_Integer; pragma Import (Ada, E320, "gtk__buildable_E");
   E352 : Short_Integer; pragma Import (Ada, E352, "gtk__cell_area_context_E");
   E368 : Short_Integer; pragma Import (Ada, E368, "gtk__css_section_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "gtk__enums_E");
   E326 : Short_Integer; pragma Import (Ada, E326, "gtk__orientable_E");
   E380 : Short_Integer; pragma Import (Ada, E380, "gtk__paper_size_E");
   E376 : Short_Integer; pragma Import (Ada, E376, "gtk__page_setup_E");
   E388 : Short_Integer; pragma Import (Ada, E388, "gtk__print_settings_E");
   E291 : Short_Integer; pragma Import (Ada, E291, "gtk__target_entry_E");
   E289 : Short_Integer; pragma Import (Ada, E289, "gtk__target_list_E");
   E296 : Short_Integer; pragma Import (Ada, E296, "pango__enums_E");
   E314 : Short_Integer; pragma Import (Ada, E314, "pango__attributes_E");
   E300 : Short_Integer; pragma Import (Ada, E300, "pango__font_metrics_E");
   E302 : Short_Integer; pragma Import (Ada, E302, "pango__language_E");
   E298 : Short_Integer; pragma Import (Ada, E298, "pango__font_E");
   E394 : Short_Integer; pragma Import (Ada, E394, "gtk__text_attributes_E");
   E396 : Short_Integer; pragma Import (Ada, E396, "gtk__text_tag_E");
   E306 : Short_Integer; pragma Import (Ada, E306, "pango__font_face_E");
   E304 : Short_Integer; pragma Import (Ada, E304, "pango__font_family_E");
   E308 : Short_Integer; pragma Import (Ada, E308, "pango__fontset_E");
   E310 : Short_Integer; pragma Import (Ada, E310, "pango__matrix_E");
   E294 : Short_Integer; pragma Import (Ada, E294, "pango__context_E");
   E384 : Short_Integer; pragma Import (Ada, E384, "pango__font_map_E");
   E316 : Short_Integer; pragma Import (Ada, E316, "pango__tabs_E");
   E312 : Short_Integer; pragma Import (Ada, E312, "pango__layout_E");
   E382 : Short_Integer; pragma Import (Ada, E382, "gtk__print_context_E");
   E241 : Short_Integer; pragma Import (Ada, E241, "gdk__display_E");
   E275 : Short_Integer; pragma Import (Ada, E275, "gdk__frame_clock_E");
   E239 : Short_Integer; pragma Import (Ada, E239, "gdk__pixbuf_E");
   E259 : Short_Integer; pragma Import (Ada, E259, "gdk__screen_E");
   E271 : Short_Integer; pragma Import (Ada, E271, "gdk__device_E");
   E273 : Short_Integer; pragma Import (Ada, E273, "gdk__drag_contexts_E");
   E330 : Short_Integer; pragma Import (Ada, E330, "gdk__window_E");
   E279 : Short_Integer; pragma Import (Ada, E279, "gtk__accel_group_E");
   E324 : Short_Integer; pragma Import (Ada, E324, "gtk__adjustment_E");
   E342 : Short_Integer; pragma Import (Ada, E342, "gtk__cell_editable_E");
   E344 : Short_Integer; pragma Import (Ada, E344, "gtk__editable_E");
   E346 : Short_Integer; pragma Import (Ada, E346, "gtk__entry_buffer_E");
   E364 : Short_Integer; pragma Import (Ada, E364, "gtk__icon_source_E");
   E386 : Short_Integer; pragma Import (Ada, E386, "gtk__print_operation_preview_E");
   E285 : Short_Integer; pragma Import (Ada, E285, "gtk__selection_data_E");
   E287 : Short_Integer; pragma Import (Ada, E287, "gtk__style_E");
   E392 : Short_Integer; pragma Import (Ada, E392, "gtk__text_iter_E");
   E358 : Short_Integer; pragma Import (Ada, E358, "gtk__tree_model_E");
   E269 : Short_Integer; pragma Import (Ada, E269, "gtk__widget_E");
   E356 : Short_Integer; pragma Import (Ada, E356, "gtk__cell_renderer_E");
   E354 : Short_Integer; pragma Import (Ada, E354, "gtk__cell_layout_E");
   E350 : Short_Integer; pragma Import (Ada, E350, "gtk__cell_area_E");
   E322 : Short_Integer; pragma Import (Ada, E322, "gtk__container_E");
   E332 : Short_Integer; pragma Import (Ada, E332, "gtk__bin_E");
   E318 : Short_Integer; pragma Import (Ada, E318, "gtk__box_E");
   E348 : Short_Integer; pragma Import (Ada, E348, "gtk__entry_completion_E");
   E370 : Short_Integer; pragma Import (Ada, E370, "gtk__misc_E");
   E372 : Short_Integer; pragma Import (Ada, E372, "gtk__notebook_E");
   E390 : Short_Integer; pragma Import (Ada, E390, "gtk__status_bar_E");
   E267 : Short_Integer; pragma Import (Ada, E267, "gtk__style_provider_E");
   E257 : Short_Integer; pragma Import (Ada, E257, "gtk__settings_E");
   E366 : Short_Integer; pragma Import (Ada, E366, "gtk__style_context_E");
   E362 : Short_Integer; pragma Import (Ada, E362, "gtk__icon_set_E");
   E360 : Short_Integer; pragma Import (Ada, E360, "gtk__image_E");
   E334 : Short_Integer; pragma Import (Ada, E334, "gtk__gentry_E");
   E328 : Short_Integer; pragma Import (Ada, E328, "gtk__window_E");
   E255 : Short_Integer; pragma Import (Ada, E255, "gtk__dialog_E");
   E374 : Short_Integer; pragma Import (Ada, E374, "gtk__print_operation_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "gtk__arguments_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "gdk__cairo_E");
   E435 : Short_Integer; pragma Import (Ada, E435, "gdk__device_manager_E");
   E409 : Short_Integer; pragma Import (Ada, E409, "gtk__action_E");
   E413 : Short_Integer; pragma Import (Ada, E413, "gtk__activatable_E");
   E405 : Short_Integer; pragma Import (Ada, E405, "gtk__alignment_E");
   E407 : Short_Integer; pragma Import (Ada, E407, "gtk__button_E");
   E437 : Short_Integer; pragma Import (Ada, E437, "gtk__css_provider_E");
   E415 : Short_Integer; pragma Import (Ada, E415, "gtk__drawing_area_E");
   E439 : Short_Integer; pragma Import (Ada, E439, "gtk__icon_theme_E");
   E478 : Short_Integer; pragma Import (Ada, E478, "gtk__main_E");
   E423 : Short_Integer; pragma Import (Ada, E423, "gtk__marshallers_E");
   E425 : Short_Integer; pragma Import (Ada, E425, "gtk__tree_view_column_E");
   E441 : Short_Integer; pragma Import (Ada, E441, "pango__cairo_E");
   E427 : Short_Integer; pragma Import (Ada, E427, "gtkada__style_E");
   E443 : Short_Integer; pragma Import (Ada, E443, "pkg_buffergenerico_E");
   E445 : Short_Integer; pragma Import (Ada, E445, "pkg_debug_E");
   E474 : Short_Integer; pragma Import (Ada, E474, "pkg_tipos_E");
   E480 : Short_Integer; pragma Import (Ada, E480, "pkg_espacio_aereo_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "pkg_graficos_E");
   E447 : Short_Integer; pragma Import (Ada, E447, "pkg_torre_control_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "pkg_cronometro_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "pkg_aviones_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "pkg_graficos__finalize_body");
      begin
         E145 := E145 - 1;
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "pkg_graficos__finalize_spec");
      begin
         F2;
      end;
      E480 := E480 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "pkg_espacio_aereo__finalize_spec");
      begin
         F3;
      end;
      E427 := E427 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "gtkada__style__finalize_spec");
      begin
         F4;
      end;
      E425 := E425 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "gtk__tree_view_column__finalize_spec");
      begin
         F5;
      end;
      E439 := E439 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "gtk__icon_theme__finalize_spec");
      begin
         F6;
      end;
      E415 := E415 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "gtk__drawing_area__finalize_spec");
      begin
         F7;
      end;
      E437 := E437 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "gtk__css_provider__finalize_spec");
      begin
         F8;
      end;
      E407 := E407 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "gtk__button__finalize_spec");
      begin
         F9;
      end;
      E405 := E405 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "gtk__alignment__finalize_spec");
      begin
         F10;
      end;
      E409 := E409 - 1;
      declare
         procedure F11;
         pragma Import (Ada, F11, "gtk__action__finalize_spec");
      begin
         F11;
      end;
      E435 := E435 - 1;
      declare
         procedure F12;
         pragma Import (Ada, F12, "gdk__device_manager__finalize_spec");
      begin
         F12;
      end;
      E328 := E328 - 1;
      E269 := E269 - 1;
      E358 := E358 - 1;
      E366 := E366 - 1;
      E287 := E287 - 1;
      E390 := E390 - 1;
      E374 := E374 - 1;
      E372 := E372 - 1;
      E334 := E334 - 1;
      E348 := E348 - 1;
      E346 := E346 - 1;
      E255 := E255 - 1;
      E322 := E322 - 1;
      E356 := E356 - 1;
      E350 := E350 - 1;
      E324 := E324 - 1;
      E279 := E279 - 1;
      E275 := E275 - 1;
      E241 := E241 - 1;
      declare
         procedure F13;
         pragma Import (Ada, F13, "gtk__print_operation__finalize_spec");
      begin
         F13;
      end;
      declare
         procedure F14;
         pragma Import (Ada, F14, "gtk__dialog__finalize_spec");
      begin
         F14;
      end;
      declare
         procedure F15;
         pragma Import (Ada, F15, "gtk__window__finalize_spec");
      begin
         F15;
      end;
      declare
         procedure F16;
         pragma Import (Ada, F16, "gtk__gentry__finalize_spec");
      begin
         F16;
      end;
      E360 := E360 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "gtk__image__finalize_spec");
      begin
         F17;
      end;
      E362 := E362 - 1;
      declare
         procedure F18;
         pragma Import (Ada, F18, "gtk__icon_set__finalize_spec");
      begin
         F18;
      end;
      declare
         procedure F19;
         pragma Import (Ada, F19, "gtk__style_context__finalize_spec");
      begin
         F19;
      end;
      E257 := E257 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "gtk__settings__finalize_spec");
      begin
         F20;
      end;
      declare
         procedure F21;
         pragma Import (Ada, F21, "gtk__status_bar__finalize_spec");
      begin
         F21;
      end;
      declare
         procedure F22;
         pragma Import (Ada, F22, "gtk__notebook__finalize_spec");
      begin
         F22;
      end;
      E370 := E370 - 1;
      declare
         procedure F23;
         pragma Import (Ada, F23, "gtk__misc__finalize_spec");
      begin
         F23;
      end;
      declare
         procedure F24;
         pragma Import (Ada, F24, "gtk__entry_completion__finalize_spec");
      begin
         F24;
      end;
      E318 := E318 - 1;
      declare
         procedure F25;
         pragma Import (Ada, F25, "gtk__box__finalize_spec");
      begin
         F25;
      end;
      E332 := E332 - 1;
      declare
         procedure F26;
         pragma Import (Ada, F26, "gtk__bin__finalize_spec");
      begin
         F26;
      end;
      declare
         procedure F27;
         pragma Import (Ada, F27, "gtk__container__finalize_spec");
      begin
         F27;
      end;
      declare
         procedure F28;
         pragma Import (Ada, F28, "gtk__cell_area__finalize_spec");
      begin
         F28;
      end;
      declare
         procedure F29;
         pragma Import (Ada, F29, "gtk__cell_renderer__finalize_spec");
      begin
         F29;
      end;
      declare
         procedure F30;
         pragma Import (Ada, F30, "gtk__widget__finalize_spec");
      begin
         F30;
      end;
      declare
         procedure F31;
         pragma Import (Ada, F31, "gtk__tree_model__finalize_spec");
      begin
         F31;
      end;
      declare
         procedure F32;
         pragma Import (Ada, F32, "gtk__style__finalize_spec");
      begin
         F32;
      end;
      E285 := E285 - 1;
      declare
         procedure F33;
         pragma Import (Ada, F33, "gtk__selection_data__finalize_spec");
      begin
         F33;
      end;
      E364 := E364 - 1;
      declare
         procedure F34;
         pragma Import (Ada, F34, "gtk__icon_source__finalize_spec");
      begin
         F34;
      end;
      declare
         procedure F35;
         pragma Import (Ada, F35, "gtk__entry_buffer__finalize_spec");
      begin
         F35;
      end;
      declare
         procedure F36;
         pragma Import (Ada, F36, "gtk__adjustment__finalize_spec");
      begin
         F36;
      end;
      declare
         procedure F37;
         pragma Import (Ada, F37, "gtk__accel_group__finalize_spec");
      begin
         F37;
      end;
      E273 := E273 - 1;
      declare
         procedure F38;
         pragma Import (Ada, F38, "gdk__drag_contexts__finalize_spec");
      begin
         F38;
      end;
      E271 := E271 - 1;
      declare
         procedure F39;
         pragma Import (Ada, F39, "gdk__device__finalize_spec");
      begin
         F39;
      end;
      E259 := E259 - 1;
      declare
         procedure F40;
         pragma Import (Ada, F40, "gdk__screen__finalize_spec");
      begin
         F40;
      end;
      E239 := E239 - 1;
      declare
         procedure F41;
         pragma Import (Ada, F41, "gdk__pixbuf__finalize_spec");
      begin
         F41;
      end;
      declare
         procedure F42;
         pragma Import (Ada, F42, "gdk__frame_clock__finalize_spec");
      begin
         F42;
      end;
      declare
         procedure F43;
         pragma Import (Ada, F43, "gdk__display__finalize_spec");
      begin
         F43;
      end;
      E382 := E382 - 1;
      declare
         procedure F44;
         pragma Import (Ada, F44, "gtk__print_context__finalize_spec");
      begin
         F44;
      end;
      E312 := E312 - 1;
      declare
         procedure F45;
         pragma Import (Ada, F45, "pango__layout__finalize_spec");
      begin
         F45;
      end;
      E316 := E316 - 1;
      declare
         procedure F46;
         pragma Import (Ada, F46, "pango__tabs__finalize_spec");
      begin
         F46;
      end;
      E384 := E384 - 1;
      declare
         procedure F47;
         pragma Import (Ada, F47, "pango__font_map__finalize_spec");
      begin
         F47;
      end;
      E294 := E294 - 1;
      declare
         procedure F48;
         pragma Import (Ada, F48, "pango__context__finalize_spec");
      begin
         F48;
      end;
      E308 := E308 - 1;
      declare
         procedure F49;
         pragma Import (Ada, F49, "pango__fontset__finalize_spec");
      begin
         F49;
      end;
      E304 := E304 - 1;
      declare
         procedure F50;
         pragma Import (Ada, F50, "pango__font_family__finalize_spec");
      begin
         F50;
      end;
      E306 := E306 - 1;
      declare
         procedure F51;
         pragma Import (Ada, F51, "pango__font_face__finalize_spec");
      begin
         F51;
      end;
      E396 := E396 - 1;
      declare
         procedure F52;
         pragma Import (Ada, F52, "gtk__text_tag__finalize_spec");
      begin
         F52;
      end;
      E298 := E298 - 1;
      declare
         procedure F53;
         pragma Import (Ada, F53, "pango__font__finalize_spec");
      begin
         F53;
      end;
      E302 := E302 - 1;
      declare
         procedure F54;
         pragma Import (Ada, F54, "pango__language__finalize_spec");
      begin
         F54;
      end;
      E300 := E300 - 1;
      declare
         procedure F55;
         pragma Import (Ada, F55, "pango__font_metrics__finalize_spec");
      begin
         F55;
      end;
      E314 := E314 - 1;
      declare
         procedure F56;
         pragma Import (Ada, F56, "pango__attributes__finalize_spec");
      begin
         F56;
      end;
      E289 := E289 - 1;
      declare
         procedure F57;
         pragma Import (Ada, F57, "gtk__target_list__finalize_spec");
      begin
         F57;
      end;
      E388 := E388 - 1;
      declare
         procedure F58;
         pragma Import (Ada, F58, "gtk__print_settings__finalize_spec");
      begin
         F58;
      end;
      E376 := E376 - 1;
      declare
         procedure F59;
         pragma Import (Ada, F59, "gtk__page_setup__finalize_spec");
      begin
         F59;
      end;
      E380 := E380 - 1;
      declare
         procedure F60;
         pragma Import (Ada, F60, "gtk__paper_size__finalize_spec");
      begin
         F60;
      end;
      E368 := E368 - 1;
      declare
         procedure F61;
         pragma Import (Ada, F61, "gtk__css_section__finalize_spec");
      begin
         F61;
      end;
      E352 := E352 - 1;
      declare
         procedure F62;
         pragma Import (Ada, F62, "gtk__cell_area_context__finalize_spec");
      begin
         F62;
      end;
      E281 := E281 - 1;
      declare
         procedure F63;
         pragma Import (Ada, F63, "gtk__builder__finalize_spec");
      begin
         F63;
      end;
      E338 := E338 - 1;
      declare
         procedure F64;
         pragma Import (Ada, F64, "glib__variant__finalize_spec");
      begin
         F64;
      end;
      E209 := E209 - 1;
      declare
         procedure F65;
         pragma Import (Ada, F65, "glib__object__finalize_spec");
      begin
         F65;
      end;
      E277 := E277 - 1;
      declare
         procedure F66;
         pragma Import (Ada, F66, "gdk__frame_timings__finalize_spec");
      begin
         F66;
      end;
      E188 := E188 - 1;
      declare
         procedure F67;
         pragma Import (Ada, F67, "glib__finalize_spec");
      begin
         F67;
      end;
      E465 := E465 - 1;
      declare
         procedure F68;
         pragma Import (Ada, F68, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F68;
      end;
      E199 := E199 - 1;
      declare
         procedure F69;
         pragma Import (Ada, F69, "system__pool_global__finalize_spec");
      begin
         F69;
      end;
      E149 := E149 - 1;
      declare
         procedure F70;
         pragma Import (Ada, F70, "ada__text_io__finalize_spec");
      begin
         F70;
      end;
      E213 := E213 - 1;
      declare
         procedure F71;
         pragma Import (Ada, F71, "system__storage_pools__subpools__finalize_spec");
      begin
         F71;
      end;
      E195 := E195 - 1;
      declare
         procedure F72;
         pragma Import (Ada, F72, "system__finalization_masters__finalize_spec");
      begin
         F72;
      end;
      declare
         procedure F73;
         pragma Import (Ada, F73, "system__file_io__finalize_body");
      begin
         E159 := E159 - 1;
         F73;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;
   pragma Favor_Top_Level (No_Param_Proc);

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           True, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (True, True, False, False, True, True, False, False, 
           True, False, False, True, True, True, True, False, 
           False, False, False, True, False, False, True, True, 
           False, True, True, False, True, True, True, True, 
           False, True, False, False, False, True, False, False, 
           True, False, True, False, True, True, False, True, 
           False, True, True, False, True, True, False, False, 
           True, False, False, True, False, False, True, False, 
           True, True, True, False, False, True, False, True, 
           True, True, False, True, True, False, True, True, 
           True, True, False, False, False, False, False, False, 
           False, False, True, False, True, True, False, True, 
           False),
         Count => (0, 0, 0, 1, 0, 1, 2, 0, 1, 0),
         Unknown => (False, False, False, False, False, False, True, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E010 := E010 + 1;
      Ada.Containers'Elab_Spec;
      E033 := E033 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E063 := E063 + 1;
      Ada.Strings'Elab_Spec;
      E007 := E007 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E051 := E051 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E055 := E055 + 1;
      Interfaces.C'Elab_Spec;
      E038 := E038 + 1;
      System.Exceptions'Elab_Spec;
      E019 := E019 + 1;
      System.Object_Reader'Elab_Spec;
      E074 := E074 + 1;
      System.Dwarf_Lines'Elab_Spec;
      E045 := E045 + 1;
      System.Os_Lib'Elab_Body;
      E068 := E068 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E090 := E090 + 1;
      E012 := E012 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E032 := E032 + 1;
      E016 := E016 + 1;
      Ada.Assertions'Elab_Spec;
      E421 := E421 + 1;
      Ada.Numerics'Elab_Spec;
      E113 := E113 + 1;
      Ada.Strings.Utf_Encoding'Elab_Spec;
      E094 := E094 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E100 := E100 + 1;
      Ada.Strings.Text_Buffers'Elab_Spec;
      Ada.Strings.Text_Buffers'Elab_Body;
      E005 := E005 + 1;
      Gnat'Elab_Spec;
      E218 := E218 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E193 := E193 + 1;
      Ada.Streams'Elab_Spec;
      E151 := E151 + 1;
      System.File_Control_Block'Elab_Spec;
      E163 := E163 + 1;
      System.Finalization_Root'Elab_Spec;
      System.Finalization_Root'Elab_Body;
      E162 := E162 + 1;
      Ada.Finalization'Elab_Spec;
      E160 := E160 + 1;
      System.File_Io'Elab_Body;
      E159 := E159 + 1;
      System.Storage_Pools'Elab_Spec;
      E197 := E197 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E195 := E195 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Body;
      E213 := E213 + 1;
      System.Task_Info'Elab_Spec;
      E132 := E132 + 1;
      System.Task_Primitives.Operations'Elab_Body;
      E126 := E126 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E110 := E110 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E108 := E108 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E117 := E117 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E149 := E149 + 1;
      System.Pool_Global'Elab_Spec;
      System.Pool_Global'Elab_Body;
      E199 := E199 + 1;
      System.Random_Seed'Elab_Body;
      E484 := E484 + 1;
      System.Tasking.Initialization'Elab_Body;
      E455 := E455 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E463 := E463 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E465 := E465 + 1;
      System.Tasking.Queuing'Elab_Body;
      E469 := E469 + 1;
      System.Tasking.Stages'Elab_Body;
      E473 := E473 + 1;
      Glib'Elab_Spec;
      Gtkada.Types'Elab_Spec;
      E191 := E191 + 1;
      E188 := E188 + 1;
      Gdk.Frame_Timings'Elab_Spec;
      Gdk.Frame_Timings'Elab_Body;
      E277 := E277 + 1;
      E229 := E229 + 1;
      Gdk.Visual'Elab_Body;
      E261 := E261 + 1;
      E231 := E231 + 1;
      E400 := E400 + 1;
      E223 := E223 + 1;
      Glib.Object'Elab_Spec;
      E211 := E211 + 1;
      Glib.Values'Elab_Body;
      E227 := E227 + 1;
      E217 := E217 + 1;
      Glib.Object'Elab_Body;
      E209 := E209 + 1;
      E225 := E225 + 1;
      E233 := E233 + 1;
      E246 := E246 + 1;
      E250 := E250 + 1;
      Glib.Generic_Properties'Elab_Spec;
      Glib.Generic_Properties'Elab_Body;
      E237 := E237 + 1;
      Gdk.Color'Elab_Spec;
      E235 := E235 + 1;
      E253 := E253 + 1;
      E248 := E248 + 1;
      E378 := E378 + 1;
      E263 := E263 + 1;
      E402 := E402 + 1;
      E398 := E398 + 1;
      E340 := E340 + 1;
      Glib.Variant'Elab_Spec;
      Glib.Variant'Elab_Body;
      E338 := E338 + 1;
      E336 := E336 + 1;
      Gtk.Actionable'Elab_Spec;
      E411 := E411 + 1;
      Gtk.Builder'Elab_Spec;
      Gtk.Builder'Elab_Body;
      E281 := E281 + 1;
      E320 := E320 + 1;
      Gtk.Cell_Area_Context'Elab_Spec;
      Gtk.Cell_Area_Context'Elab_Body;
      E352 := E352 + 1;
      Gtk.Css_Section'Elab_Spec;
      Gtk.Css_Section'Elab_Body;
      E368 := E368 + 1;
      E265 := E265 + 1;
      Gtk.Orientable'Elab_Spec;
      E326 := E326 + 1;
      Gtk.Paper_Size'Elab_Spec;
      Gtk.Paper_Size'Elab_Body;
      E380 := E380 + 1;
      Gtk.Page_Setup'Elab_Spec;
      Gtk.Page_Setup'Elab_Body;
      E376 := E376 + 1;
      Gtk.Print_Settings'Elab_Spec;
      Gtk.Print_Settings'Elab_Body;
      E388 := E388 + 1;
      E291 := E291 + 1;
      Gtk.Target_List'Elab_Spec;
      Gtk.Target_List'Elab_Body;
      E289 := E289 + 1;
      E296 := E296 + 1;
      Pango.Attributes'Elab_Spec;
      Pango.Attributes'Elab_Body;
      E314 := E314 + 1;
      Pango.Font_Metrics'Elab_Spec;
      Pango.Font_Metrics'Elab_Body;
      E300 := E300 + 1;
      Pango.Language'Elab_Spec;
      Pango.Language'Elab_Body;
      E302 := E302 + 1;
      Pango.Font'Elab_Spec;
      Pango.Font'Elab_Body;
      E298 := E298 + 1;
      E394 := E394 + 1;
      Gtk.Text_Tag'Elab_Spec;
      Gtk.Text_Tag'Elab_Body;
      E396 := E396 + 1;
      Pango.Font_Face'Elab_Spec;
      Pango.Font_Face'Elab_Body;
      E306 := E306 + 1;
      Pango.Font_Family'Elab_Spec;
      Pango.Font_Family'Elab_Body;
      E304 := E304 + 1;
      Pango.Fontset'Elab_Spec;
      Pango.Fontset'Elab_Body;
      E308 := E308 + 1;
      E310 := E310 + 1;
      Pango.Context'Elab_Spec;
      Pango.Context'Elab_Body;
      E294 := E294 + 1;
      Pango.Font_Map'Elab_Spec;
      Pango.Font_Map'Elab_Body;
      E384 := E384 + 1;
      Pango.Tabs'Elab_Spec;
      Pango.Tabs'Elab_Body;
      E316 := E316 + 1;
      Pango.Layout'Elab_Spec;
      Pango.Layout'Elab_Body;
      E312 := E312 + 1;
      Gtk.Print_Context'Elab_Spec;
      Gtk.Print_Context'Elab_Body;
      E382 := E382 + 1;
      Gdk.Display'Elab_Spec;
      Gdk.Frame_Clock'Elab_Spec;
      Gdk.Pixbuf'Elab_Spec;
      E239 := E239 + 1;
      Gdk.Screen'Elab_Spec;
      Gdk.Screen'Elab_Body;
      E259 := E259 + 1;
      Gdk.Device'Elab_Spec;
      Gdk.Device'Elab_Body;
      E271 := E271 + 1;
      Gdk.Drag_Contexts'Elab_Spec;
      Gdk.Drag_Contexts'Elab_Body;
      E273 := E273 + 1;
      Gdk.Window'Elab_Spec;
      E330 := E330 + 1;
      Gtk.Accel_Group'Elab_Spec;
      Gtk.Adjustment'Elab_Spec;
      Gtk.Cell_Editable'Elab_Spec;
      Gtk.Entry_Buffer'Elab_Spec;
      Gtk.Icon_Source'Elab_Spec;
      Gtk.Icon_Source'Elab_Body;
      E364 := E364 + 1;
      Gtk.Selection_Data'Elab_Spec;
      Gtk.Selection_Data'Elab_Body;
      E285 := E285 + 1;
      Gtk.Style'Elab_Spec;
      E392 := E392 + 1;
      Gtk.Tree_Model'Elab_Spec;
      Gtk.Widget'Elab_Spec;
      Gtk.Cell_Renderer'Elab_Spec;
      E354 := E354 + 1;
      Gtk.Cell_Area'Elab_Spec;
      Gtk.Container'Elab_Spec;
      Gtk.Bin'Elab_Spec;
      Gtk.Bin'Elab_Body;
      E332 := E332 + 1;
      Gtk.Box'Elab_Spec;
      Gtk.Box'Elab_Body;
      E318 := E318 + 1;
      Gtk.Entry_Completion'Elab_Spec;
      Gtk.Misc'Elab_Spec;
      Gtk.Misc'Elab_Body;
      E370 := E370 + 1;
      Gtk.Notebook'Elab_Spec;
      Gtk.Status_Bar'Elab_Spec;
      E267 := E267 + 1;
      Gtk.Settings'Elab_Spec;
      Gtk.Settings'Elab_Body;
      E257 := E257 + 1;
      Gtk.Style_Context'Elab_Spec;
      Gtk.Icon_Set'Elab_Spec;
      Gtk.Icon_Set'Elab_Body;
      E362 := E362 + 1;
      Gtk.Image'Elab_Spec;
      Gtk.Image'Elab_Body;
      E360 := E360 + 1;
      Gtk.Gentry'Elab_Spec;
      Gtk.Window'Elab_Spec;
      Gtk.Dialog'Elab_Spec;
      Gtk.Print_Operation'Elab_Spec;
      E244 := E244 + 1;
      Gdk.Display'Elab_Body;
      E241 := E241 + 1;
      Gdk.Frame_Clock'Elab_Body;
      E275 := E275 + 1;
      Gtk.Accel_Group'Elab_Body;
      E279 := E279 + 1;
      Gtk.Adjustment'Elab_Body;
      E324 := E324 + 1;
      Gtk.Cell_Area'Elab_Body;
      E350 := E350 + 1;
      E342 := E342 + 1;
      Gtk.Cell_Renderer'Elab_Body;
      E356 := E356 + 1;
      Gtk.Container'Elab_Body;
      E322 := E322 + 1;
      Gtk.Dialog'Elab_Body;
      E255 := E255 + 1;
      E344 := E344 + 1;
      Gtk.Entry_Buffer'Elab_Body;
      E346 := E346 + 1;
      Gtk.Entry_Completion'Elab_Body;
      E348 := E348 + 1;
      Gtk.Gentry'Elab_Body;
      E334 := E334 + 1;
      Gtk.Notebook'Elab_Body;
      E372 := E372 + 1;
      Gtk.Print_Operation'Elab_Body;
      E374 := E374 + 1;
      E386 := E386 + 1;
      Gtk.Status_Bar'Elab_Body;
      E390 := E390 + 1;
      Gtk.Style'Elab_Body;
      E287 := E287 + 1;
      Gtk.Style_Context'Elab_Body;
      E366 := E366 + 1;
      Gtk.Tree_Model'Elab_Body;
      E358 := E358 + 1;
      Gtk.Widget'Elab_Body;
      E269 := E269 + 1;
      Gtk.Window'Elab_Body;
      E328 := E328 + 1;
      E207 := E207 + 1;
      Gdk.Device_Manager'Elab_Spec;
      Gdk.Device_Manager'Elab_Body;
      E435 := E435 + 1;
      Gtk.Action'Elab_Spec;
      Gtk.Action'Elab_Body;
      E409 := E409 + 1;
      Gtk.Activatable'Elab_Spec;
      E413 := E413 + 1;
      Gtk.Alignment'Elab_Spec;
      Gtk.Alignment'Elab_Body;
      E405 := E405 + 1;
      Gtk.Button'Elab_Spec;
      Gtk.Button'Elab_Body;
      E407 := E407 + 1;
      Gtk.Css_Provider'Elab_Spec;
      Gtk.Css_Provider'Elab_Body;
      E437 := E437 + 1;
      Gtk.Drawing_Area'Elab_Spec;
      Gtk.Drawing_Area'Elab_Body;
      E415 := E415 + 1;
      Gtk.Icon_Theme'Elab_Spec;
      Gtk.Icon_Theme'Elab_Body;
      E439 := E439 + 1;
      E478 := E478 + 1;
      E423 := E423 + 1;
      Gtk.Tree_View_Column'Elab_Spec;
      Gtk.Tree_View_Column'Elab_Body;
      E425 := E425 + 1;
      E441 := E441 + 1;
      Gtkada.Style'Elab_Spec;
      Gtkada.Style'Elab_Body;
      E427 := E427 + 1;
      E443 := E443 + 1;
      Pkg_Debug'Elab_Body;
      E445 := E445 + 1;
      Pkg_Tipos'Elab_Spec;
      E474 := E474 + 1;
      pkg_espacio_aereo'elab_spec;
      E480 := E480 + 1;
      Pkg_Graficos'Elab_Spec;
      Pkg_Torre_Control'Elab_Spec;
      Pkg_Torre_Control'Elab_Body;
      E447 := E447 + 1;
      Pkg_Graficos'Elab_Body;
      E145 := E145 + 1;
      Pkg_Cronometro'Elab_Spec;
      Pkg_Cronometro'Elab_Body;
      E115 := E115 + 1;
      pkg_aviones'elab_spec;
      pkg_aviones'elab_body;
      E106 := E106 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_practica4");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/str/src/practica4/obj/pkg_buffergenerico.o
   --   /home/str/src/practica4/obj/pkg_debug.o
   --   /home/str/src/practica4/obj/pkg_tipos.o
   --   /home/str/src/practica4/obj/pkg_espacio_aereo.o
   --   /home/str/src/practica4/obj/pkg_torre_control.o
   --   /home/str/src/practica4/obj/pkg_graficos.o
   --   /home/str/src/practica4/obj/pkg_cronometro.o
   --   /home/str/src/practica4/obj/pkg_aviones.o
   --   /home/str/src/practica4/obj/practica4.o
   --   -L/home/str/src/practica4/obj/
   --   -L/home/str/src/practica4/obj/
   --   -L/usr/gnat/lib/gtkada/gtkada.static/gtkada/
   --   -L/usr/gnat/lib/gcc/x86_64-pc-linux-gnu/10.3.1/adalib/
   --   -static
   --   -shared-libgcc
   --   -shared-libgcc
   --   -shared-libgcc
   --   -lgnarl
   --   -lgnat
   --   -lrt
   --   -lpthread
   --   -lm
   --   -ldl
--  END Object file/option list   

end ada_main;
