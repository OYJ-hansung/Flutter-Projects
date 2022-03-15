// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './textcontrol.dart';
import './restart.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<MyApp> {
  var textIndex = 0;

  final text_list = const [
    'One',
    'Two',
    'Three',
    'Four',
  ];

  void changeText() {
    setState(() {
      textIndex += 1;
    });
    print(textIndex);
  }

  void _refresh() {
    setState(() {
      textIndex = 0;
    });
    print(textIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First assignment!'),
          ),
          body: textIndex < text_list.length
              ? TextControl(
                  textIndex: textIndex,
                  text_list: text_list,
                  textHandler: changeText)
              : restart(_refresh)),
    );
  }
}
