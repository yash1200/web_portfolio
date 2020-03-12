import 'package:flutter/material.dart';
import 'package:resumeflutter/ui/Experiences.dart';
import 'package:resumeflutter/ui/Introduction.dart';
import 'package:resumeflutter/utils/contants.dart';

import 'About.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController;
  double elevation = 0;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultLight,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: elevation,
      ),
      body: NotificationListener(
        child: ListView(
          controller: scrollController,
          shrinkWrap: true,
          children: <Widget>[
            Introduction(),
            About(),
            Experiences(),
          ],
        ),
      ),
    );
  }
}
