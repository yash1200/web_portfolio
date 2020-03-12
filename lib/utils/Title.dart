import 'package:flutter/material.dart';
import 'package:resumeflutter/utils/contants.dart';

class CustomTitle extends StatelessWidget {
  String text;
  bool center = true;

  CustomTitle({this.text, this.center});

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
