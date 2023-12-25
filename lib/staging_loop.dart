
import 'staging_loop_platform_interface.dart';

class StagingLoop {
  Future<String> getPlatformVersion() {
    return StagingLoopPlatform.instance.getPlatformVersion();
  }


  Future<String> initDeviceId() {
    return StagingLoopPlatform.instance.initDeviceId();
  }

  Future<String> getpac() {
    return StagingLoopPlatform.instance.getpac();
  }

  Future<String> getIP() {
    return StagingLoopPlatform.instance.getIP();
  }

  Future<String> getPlatform() {
    return StagingLoopPlatform.instance.getPlatform();
  }

  Future<String> getDeviceType() {
    return StagingLoopPlatform.instance.getDeviceType();
  }

  Future<String> getTime() {
    return StagingLoopPlatform.instance.getTime();
  }

  Future<String> getDate() {
    return StagingLoopPlatform.instance.getDate();
  }

  Future<String> getConnectionType() {
    return StagingLoopPlatform.instance.getConnectionType();
  }
  Future<String> getTimezone() {
    return StagingLoopPlatform.instance.getTimezone();
  }
}

