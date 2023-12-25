import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:staging_loop/staging_loop.dart';

void whistleLoopEvents(String eventName) async {

  String? deviceId = await StagingLoop ().initDeviceId();
  String packageName = await StagingLoop ().getpac();
  String networkType = await StagingLoop ().getConnectionType();
  String ip = await StagingLoop ().getIP();
  String? userAgent = await StagingLoop ().getDeviceType();
  String clickedTime = await StagingLoop ().getTime();
  String clickedDate = await StagingLoop ().getDate();
  String platformOs = await StagingLoop ().getPlatform();
  String timeZone = await StagingLoop ().getTimezone();

  var request = http.Request(
      'POST',
      Uri.parse(
          'http://13.232.216.75/whistle-follow-utils/sdk_test.php?device_id=$deviceId&event_name=$eventName&package_name=$packageName&network_type=$networkType&ip=$ip&user_agent=$userAgent&clicked_time=$clickedTime&clicked_date=$clickedDate&platform_os=$platformOs&time_zone=$timeZone'));
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    debugPrint("sfhdsuyfgvudsgfusdgvf $request");
    debugPrint(await response.stream.bytesToString());
  } else {
    debugPrint(response.reasonPhrase);
  }
}