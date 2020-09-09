import 'package:flutter/material.dart';
import 'package:resumeflutter/values/values.dart';

class CustomContainer extends StatelessWidget {
  final String text, image;

  CustomContainer({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.10,
      width: size.width * 0.10,
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
            height: size.width * 0.05,
            width: size.width * 0.05,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: styleDescription,
          ),
        ],
      ),
    );
  }
}
