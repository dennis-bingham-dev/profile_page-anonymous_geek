import 'package:flutter/material.dart';

class ProfileImageIcon extends StatelessWidget {
  final String _imageURL = 'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
                      margin: EdgeInsets.all(20.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5.0),
                            alignment: Alignment.center,
                            child: CircleAvatar(
                            radius: 65,
                            backgroundColor: Colors.indigoAccent,
                            child: CircleAvatar(
                                radius: 60,
                                backgroundImage: NetworkImage(_imageURL),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: RawMaterialButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                color: Colors.indigoAccent,
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
