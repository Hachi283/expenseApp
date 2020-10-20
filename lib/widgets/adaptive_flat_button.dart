import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function _datePickerF;

  AdaptiveFlatButton(this.text, this._datePickerF);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: _datePickerF,
            child: Text(
              text,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          )
        : FlatButton(
            onPressed: _datePickerF,
            child: Text(
              text,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          );
  }
}
