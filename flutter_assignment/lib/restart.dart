import 'package:flutter/material.dart';

class restart extends StatelessWidget {
  final Function restartHandler;

  restart(this.restartHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        FlatButton(
          child: Text('Restart!'),
          textColor: Colors.blue,
          onPressed: restartHandler,
        )
      ],
    ));
  }
}
