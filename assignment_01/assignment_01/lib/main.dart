import 'package:flutter/material.dart';

import './text_control.dart';

// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
void main() {
  runApp(MyApp());
}
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
 
  

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Assignment 1"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
          children: <Widget>[
            Center(child: TextControl(),),
          ]
        ),
      ),
    ),
    );
  }
}