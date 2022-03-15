import 'package:flutter/material.dart';
import 'showtext.dart';

class TextControl extends StatelessWidget {
  final List text_list;
  final int textIndex;
  final Function textHandler;

  TextControl(
      {@required this.textIndex,
      @required this.text_list,
      @required this.textHandler});

  @override
  Widget build(BuildContext context) {
    return Column(children: [showText(text_list[textIndex], textHandler)]);
  }
}
