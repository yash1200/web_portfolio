import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resumeflutter/ui/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yash Johri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.googleSansTextTheme(
            Theme.of(context).textTheme,
          )
      ),
      home: HomePage(),
    );
  }
}
