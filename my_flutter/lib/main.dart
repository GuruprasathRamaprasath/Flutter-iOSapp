import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './dashboard.dart';
import './imagecontainer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Poppins-Medium'),
    routes: {
      '/': (BuildContext context) => MyHomePage(),
      '/dashboardView': (BuildContext context) => DashBoardView(),
    },
  ));
}

class FlutterView extends StatelessWidget {
  static const platform = const MethodChannel('RN.Flutter-iOS/platform');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
        children: <Widget>[
          FractionallySizedBox(
            widthFactor: 1.0,
            child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins-Bold',
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 20,
          ),
          Center(
            child: Container(
                width: 100,
                height: 100,
                decoration: new BoxDecoration(
                    border: Border(),
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage('assets/avatar-01.jpg')))),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                TextField(
                  style: TextStyle(fontSize: 30.0, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins-Medium',
                          fontSize: 20.0)),
                  keyboardType: TextInputType.emailAddress,
                  onSubmitted: (String value) {},
                ),
                TextField(
                  style: TextStyle(fontSize: 30.0, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins-Medium',
                          fontSize: 20.0)),
                  keyboardType: TextInputType.text,
                  onSubmitted: (String value) {},
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            child: RaisedButton(
              child: Text('Login',
                  style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 20.0)),
              color: Colors.green,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              onPressed: () => _getBatteryLevel(),
            ),
          )
        ],
      ),
    );
  }

  // Get battery level.
  final String _batteryLevel = 'Unknown battery level.';

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
  }
}
