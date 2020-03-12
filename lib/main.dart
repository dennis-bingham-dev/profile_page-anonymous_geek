import 'package:flutter/material.dart';

import './profileImageIcon.dart';
import './infoTile.dart';

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
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
          ),
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 100.0),
          child: Column (children: <Widget>[
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Color(0xff3A60D5),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    ProfileImageIcon(),
                    InfoTile('Name', 'Micah Smith'),
                    InfoTile('Phone', '(208) 206-5039'),
                    InfoTile('Email', 'micahsmith@gmail.com'),
                    InfoTile('Tell us about yourself', "Hi, my name is Micah Smith. I am from Mesa but go to school in Salt Lake City. I make this drive all the time and have plenty of room."),
                  ],)
              ),
      ),
    );
  }
}
