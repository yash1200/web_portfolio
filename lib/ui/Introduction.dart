import 'dart:math';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:resumeflutter/utils/CustomFlatbutton.dart';
import 'package:resumeflutter/values/values.dart';
import 'package:url_launcher/url_launcher.dart';

class Introduction extends StatelessWidget {
  _launchURL() async {
    var url = cVUrl;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                  _launchURL();
                },
                text: 'View CV',
              ),
            ],
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Container(
            height: min(size.height * 0.60, size.width * 0.60),
            width: min(size.height * 0.60, size.width * 0.60),
            child: FlareActor(
              'assets/Boy.flr',
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: "coding",
            ),
          ),
        ],
      ),
    );
  }
}
