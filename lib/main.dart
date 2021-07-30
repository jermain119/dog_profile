import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//statless widegt does 2 things reduces redudant code and hot reloads faster
// doesn't change state the same  overtime => stateless

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // used if multi containers involved
          children: <Widget>[
            // creates a circle frame
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/dog.jpg'),
            ),
            Text(
              'lobo',
              style: TextStyle(
                fontFamily: 'ShadowsIntoLight',
                fontSize: 50.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text(
                  'Being_A_Dog@barking.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                title: Text(
                  '1800-barkme',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
            ),
            Icon(
              Icons.qr_code,
              size: 100.0,
            )
          ],
        )),
      ),
    );
  }
}
