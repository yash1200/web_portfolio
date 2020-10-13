import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:resumeflutter/values/values.dart';

class CustomFlatButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  CustomFlatButton({this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: FlatButton(
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
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
      ),
    );
  }
}
