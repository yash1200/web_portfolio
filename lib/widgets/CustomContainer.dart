import 'package:flutter/material.dart';
import 'package:resumeflutter/values/values.dart';

class CustomContainer extends StatefulWidget {
  final String text, image;

  CustomContainer({
    this.text,
    this.image,
  });

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  double elevation = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          elevation = 10;
        });
      },
      onExit: (event) {
        setState(() {
          elevation = 0;
        });
      },
      child: Card(
        elevation: elevation,
        color: tileColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          height: size.width * 0.10,
          width: size.width * 0.10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                widget.image,
                height: size.width * 0.05,
                width: size.width * 0.05,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.text,
                style: styleDescription,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
