import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'staging_loop_platform_interface.dart';
import 'dart:io';
import 'package:advertising_id/advertising_id.dart'; //initDeviceId
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:http/http.dart' as http;


/// An implementation of [StagingLoopPlatform] that uses method channels.
class MethodChannelStagingLoop extends StagingLoopPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('staging_loop');


  @override
  FutureOr<String?> initDeviceId() async {
    String? advertisingId;
    try {
      advertisingId =   await AdvertisingId.id(true);
    } on PlatformException {
      advertisingId = 'Failed to get advertising id.';
    }
    return advertisingId;
  }
  /// Retrieves the package name.
  @override
  FutureOr<String> getpac() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String packageName = packageInfo.packageName;
    return packageName;
  }
  /// Retrieves the IP address.
  @override
  FutureOr<String> getIP() async {
    final response = await http.get(Uri.parse(
        'http://13.232.216.75/whistle-follow-utils/ip_utils_loop.php'));
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      return jsonResponse['data']['ip'];
    } else {
      throw Exception('Failed to fetch IP');
    }
  }

    /// Retrieves the device type.
  @override
  FutureOr<String?> getDeviceType() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.model;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return iosInfo.utsname.machine;
    }
    return 'unknown';
  }
  /// Retrieves the current time.

  @override
  FutureOr<String> getTime() async {
    DateTime now = DateTime.now();
    // String date = '${now.year}-${now.month}-${now.day}';
    String time = '${now.hour}:${now.minute}:${now.second}';

    return time;
  }
  /// Retrieves the current date.
  @override
  FutureOr<String> getDate() async {
    DateTime now = DateTime.now();
    String date = '${now.year}-${now.month}-${now.day}';
    return date;

  }

  @override
  FutureOr<String> getTimezone() async {
    final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
    return currentTimeZone;
  }

  /// Retrieves the platform.
  @override
  FutureOr<String> getPlatform() async {
    if (Platform.isAndroid) {
      return 'Android';
    } else if (Platform.isIOS) {
      return 'iOS';
    } else {
      return 'Unknown';
    }
  }
  /// Retrieves the network connection type.

  @override
  FutureOr<String> getConnectionType() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return 'Mobile';
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return 'WiFi';
    } else if (connectivityResult == ConnectivityResult.ethernet) {
      return 'Ethernet';
    } else if (connectivityResult == ConnectivityResult.vpn) {
      return 'VPN';
    } else if (connectivityResult == ConnectivityResult.bluetooth) {
      return 'Bluetooth';
    } else if (connectivityResult == ConnectivityResult.other) {
      return 'Other';
    } else if (connectivityResult == ConnectivityResult.none) {
      return 'None';
    } else {
      return 'Unknown';
    }
  }
}
