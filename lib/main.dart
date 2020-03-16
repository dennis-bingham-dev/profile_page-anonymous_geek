import 'package:flutter/material.dart';

import './ProfilePage.dart';
import './Name.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final Name name = new Name('Micah', 'Smith');
  static final String phone = '(208) 206-5039';
  static final String  email = 'micahsmith@gmail.com';
  static final String about = "Hi, my name is Micah Smith. I am from Mesa but go to school in Salt Lake City. I make this drive all the time and have plenty of room.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: new ProfilePage(name, phone, email, about),
    );
  }
}
