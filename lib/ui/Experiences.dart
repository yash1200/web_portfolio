import 'package:flutter/material.dart';
import 'package:resumeflutter/utils/Title.dart';
import 'package:resumeflutter/utils/contants.dart';

class Experiences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.80,
      width: size.width,
      color: defaultLight,
      child: Column(
        children: <Widget>[
          CustomTitle(
            text: 'Work Experiences',
            center: true,
          ),

        ],
      ),
    );
  }
}
