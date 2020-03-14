import 'package:flutter/material.dart';
import 'package:resumeflutter/ui/Contact.dart';
import 'package:resumeflutter/ui/Education.dart';
import 'package:resumeflutter/ui/Experiences.dart';
import 'package:resumeflutter/ui/Introduction.dart';
import 'package:resumeflutter/utils/contants.dart';

import 'About.dart';
import 'Skills.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController;
  double elevation = 0;
  int currentIndex = 0;
  Color backgroundColor = defaultLight;

  scrollListener() {
    if (scrollController.offset <= scrollController.position.minScrollExtent &&
        !scrollController.position.outOfRange) {
      setState(() {
        backgroundColor = defaultLight;
        elevation = 0;
      });
    } else
      setState(() {
        backgroundColor = defaultDart;
        elevation = 1;
      });
  }

  @override
  void initState() {
    // TODO: implement initState
    scrollController = ScrollController();
    scrollController.addListener(scrollListener);
    super.initState();
  }

  List<String> tops = [
    'About',
    'Education',
    'Skills',
    'Experience',
    'Contact Me'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultLight,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: elevation,
        actions: <Widget>[
          ListView.builder(
            itemCount: tops.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  print(index);
                  scrollController.animateTo(
                    index.toDouble(),
                    duration: Duration(seconds: 1),
                    curve: Curves.linear,
                  );
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Text(
                  tops[index],
                  style: TextStyle(
                    color: index == currentIndex ? defaultYellow : defaultGrey,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        controller: scrollController,
        shrinkWrap: true,
        children: <Widget>[
          Introduction(),
          About(),
          Education(),
          Skills(),
          Experiences(),
          Contact(),
        ],
      ),
    );
  }
}
