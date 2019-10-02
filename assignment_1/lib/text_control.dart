import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeTextHandler;

  TextControl({@required this.changeTextHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Press me, bitch.'),
        onPressed: changeTextHandler,
      ),
    );
  }
}
