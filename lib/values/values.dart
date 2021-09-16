import 'package:resumeflutter/Model/ModelExperience.dart';
import 'package:resumeflutter/Model/social.dart';
import 'package:resumeflutter/Model/tools.dart';

export 'package:resumeflutter/values/colors.dart';
export 'package:resumeflutter/values/strings.dart';
export 'package:resumeflutter/values/textStyles.dart';

double limit = 1000;
final String _imagePath = 'assets/images';

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
    time: 'March 2020 - Present',
    title: 'SDE Intern',
    subtitle: 'AfterShoot Inc.',
    description: 'Contributing in the AfterShoot desktop app and website.',
  ),
  ModelExperience(
    time: 'December 2020 - March 2020',
    title: 'SDE Intern',
    subtitle: 'YourStory Media',
    description:
        'Contributing in the YourStory application and other products.',
  ),
  ModelExperience(
    time: 'May 2019 - August 2019',
    title: 'Flutter Developer',
    subtitle: 'Aeologic Technologies',
    description:
        'I worked as a Flutter developer, made modules and applications during the internship.',
  ),
];

List<ModelExperience> education = [
  ModelExperience(
    time: 'August 2018 - Present',
    title: 'B.Tech Student',
    subtitle: 'Jamia Millia Islamia',
    description:
        'Currently pursuing a 4 year Bachelor of Technology course in Computer Ebgineering',
  ),
  ModelExperience(
    time: 'April 2005 - March 2018',
    title: 'Inter School Student',
    subtitle: 'Ingraham English School',
    description: 'Percentage - 90.60 % in 12th ISC Board',
  ),
];

List<ModelExperience> projects = [
  ModelExperience(
    time: 'June 2020 - July 2020',
    title: 'Petals',
    subtitle: 'Flutter, VueJs, NodeJs & MongoDB',
    description:
        'Petal helps restaurants to manage social distancing in post covid world, showing all information by scanning a QR.',
    url: 'https://github.com/yash1200/Petals',
  ),
  ModelExperience(
    time: 'August 2019 - November 2019',
    title: 'BankGit',
    subtitle: 'Flutter & Firebase',
    description:
        'BankGit helps you manage your account and transactions more efficiently by breaking your account into branches.',
    url: 'https://github.com/yash1200/BankGit',
  ),
  ModelExperience(
    time: 'August 2019 - November 2019',
    title: 'BoredPages',
    subtitle: 'Flutter & Firebase',
    description:
        'BoredPages is a social media platform where you can share memes and photos and can make money with its business model.',
    url:
        'https://play.google.com/store/apps/details?id=com.boredpages.borespages&hl=en_IN',
  ),
];

List<Tool> tools = [
  Tool(
    name: 'Flutter',
    image: '$_imagePath/flutter.png',
  ),
  Tool(
    name: 'Android',
    image: '$_imagePath/android.png',
  ),
  Tool(
    name: 'ReactJs',
    image: '$_imagePath/react.png',
  ),
  Tool(
    name: 'Electron',
    image: '$_imagePath/electron.png',
  ),
  Tool(
    name: 'VueJs',
    image: '$_imagePath/vue.png',
  ),
  Tool(
    name: 'NodeJS',
    image: '$_imagePath/nodejs.png',
  ),
  Tool(
    name: 'Mongo DB',
    image: '$_imagePath/mongodb.png',
  ),
  Tool(
    name: 'Firebase',
    image: '$_imagePath/firebase.png',
  ),
  Tool(
    name: 'Git',
    image: '$_imagePath/git.png',
  ),
  Tool(
    name: 'C',
    image: '$_imagePath/c.png',
  ),
  Tool(
    name: 'C++',
    image: '$_imagePath/cpp.png',
  ),
  Tool(
    name: 'Dart',
    image: '$_imagePath/dart.png',
  ),
  Tool(
    name: 'Java',
    image: '$_imagePath/java.png',
  ),
  Tool(
    name: 'Python',
    image: '$_imagePath/python.png',
  ),
  Tool(
    name: 'Javascript',
    image: '$_imagePath/javascript.png',
  ),
  Tool(
    name: 'Typescript',
    image: '$_imagePath/typescript.png',
  ),
  Tool(
    name: 'Kotlin',
    image: '$_imagePath/kotlin.png',
  ),
  Tool(
    name: 'Bash',
    image: '$_imagePath/bash.png',
  ),
];

List<Social> social = [
  Social(
    name: 'Github',
    image: '$_imagePath/github.png',
    url: 'https://github.com/yash1200',
  ),
  Social(
    name: 'Codeforces',
    image: '$_imagePath/codeforces.png',
    url: 'https://codeforces.com/profile/yash1200',
  ),
  Social(
    name: 'Codechef',
    image: '$_imagePath/codechef.png',
    url: 'https://www.codechef.com/users/yashjohri_1200',
  ),
  Social(
    name: 'Hackerrank',
    image: '$_imagePath/hackerrank.png',
    url: 'https://www.hackerrank.com/yashjohri1200',
  ),
  Social(
    name: 'Instagram',
    image: '$_imagePath/instagram.png',
    url: 'https://www.instagram.com/just_johri/?hl=en',
  ),
  Social(
    name: 'Linkedin',
    image: '$_imagePath/linkedin.png',
    url: 'https://www.linkedin.com/in/yash-johri-61014717b/',
  ),
  Social(
    name: 'Twitter',
    image: '$_imagePath/twitter.png',
    url: 'https://twitter.com/YashJohri17',
  ),
];
