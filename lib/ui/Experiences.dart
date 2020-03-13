import 'package:flutter/material.dart';
import 'package:resumeflutter/utils/CustomTile.dart';
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
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CustomTitle(
            text: 'Work Experiences',
            center: true,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            experience,
            style: defaultStyle,
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            height: size.width * 0.185,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CustomTile(
                  exp: exp[index],
                );
              },
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: exp.length,
            ),
          ),
        ],
      ),
    );
  }
}
