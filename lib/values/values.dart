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
    "Contributed to the open source flutter repositories (flutter, plugins, gallery and packages).",
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
    'August 2018 - Present',
    'B.Tech Student',
    'Jamia Millia Islamia',
    'Currently pursuing a 4 year Bachelor of Technology course in Computer Ebgineering',
  ),
  ModelExperience(
    'April 2005 - March 2018',
    'Inter School Student',
    'Ingraham English School',
    'Percentage - 90.60 % in 12th ISC Board',
  ),
];

List<ModelExperience> projects = [
  ModelExperience(
    'June 2020 - July 2020',
    'Petals',
    'Flutter, VueJs, NodeJs & MongoDB',
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

List<String> tools = [
  'Flutter',
  'Android',
  'VueJs',
  'NuxtJs',
  'NodeJS',
  'Mongo DB',
  'Firebase',
  'Git',
  'C',
  'C++',
  'Dart',
  'Java',
  'Python',
  'Javascript',
  'Kotlin',
  'Bash',
];

List<String> toolsImage = [
  'images/flutter.png',
  'images/android.png',
  'images/vue.png',
  'images/nuxt.png',
  'images/nodejs.png',
  'images/mongodb.png',
  'images/firebase.png',
  'images/git.png',
  'images/c.png',
  'images/cpp.png',
  'images/dart.png',
  'images/java.png',
  'images/python.png',
  'images/javascript.png',
  'images/kotlin.png',
  'images/bash.png',
];

List<String> social = [
  'images/github.png',
  'images/codeforces.png',
  'images/codechef.png',
  'images/hackerrank.png',
  'images/instagram.png',
  'images/linkedin.png',
  'images/twitter.png',
];

List<String> contactUrlList = [
  'https://github.com/yash1200',
  'https://codeforces.com/profile/yash1200',
  'https://www.codechef.com/users/yashjohri_1200',
  'https://www.hackerrank.com/yashjohri1200',
  'https://www.instagram.com/just_johri/?hl=en',
  'https://www.linkedin.com/in/yash-johri-61014717b/',
  'https://twitter.com/YashJohri17',
];

List<String> projectsUrlList = [
  'https://github.com/yash1200/Petals',
  'https://github.com/yash1200/BankGit',
  'https://play.google.com/store/apps/details?id=com.boredpages.borespages&hl=en_IN',
];

List<String> socialName = [
  'Github',
  'Codeforces',
  'Codechef',
  'Hackerrank',
  'Instagram',
  'Linkedin',
  'Twitter',
];
