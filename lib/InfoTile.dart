import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final String title;
  final String item;
  final Function action;

  InfoTile(this.title, this.item, this.action);

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
            onTap: action,
          );
  }
}
