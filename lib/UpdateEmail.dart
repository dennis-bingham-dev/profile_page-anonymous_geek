import 'package:flutter/material.dart';

import './CustomBackButton.dart';
import './ProfilePage.dart';

class UpdateEmail extends StatefulWidget {
  String firstName;
  String lastName;
  String phone;
  String email;
  String about;

  UpdateEmail(this.firstName, this.lastName, this.phone, this.email, this.about);

  @override
  _UpdateEmailState createState() => new _UpdateEmailState(firstName, lastName, phone, email, about);
}

class _UpdateEmailState extends State<UpdateEmail> {
  String firstName;
  String lastName;
  String phone;
  String email;
  String about;

  _UpdateEmailState(this.firstName, this.lastName, this.phone, this.email, this.about);

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
                        padding: EdgeInsets.only(left: 25.0),
                        child: Text(
                        'What\'s your email?',
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
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                                child: SizedBox(
                                width: 350.0,
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Your email address',
                                  ),
                                  onChanged: (String str) {
                                    setState(() {
                                      email = str;
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
