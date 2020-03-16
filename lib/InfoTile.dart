import 'package:flutter/material.dart';

import './UpdateName.dart';
import './UpdatePhone.dart';
import './UpdateEmail.dart';
import './UpdateAbout.dart';

class InfoTile extends StatelessWidget {
  BuildContext ctx;
  String title;
  String item;
  String action;
  Function _actionFunction;

  String firstName;
  String lastName;
  String phone;
  String email;
  String about;

  InfoTile(this.ctx, this.title, this.item, this.action, this.firstName, this.lastName, this.phone, this.email, this.about) {
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
    Navigator.push(ctx, MaterialPageRoute(builder: (context) => UpdateName(firstName, lastName, phone, email, about)));
  }
  void updateNumber() {
    Navigator.push(ctx, MaterialPageRoute(builder: (context) => UpdatePhone(firstName, lastName, phone, email, about)));
  }
  void updateEmail() {
    Navigator.push(ctx, MaterialPageRoute(builder: (context) => UpdateEmail(firstName, lastName, phone, email, about)));
  }
  void updateAbout() {
    Navigator.push(ctx, MaterialPageRoute(builder: (context) => UpdateAbout(firstName, lastName, phone, email, about)));
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
