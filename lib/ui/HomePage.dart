import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:resumeflutter/AppProvider/AppProvider.dart';
import 'package:resumeflutter/ui/Contact.dart';
import 'package:resumeflutter/ui/Education.dart';
import 'package:resumeflutter/ui/Experiences.dart';
import 'package:resumeflutter/ui/Introduction.dart';
import 'package:resumeflutter/utils/contants.dart';
import 'package:resumeflutter/Extensions/hover_extensions.dart';

import 'About.dart';
import 'Skills.dart';

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

  List<String> tops = [
    'Intro',
    'About',
    'Education',
    'Skills',
    'Experience',
    'Contact Me'
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    var provider = Provider.of<AppProvider>(context);
    return Scaffold(
      backgroundColor: defaultLight,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: elevation,
        title: Padding(
          padding: EdgeInsets.only(left: size.width * 0.10),
          child: Text(
            elevation == 1 ? 'Hey There!' : '',
            style: GoogleFonts.gothicA1(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          ListView.builder(
            padding: EdgeInsets.only(right: size.width * 0.10),
            itemCount: tops.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Center(
                child: GestureDetector(
                  onTap: () {
                    scrollController.animateTo(
                      index * size.height * 0.60,
                      duration: Duration(seconds: 1),
                      curve: Curves.linear,
                    );
                    provider.setCurrentIndex(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text(
                      tops[index],
                      style: TextStyle(
                        color: index == provider.currentIndex
                            ? defaultYellow
                            : defaultGrey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ).showCursorOnHover,
              );
            },
          ),
        ],
      ),
      body: NotificationListener(
        // ignore: missing_return
        onNotification: (scrollNotification) {
          provider.setCurrentIndex(
            scrollController.offset ~/ (size.height * 0.60),
          );
        },
        child: ListView(
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
      ),
    );
  }
}
