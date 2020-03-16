import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter/scheduler.dart';

import './profileImageIcon.dart';
import './ItemList.dart';
import './Name.dart';

class ProfilePage extends StatefulWidget {
  final Name name;
  final String phone;
  final String email;
  final String about;

  ProfilePage(this.name, this.phone, this.email, this.about);

  @override
  _ProfilePageState createState() => new _ProfilePageState(name, phone, email, about);
}

class _ProfilePageState extends State<ProfilePage> {
  final Name name;
  final String phone;
  final String  email;
  final String about;

  _ProfilePageState(this.name, this.phone, this.email, this.about);

  static Name _name;
  static String _phone;
  static String _email;
  static String _about;


  List info = [
    {'title': 'Name', 'item': '${_name.getFirstName} ${_name.getLastName}', 'action': 'updateName'},
    {'title': 'Phone', 'item': _phone, 'action': 'updatePhone'},
    {'title': 'Email', 'item': _email, 'action': 'updateEmail'},
    {'title': 'Tell us about yourself', 'item': _about, 'action': 'updateAbout'},
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
                      ItemList(info, name, phone, email, about),
                    ],
                  ),
                ),
    );
  }
}
