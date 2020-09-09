import 'package:flutter/material.dart';
import 'package:resumeflutter/Model/ModelExperience.dart';

import 'package:resumeflutter/values/values.dart';

class CustomTile extends StatelessWidget {
  final ModelExperience exp;

  CustomTile({this.exp});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
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
            exp.date,
            style: styleCompany,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            exp.role,
            style: styleRole,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            exp.company,
            style: styleCompany,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            exp.description,
            style: styleDescription,
          ),
        ],
      ),
    );
  }
}
