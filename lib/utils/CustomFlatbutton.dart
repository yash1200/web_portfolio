import 'package:flutter/material.dart';

import 'contants.dart';
import 'package:resumeflutter/Extensions/hover_extensions.dart';

class CustomFlatButton extends StatelessWidget {
  VoidCallback onTap;
  String text;

  CustomFlatButton({this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 12, 30, 12),
        child: Text(
          text,
          style: defaultButtonStyle,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: defaultYellow,
          width: 2,
        ),
      ),
    ).showCursorOnHover;
  }
}
