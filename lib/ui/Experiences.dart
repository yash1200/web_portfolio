import 'package:flutter/material.dart';
import 'package:resumeflutter/widgets/CustomTile.dart';
import 'package:resumeflutter/widgets/Title.dart';
import 'package:resumeflutter/values/values.dart';

class Experiences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.70,
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
            height: 15,
          ),
          Text(
            experienceQoute,
            style: defaultStyle,
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            height: size.width * 0.185,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: experiences.length,
              itemBuilder: (context, index) {
                return CustomTile(
                  exp: experiences[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
