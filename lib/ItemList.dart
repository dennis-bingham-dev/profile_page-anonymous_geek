import 'package:flutter/material.dart';

import './InfoTile.dart';

class ItemList extends StatelessWidget {
  List items;

  ItemList(this.items);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
                      color: Color(0xffA9AAAA),
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: InfoTile(
                          context,
                          items[index]['title'],
                          items[index]['item'],
                          items[index]['action'],
                        ),
                      );
                    },
                  ),
                  ),
                ),
              ],
            ),
          );
  }
}