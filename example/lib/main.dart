import 'package:flutter/material.dart';

import 'package:staging_loop/whistle_pixel_fire.dart';

void main() {
  runApp( MyApp());
  WhistleLoop.initialize();

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              child: Text('Fetch All Data'),
              onPressed: () {
                whistleLoopEvents("Sendsms");

              },
            ),
          ],
        ),
      ),
    );
  }
}
