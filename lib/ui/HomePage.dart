import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:resumeflutter/AppProvider/AppProvider.dart';
import 'package:resumeflutter/ui/Contact.dart';
import 'package:resumeflutter/ui/Education.dart';
import 'package:resumeflutter/ui/Experiences.dart';
import 'package:resumeflutter/ui/Introduction.dart';
import 'package:resumeflutter/ui/projects.dart';
import 'package:resumeflutter/values/values.dart';
import 'About.dart';
import 'Skills.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final provider = Provider.of<AppProvider>(context);
    return Scaffold(
      backgroundColor: defaultLight,
      appBar: size.width > limit
          ? AppBar(
              backgroundColor: provider.backgroundColor,
              elevation: provider.elevation,
              title: Padding(
                padding: EdgeInsets.only(left: size.width * 0.10),
                child: Text(
                  provider.elevation == 1 ? 'Hey There!' : '',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              actions: <Widget>[
                ListView.builder(
                  padding: EdgeInsets.only(right: size.width * 0.04),
                  itemCount: sections.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Center(
                      child: GestureDetector(
                        onTap: () {
                          scrollController.animateTo(
                            index * size.height * 0.65,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.linear,
                          );
                          provider.setCurrentIndex(index);
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Text(
                              sections[index],
                              style: TextStyle(
                                color: index == provider.currentIndex
                                    ? defaultYellow
                                    : defaultGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          : PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(),
            ),
      body: NotificationListener(
        onNotification: (scrollNotification) {
          if (scrollController.offset == 0 && provider.elevation != 0) {
            provider.setBackgroundColor(defaultLight);
            provider.setElevation(0);
          } else if (scrollController.offset != 0 && provider.elevation != 1) {
            provider.setBackgroundColor(defaultDark);
            provider.setElevation(1);
          }
          provider.setCurrentIndex(
            scrollController.offset ~/ (size.height * 0.60),
          );
          return true;
        },
        child: ListView(
          controller: scrollController,
          children: [
            Introduction(),
            About(),
            Education(),
            Skills(),
            Experiences(),
            Projects(),
            Contact(),
          ],
        ),
      ),
    );
  }
}
