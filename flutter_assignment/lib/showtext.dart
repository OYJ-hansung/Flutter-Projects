import 'package:flutter/material.dart';

class showText extends StatelessWidget {
  final String theText;
  final Function textHandler;

  showText(this.theText, this.textHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: Text(theText),
      onPressed: textHandler,
    ));
  }
}
