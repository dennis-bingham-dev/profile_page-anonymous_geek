import 'package:flutter/material.dart';

import './UpdateName.dart';
import './UpdatePhone.dart';
import './UpdateEmail.dart';
import './UpdateAbout.dart';
import './Name.dart';

class InfoTile extends StatelessWidget {
  BuildContext ctx;
  final String title;
  final String item;
  final String action;
  Function _actionFunction;

  Name name;
  String phone;
  String email;
  String about;

  InfoTile(this.ctx, this.title, this.item, this.action, this.name, this.phone, this.email, this.about) {
    switch (action) {
      case 'updateName':
        _actionFunction = updateName;
        break;
      case 'updatePhone':
        _actionFunction = updateNumber;
        break;
      case 'updateEmail':
        _actionFunction = updateEmail;
        break;
      case 'updateAbout':
        _actionFunction = updateAbout;
        break;
      default:
        _actionFunction = null;
        break;
    }
  }

  void updateName() {
    Navigator.push(ctx, MaterialPageRoute(builder: (context) => UpdateName(name, phone, email, about)));
  }
  void updateNumber() {
    Navigator.push(ctx, MaterialPageRoute(builder: (context) => UpdatePhone()));
  }
  void updateEmail() {
    Navigator.push(ctx, MaterialPageRoute(builder: (context) => UpdateEmail()));
  }
  void updateAbout() {
    Navigator.push(ctx, MaterialPageRoute(builder: (context) => UpdateAbout()));
  }
  // InfoTile.phone()
// InfoTile.email()
  // InfoTile.about()
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
            title: Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xffA9AAAA),
              ),
            ),
            subtitle: Text(
              item,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
                color: Color(0xffA9AAAA),
                size: 30.0,
            ),
            enabled: action == null ? false : true,
            onTap: _actionFunction,
          );
  }
}
