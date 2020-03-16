import 'package:flutter/material.dart';

import './ProfilePage.dart';
import './CustomBackButton.dart';

class UpdateName extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String phone;
  final String  email;
  final String about;

  UpdateName(this.firstName, this.lastName, this.phone, this.email, this.about);
  @override
  _UpdateNameState createState() => new _UpdateNameState(this.firstName, this.lastName, phone, email, about);
}

class _UpdateNameState extends State<UpdateName> {
  String firstName;
  String lastName;
  String phone;
  String  email;
  String about;

  _UpdateNameState(this.firstName, this.lastName, this.phone, this.email, this.about);

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
                        'What\'s your name?',
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
                        padding: EdgeInsets.only(left: 15.0),
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                                child: SizedBox(
                                width: 150.0,
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'First Name',
                                  ),
                                  onChanged: (String str) {
                                    setState(() {
                                      firstName = str;
                                    });
                                  },
                                ),
                              ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                                child: SizedBox(
                                width: 150.0,
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Last Name',
                                  ),
                                  onChanged: (String str) {
                                    setState(() {
                                      lastName = str;
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
