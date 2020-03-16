import 'package:flutter/material.dart';

import './CustomBackButton.dart';
import './ProfilePage.dart';

class UpdateAbout extends StatefulWidget {
String firstName;
  String lastName;
  String phone;
  String email;
  String about;

  UpdateAbout(this.firstName, this.lastName, this.phone, this.email, this.about);

  @override
  _UpdateAboutState createState() => new _UpdateAboutState(firstName, lastName, phone, email, about);
}

class _UpdateAboutState extends State<UpdateAbout> {
  String firstName;
  String lastName;
  String phone;
  String email;
  String about;
  static final String _hintText = 'Write a little bit about yourself. Do you like chatting? are you a smoker? Do you bring pets with you? Etc.';

  _UpdateAboutState(this.firstName, this.lastName, this.phone, this.email, this.about);

  void _update() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(firstName, lastName, phone, email, about)));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Column (children: <Widget>[
                      CustomBackButton(),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Text(
                        'What\'s type of passenger are you?',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20.0),
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                                child: SizedBox(
                                width: 350,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: _hintText,
                                  ),
                                  onChanged: (String str) {
                                    setState(() {
                                      about = str;
                                    });
                                  },
                                ),
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 350,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 300.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 70.0,
                          child: RaisedButton(
                            elevation: 5.0,
                            color: Colors.black,
                            child: Text(
                              'Update',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            onPressed: _update,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}
