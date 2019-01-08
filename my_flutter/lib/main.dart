import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FlutterView(),
    routes: {'/flutterView': (BuildContext context) => FlutterView()},
  ));
}

class FlutterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: 'Login',
                  labelStyle: TextStyle(color: Colors.red, fontSize: 20.0)),
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.red, fontSize: 20.0)),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            FlatButton(
              child: Text('Login', style: TextStyle(fontSize: 20.0),),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
