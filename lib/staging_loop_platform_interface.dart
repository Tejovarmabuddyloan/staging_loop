import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'dart:async';
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

  FutureOr<String> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
  FutureOr<String?> initDeviceId() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  FutureOr<String> getpac() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  FutureOr<String> getIP() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  FutureOr<String> getPlatform() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  FutureOr<String?> getDeviceType() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  FutureOr<String> getTime() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  FutureOr<String> getDate() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }

  FutureOr<String> getConnectionType() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
  FutureOr<String> getTimezone() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
}
