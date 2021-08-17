import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/screens/main/components/skills.dart';

import '../../../constants.dart';
import 'areainfotext.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'myinfo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  InfoText(title: "Residence", text: "India"),
                  InfoText(title: "City", text: "Bangalore"),
                  InfoText(title: "Age", text: "19"),
                  Skills(),
                  Coding(),
                  Knowledge()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

