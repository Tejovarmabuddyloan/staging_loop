#ifndef FLUTTER_PLUGIN_STAGING_LOOP_PLUGIN_H_
#define FLUTTER_PLUGIN_STAGING_LOOP_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace staging_loop {

class StagingLoopPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  StagingLoopPlugin();

  virtual ~StagingLoopPlugin();

  // Disallow copy and assign.
  StagingLoopPlugin(const StagingLoopPlugin&) = delete;
  StagingLoopPlugin& operator=(const StagingLoopPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace staging_loop

#endif  // FLUTTER_PLUGIN_STAGING_LOOP_PLUGIN_H_
