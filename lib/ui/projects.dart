import 'package:flutter/material.dart';
import 'package:resumeflutter/network/network.dart';
import 'package:resumeflutter/widgets/CustomTile.dart';
import 'package:resumeflutter/widgets/Title.dart';
import 'package:resumeflutter/values/values.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.65,
      width: size.width,
      color: defaultLighter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CustomTitle(
            text: 'Projects',
            center: true,
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: size.width * 0.185,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                return CustomTile(
                  exp: projects[index],
                  onTap: () {
                    Network().launchURL(
                      projects[index].url!,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
