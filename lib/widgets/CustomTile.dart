import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:resumeflutter/Model/ModelExperience.dart';

import 'package:resumeflutter/values/values.dart';

class CustomTile extends StatelessWidget {
  final ModelExperience exp;
  final VoidCallback onTap;

  CustomTile({this.exp, this.onTap});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor:
            onTap != null ? SystemMouseCursors.click : SystemMouseCursors.basic,
        child: Container(
          height: size.width * 0.185,
          width: size.width * 0.21,
          decoration: BoxDecoration(
            color: tileColor,
            border: Border.all(
              color: Color(0xff4c4c4c),
              width: 1,
            ),
          ),
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                exp.time,
                style: styleCompany,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                exp.title,
                style: styleRole,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                exp.subtitle,
                style: styleCompany,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                exp.description,
                style: styleDescription,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
