import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}


class _TextControlState extends State<TextControl>{
  List<String> names = ["Tom", "Mike", "Joe", "Wendy", "Julie"];
  static int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: <Widget>[
        TextOutput(names[index]),
        RaisedButton(
          child: Text('Click'),
          onPressed: () {
            setState(() {
              if(index < 4){
                index++;
              } else {
                index = 0;
              }
            }
          );
        },
      ),
      ],
    );
  }


}