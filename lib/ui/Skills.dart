import 'package:flutter/material.dart';
import 'package:resumeflutter/widgets/CustomContainer.dart';
import 'package:resumeflutter/widgets/Title.dart';
import 'package:resumeflutter/values/values.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.85,
      width: size.width,
      color: defaultLighter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CustomTitle(
            center: true,
            text: 'Skills',
          ),
          Container(
            width: size.width * 0.68,
            child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(10),
              itemCount: tools.length,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 7,
                mainAxisSpacing: 7,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CustomContainer(
                  image: toolsImage[index],
                  text: tools[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
