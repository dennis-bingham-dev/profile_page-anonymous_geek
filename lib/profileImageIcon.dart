import 'package:flutter/material.dart';

import './UpdateProfileImage.dart';

class ProfileImageIcon extends StatelessWidget {
  final String _imageURL = 'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
            margin: EdgeInsets.all(20.0),
            width: 190,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: CircleAvatar(
                          radius: 75,
                          backgroundColor: Color(0xff3A60D5),
                          child: CircleAvatar(
                                  radius: 70,
                                  backgroundImage: NetworkImage(_imageURL),
                                ),
                              ),
                            ),
                        Container(
                          alignment: Alignment.topRight,
                          child: RawMaterialButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateProfileImage()));
                            },
                            child: Icon(
                              Icons.edit,
                                color: Color(0xff3A60D5),
                                size: 25.0
                              ),
                            shape: CircleBorder(),
                            elevation: 2.0,
                            fillColor: Colors.white,
                            padding: const EdgeInsets.all(5.0),
                          ),
                        ),
                      ]),
                    );
  }
}
