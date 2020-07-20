import 'package:flutter/material.dart';
import 'package:resumeflutter/Model/ModelExperience.dart';

Color defaultLight = Color(0xff2b2c2c);
Color defaultDart = Color(0xff252525);
Color defaultLighter = Color(0xff303131);
Color defaultYellow = Color(0xfffeb633);
Color defaultGrey = Color(0xffcccccc);
Color tileColor = Color(0xff333333);
Color descColor = Color(0xff5a656b);
double limit = 1000;

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
    color: defaultGrey, fontSize: 16, fontWeight: FontWeight.w100, height: 1.5);

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
    " Data Structures and Algorithms.\n\nI'm a 1500+ Codeforces rated coder and a 4 star coder on Codechef. I "
    "qualified for regional level in ACM ICPC, and have also participated"
    " in Google Hashcode and Google Kickstart. Other than coding, my interests "
    "lie in Cricket, Soduko, Sci-fi movies & exploring latest technology "
    "advancements in the developing world.";

String experience = 'The only source of knowledge is experience';

List<ModelExperience> exp = [
  ModelExperience(
    'May 2019 - July 2019',
    "Flutter Developer",
    "Aeologic Technologies",
    'I worked as a Flutter developer at Aeologic and did projects as per the requirements',
  ),
];

List<ModelExperience> education = [
  ModelExperience(
    'April 2005 - March 2018',
    'Inter School Student',
    'Ingraham English School',
    'Percentage - 90.60 % in 12th ISC Board',
  ),
  ModelExperience(
    'August 2018 - Present',
    'B.Tech Student',
    'Jamia Millia Islamia',
    'Currently pursuing a 4 year Bachelor of Technology course in Computer Ebgineering',
  ),
];

List<String> language = [
  'C',
  'C++',
  'Dart',
  'Java',
  'Python',
  'Javascript',
];

List<String> langImage = [
  'assets/images/c.png',
  'assets/images/cpp.png',
  'assets/images/dart.png',
  'assets/images/java.png',
  'assets/images/python.png',
  'assets/images/javascript.png',
];

List<String> tools = [
  'Flutter',
  'Android',
  'Git',
  'Firebase',
  'Node JS',
  'Mongo DB'
];

List<String> toolsImage = [
  'assets/images/flutter.png',
  'assets/images/android.png',
  'assets/images/git.png',
  'assets/images/firebase.png',
  'assets/images/nodejs.png',
  'assets/images/mongodb.png',
];

List<String> social = [
  'assets/images/github.png',
  'assets/images/codechef.png',
  'assets/images/codeforces.png',
  'assets/images/hackerrank.png',
  'assets/images/instagram.png',
  'assets/images/linkedin.png',
  'assets/images/twitter.png',
];

List<String> socialName = [
  'Github',
  'Codechef',
  'Codeforces',
  'Hackerrank',
  'Instagram',
  'Linkedin',
  'Twitter',
];
