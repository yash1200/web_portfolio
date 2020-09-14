import 'package:resumeflutter/Model/ModelExperience.dart';

export 'package:resumeflutter/values/colors.dart';
export 'package:resumeflutter/values/strings.dart';
export 'package:resumeflutter/values/textStyles.dart';

double limit = 1000;

List<String> sections = [
  'Intro',
  'About',
  'Education',
  'Skills',
  'Experience',
  'Projects',
  'Contact Me'
];

List<ModelExperience> experiences = [
  ModelExperience(
    "August 2020 - Present",
    "Open Source Contributor",
    "Flutter",
    "Contributed to the open source flutter/plugins repository.",
  ),
  ModelExperience(
    "May 2019 - August 2019",
    "Flutter Developer",
    "Aeologic Technologies",
    "I worked as a Flutter developer, made modules and applications during the internship.",
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

List<ModelExperience> projects = [
  ModelExperience(
    'June 2020 - July 2020',
    'Petals',
    'Flutter, NodeJs & MongoDB',
    'Petal helps restaurants to manage social distancing in post covid world, showing all information by scanning a QR.',
  ),
  ModelExperience(
    'August 2019 - November 2019',
    'BankGit',
    'Flutter & Firebase',
    'BankGit helps you manage your account and transactions more efficiently by breaking your account into branches.',
  ),
  ModelExperience(
    'August 2019 - November 2019',
    'BoredPages',
    'Flutter & Firebase',
    'BoredPages is a social media platform where you can share memes and photos and can make money with its business model.',
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

List<String> contactUrlList = [
  'https://github.com/yash1200',
  'https://www.codechef.com/users/yashjohri_1200',
  'https://codeforces.com/profile/yash1200',
  'https://www.hackerrank.com/yashjohri1200',
  'https://www.instagram.com/just_johri/?hl=en',
  'https://www.linkedin.com/in/yash-johri-61014717b/',
  'https://twitter.com/YashJohri17',
];

List<String> projectsUrlList = [
  'https://github.com/yash1200/petals',
  'https://github.com/yash1200/bank_management',
  'https://play.google.com/store/apps/details?id=com.boredpages.borespages&hl=en_IN',
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
