import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(100.0),
          child: Column (children: <Widget>[
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.indigoAccent[400],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5.0),
                            alignment: Alignment.center,
                            child: CircleAvatar(
                            radius: 65,
                            backgroundColor: Colors.indigoAccent[400],
                            child: CircleAvatar(
                                radius: 60,
                                backgroundImage: NetworkImage('https://image.shutterstock.com/image-photo/portrait-smiling-red-haired-millennial-260nw-1194497251.jpg') ,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: RawMaterialButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                color: Colors.indigoAccent[400],
                                size: 25.0
                              ),
                              shape: CircleBorder(),
                              elevation: 2.0,
                              fillColor: Colors.white,
                              padding: const EdgeInsets.all(5.0),
                            ),
                          ),
                        ]),
                    ),
                  ],)
              ),
      ),
    );
  }
}
