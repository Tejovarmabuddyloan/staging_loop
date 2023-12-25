import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:staging_loop/staging_loop_method_channel.dart';

void main() {
  MethodChannelStagingLoop platform = MethodChannelStagingLoop();
  const MethodChannel channel = MethodChannel('staging_loop');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
