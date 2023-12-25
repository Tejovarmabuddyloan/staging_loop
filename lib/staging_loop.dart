
import 'staging_loop_platform_interface.dart';
import 'dart:async';

class StagingLoop {
  FutureOr<String> getPlatformVersion() {
    return StagingLoopPlatform.instance.getPlatformVersion();
  }


  FutureOr<String?> initDeviceId() {
    return StagingLoopPlatform.instance.initDeviceId();
  }

  FutureOr<String> getpac() {
    return StagingLoopPlatform.instance.getpac();
  }

  FutureOr<String> getIP() {
    return StagingLoopPlatform.instance.getIP();
  }

  FutureOr<String> getPlatform() {
    return StagingLoopPlatform.instance.getPlatform();
  }

  FutureOr<String?> getDeviceType() {
    return StagingLoopPlatform.instance.getDeviceType();
  }

  FutureOr<String> getTime() {
    return StagingLoopPlatform.instance.getTime();
  }

  FutureOr<String> getDate() {
    return StagingLoopPlatform.instance.getDate();
  }

  FutureOr<String> getConnectionType() {
    return StagingLoopPlatform.instance.getConnectionType();
  }
  FutureOr<String> getTimezone() {
    return StagingLoopPlatform.instance.getTimezone();
  }
}

