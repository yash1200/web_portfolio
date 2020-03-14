import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:resumeflutter/Extensions/hover_extensions.dart';
import 'package:resumeflutter/utils/Title.dart';
import 'package:resumeflutter/utils/contants.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  List<String> urlList = [
    'https://github.com/yash1200',
    'https://www.codechef.com/users/yashjohri_1200',
    'https://codeforces.com/profile/yash1200',
    'https://www.hackerrank.com/yashjohri1200',
    'https://www.instagram.com/just_johri/?hl=en',
    'https://www.linkedin.com/in/yash-johri-61014717b/',
    'https://twitter.com/YashJohri17',
  ];

  _launchURL(int index) async {
    if (await canLaunch(urlList[index])) {
      await launch(urlList[index]);
    } else {
      throw 'Could not launch ${urlList[index]}';
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.50,
      width: size.width,
      color: defaultLighter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CustomTitle(
            center: true,
            text: 'Contact Me',
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: defaultGrey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'New Delhi, India',
                        style: styleDescription,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: defaultGrey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SelectableText(
                        'yashjohri1200@gmail.com',
                        style: styleDescription,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Follow Me On',
                    style: styleRole,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: size.width * 0.02,
                        child: ListView.builder(
                          itemCount: social.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                _launchURL(index);
                              },
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Tooltip(
                                  message: socialName[index],
                                  child: Image.asset(
                                    social[index],
                                    height: size.width * 0.02,
                                    width: size.width * 0.02,
                                  ),
                                ),
                              ),
                            ).showCursorOnHover;
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
