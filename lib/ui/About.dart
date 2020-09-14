import 'package:flutter/material.dart';
import 'package:resumeflutter/network/network.dart';
import 'package:resumeflutter/utils/CustomFlatbutton.dart';
import 'package:resumeflutter/utils/Title.dart';
import 'package:resumeflutter/values/values.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.60,
      color: defaultLighter,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CustomTitle(
            text: 'About Me',
            center: false,
          ),
          SizedBox(
            width: size.width * 0.20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: size.width * 0.40,
                child: Text(
                  about,
                  style: defaultStyle,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CustomFlatButton(
                    text: 'View Works',
                    onTap: () {
                      Network().launchURL(githubRepoUrl);
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomFlatButton(
                    text: 'View CV',
                    onTap: () {
                      Network().launchURL(resumeUrl);
                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
