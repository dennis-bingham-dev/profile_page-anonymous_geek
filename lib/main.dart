import 'package:flutter/material.dart';

import './profileImageIcon.dart';
import './infoTile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: new ProfilePage(),
    );
  }
}

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

  var info = [
    {'title': 'Name', 'item': name, 'action': _action},
    {'title': 'Phone', 'item': phone, 'action': _action},
    {'title': 'Email', 'item': email, 'action': _action},
    {'title': 'Tell us about yourself', 'item': about, 'action': _action},
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
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 1.0),
                        child: Row (
                          children: <Widget>[
                            Expanded(
                              child: SizedBox(
                                height: 450,
                                child: ListView.separated(
                                  separatorBuilder: (context, index) => Divider(
                                    indent: 20.0,
                                    endIndent: 20.0,
                                    color: Color(0xff3A60D5),
                                  ),
                                  itemCount: info.length,
                                  itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Container(
                                      child: InfoTile(
                                        info[index]['title'],
                                        info[index]['item'],
                                        info[index]['action']
                                      ),
                                    ),
                                  );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}
