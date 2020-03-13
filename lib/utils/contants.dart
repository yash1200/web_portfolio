import 'package:flutter/material.dart';
import 'package:resumeflutter/Model/ModelExperience.dart';

Color defaultLight = Color(0xff2b2c2c);
Color defaultDart = Color(0xff252525);
Color defaultLighter = Color(0xff303131);
Color defaultYellow = Color(0xfffeb633);
Color defaultGrey = Color(0xffcccccc);
Color tileColor = Color(0xff333333);
Color descColor = Color(0xff5a656b);

TextStyle defaultBold = TextStyle(
  color: Colors.white,
  fontSize: 50,
  fontWeight: FontWeight.w500,
);
TextStyle defaultStyleSmall = TextStyle(
  color: Colors.white,
  fontSize: 30,
);
TextStyle defaultButtonStyle = TextStyle(
  color: defaultYellow,
  fontSize: 20,
  fontWeight: FontWeight.w500,
);

TextStyle defaultStyle = TextStyle(
  color: defaultGrey,
  fontSize: 24,
  fontWeight: FontWeight.w100,
);

TextStyle styleDescription = TextStyle(
  color: defaultGrey,
  fontSize: 16,
  fontWeight: FontWeight.w100,
  height: 1.5
);

TextStyle styleRole = TextStyle(
  color: Colors.white,
  fontSize: 24,
);

TextStyle styleCompany = TextStyle(
  color: descColor,
  fontSize: 16,
  fontWeight: FontWeight.w100,
);

String about =
    "I'm Yash Johri, currently persuing Btech. in Computer Engineering"
    " from Jamia Millia Islamia, New Delhi. I'm a Flutter and Android  Developer"
    ", with a keen understanding of Dart, Java, Firebase, Cloud Firestore,"
    " Data Structures and Algorithms.\n\nI'm a 4 star coder on Codechef. I "
    "qualified for regional level in ACM ICPC, and have also participated"
    " in Google Hashcode and Google Kickstart. Other than coding, my interests "
    "lie in Cricket & Sudoku as well.";

String experience = 'The only source of knowledge is experience';

List<ModelExperience> exp = [
  ModelExperience(
    'May 2019 - July 2019',
    "Flutter Developer",
    "Aeologic Technologies",
    'I worked as a Flutter developer at Aeologic and did projects as per the requirements',
  ),
  ModelExperience(
    'May 2019 - July 2019',
    "Flutter Developer",
    "Aeologic Technologies",
    'I worked as a Flutter developer at Aeologic and did projects as per the requirements',
  ),
  ModelExperience(
    'May 2019 - July 2019',
    "Flutter Developer",
    "Aeologic Technologies",
    'I worked as a Flutter developer at Aeologic and did projects as per the requirements',
  ),
];
