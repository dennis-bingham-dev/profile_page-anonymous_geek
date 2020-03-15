import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter/scheduler.dart';

import './UpdateName.dart';
import './profileImageIcon.dart';
import './ItemList.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage();

  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static final String name = 'Micah Smith';
  static final String phone = '(208) 206-5039';
  static final String  email = 'micahsmith@gmail.com';
  static final String about = "Hi, my name is Micah Smith. I am from Mesa but go to school in Salt Lake City. I make this drive all the time and have plenty of room.";

  static void _action() {
    print('button pressed');
  }

  void _updateName() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateName()));
  }

  List info = [
    {'title': 'Name', 'item': name, 'action': 'updateName'},
    {'title': 'Phone', 'item': phone, 'action': 'updatePhone'},
    {'title': 'Email', 'item': email, 'action': 'updateEmail'},
    {'title': 'Tell us about yourself', 'item': about, 'action': 'updateAbout'},
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
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
                      ItemList(info),
                    ],
                  ),
                ),
    );
  }
}
