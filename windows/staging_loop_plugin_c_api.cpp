#include "include/staging_loop/staging_loop_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "staging_loop_plugin.h"

void StagingLoopPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  staging_loop::StagingLoopPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
