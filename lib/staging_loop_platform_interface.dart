import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'staging_loop_method_channel.dart';

abstract class StagingLoopPlatform extends PlatformInterface {
  /// Constructs a StagingLoopPlatform.
  StagingLoopPlatform() : super(token: _token);

  static final Object _token = Object();

  static StagingLoopPlatform _instance = MethodChannelStagingLoop();

  /// The default instance of [StagingLoopPlatform] to use.
  ///
  /// Defaults to [MethodChannelStagingLoop].
  static StagingLoopPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StagingLoopPlatform] when
  /// they register themselves.
  static set instance(StagingLoopPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
  Future<String> initDeviceId() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  Future<String> getpac() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  Future<String> getIP() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  Future<String> getPlatform() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  Future<String> getDeviceType() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  Future<String> getTime() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  Future<String> getDate() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  Future<String> getConnectionType() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
  Future<String> getTimezone() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
}
