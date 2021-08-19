import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/screens/home/components/projectcard.dart';

import '../../../constants.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding),
          child: Text(
            "My Projects",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: demoProjects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding),
          itemBuilder: (context, index) => ProjectCard(
            index: index,
          ),
        )
      ],
    );
  }
}