import 'package:flutter/material.dart';
import 'package:resumeflutter/utils/CustomTile.dart';
import 'package:resumeflutter/utils/Title.dart';
import 'package:resumeflutter/utils/contants.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.60,
      width: size.width,
      color: defaultLight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CustomTitle(
            text: 'Education',
            center: true,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: size.width * 0.185,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CustomTile(
                  exp: education[index],
                );
              },
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: education.length,
            ),
          ),
        ],
      ),
    );
  }
}
