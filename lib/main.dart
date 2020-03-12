import 'package:flutter/material.dart';

import './profileImageIcon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(100.0),
          child: Column (children: <Widget>[
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    ProfileImageIcon(),
                  ],)
              ),
      ),
    );
  }
}
