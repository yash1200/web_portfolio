import 'dart:math';

import 'package:flutter/material.dart';
import 'package:resumeflutter/network/network.dart';
import 'package:resumeflutter/widgets/CustomFlatbutton.dart';
import 'package:resumeflutter/values/values.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.75,
      color: defaultLight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'I\'m $name',
                style: defaultBold,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                field,
                style: defaultStyleSmall,
              ),
              SizedBox(
                height: 5,
              ),
              CustomFlatButton(
                onTap: () {
                  Network().launchURL(resumeUrl);
                },
                text: 'View CV',
              ),
            ],
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Container(
            height: min(size.height * 0.65, size.width * 0.65),
            width: min(size.height * 0.65, size.width * 0.65),
            child: Image.asset(
              'assets/images/boy1.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
