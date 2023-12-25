// import 'package:flutter_test/flutter_test.dart';
// import 'package:staging_loop/staging_loop.dart';
// import 'package:staging_loop/staging_loop_platform_interface.dart';
// import 'package:staging_loop/staging_loop_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockStagingLoopPlatform
//     with MockPlatformInterfaceMixin
//     implements StagingLoopPlatform {
//
//   @override
//   Future<String> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final StagingLoopPlatform initialPlatform = StagingLoopPlatform.instance;
//
//   test('$MethodChannelStagingLoop is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelStagingLoop>());
//   });
//
//   test('getPlatformVersion', () async {
//     StagingLoop stagingLoopPlugin = StagingLoop();
//     MockStagingLoopPlatform fakePlatform = MockStagingLoopPlatform();
//     StagingLoopPlatform.instance = fakePlatform;
//
//     expect(await stagingLoopPlugin.getPlatformVersion(), '42');
//   });
// }
