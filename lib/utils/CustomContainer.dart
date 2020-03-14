import 'package:flutter/material.dart';
import 'package:resumeflutter/utils/contants.dart';

class CustomContainer extends StatelessWidget {
  String text, image;

  CustomContainer({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.10,
      width: size.width * 0.10,
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: BorderRadius.circular(10),
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
