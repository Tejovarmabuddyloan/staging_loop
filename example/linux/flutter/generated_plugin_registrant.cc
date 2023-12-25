//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <staging_loop/staging_loop_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) staging_loop_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "StagingLoopPlugin");
  staging_loop_plugin_register_with_registrar(staging_loop_registrar);
}
