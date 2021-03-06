import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:resumeflutter/values/values.dart';

class CustomFlatButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  CustomFlatButton({
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: TextButton(
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Text(
            text,
            style: defaultButtonStyle,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: defaultYellow,
                width: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
