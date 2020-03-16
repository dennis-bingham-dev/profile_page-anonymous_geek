import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/scheduler.dart';

import './profileImageIcon.dart';
import './ItemList.dart';

class ProfilePage extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String phone;
  final String email;
  final String about;

  ProfilePage(this.firstName, this.lastName, this.phone, this.email, this.about);

  @override
  _ProfilePageState createState() => new _ProfilePageState(firstName, lastName, phone, email, about);
}

class _ProfilePageState extends State<ProfilePage> {
  final String firstName;
  final String lastName;
  final String phone;
  final String  email;
  final String about;

  static String _firstName;
  static String _lastName;
  static String _phone;
  static String _email;
  static String _about;

  _ProfilePageState(this.firstName, this.lastName, this.phone, this.email, this.about);

  initState() {
    super.initState();
      setState(() {
        _firstName = firstName == null ? '' : firstName;
        _lastName = lastName == null ? '' : lastName;
        _phone = phone == null ? '' : phone;
        _email = email == null ? '' : email;
        _about = about == null ? '' : about;
      });
  }


  List info = [
    {'title': 'Name', 'item': '$_firstName $_lastName', 'action': 'updateName'},
    {'title': 'Phone', 'item': '$_phone', 'action': 'updatePhone'},
    {'title': 'Email', 'item': '$_email', 'action': 'updateEmail'},
    {'title': 'Tell us about yourself', 'item': '$_about', 'action': 'updateAbout'},
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
                      ItemList(info, firstName, lastName, phone, email, about),
                    ],
                  ),
                ),
    );
  }
}
