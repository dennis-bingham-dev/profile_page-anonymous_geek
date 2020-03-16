import 'package:flutter/material.dart';

import './CustomBackButton.dart';

class UpdateProfileImage extends StatefulWidget {
  @override
  _UpdateImageState createState() => new _UpdateImageState();
}

class _UpdateImageState extends State<UpdateProfileImage> {
  String imageURL = 'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg';
  String firstName = "";
  String lastName = "";

  void _update() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: Container(
          width: double.infinity,
          alignment: Alignment.center,
          // padding: EdgeInsets.only(top: 100.0),
          child: Column (children: <Widget>[
                      CustomBackButton(),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                        'Upload a photo of yourself:',
                        style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(25.0),
                        child: Image(
                          image: NetworkImage(imageURL),
                        ),
                      ),
                      Container(
                        width: 350,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 75.0),
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
