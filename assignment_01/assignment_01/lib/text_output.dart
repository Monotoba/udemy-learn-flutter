import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String value;

  // Constructor
  TextOutput(this.value);

  @override
  Widget build(BuildContext context) {
    return Text(value);
  }
}