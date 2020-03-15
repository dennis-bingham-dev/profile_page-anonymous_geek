import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 50.0),
            child: SizedBox(
              width: double.infinity,
              height: 70.0,
              child: RaisedButton(
                elevation: 0.0,
                color: Colors.transparent,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30.0
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
  }
}
