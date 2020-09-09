import 'package:flutter/material.dart';
import 'package:resumeflutter/values/values.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  final bool center;

  CustomTitle({this.text, this.center = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          center ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          text,
          style: defaultBold,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 100,
          height: 5,
          color: defaultYellow,
        ),
      ],
    );
  }
}
