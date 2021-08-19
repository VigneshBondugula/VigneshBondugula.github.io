import 'package:flutter/material.dart';
import 'package:portfolio/models/achievement.dart';

import '../../../constants.dart';
import 'achievementcard.dart';

class Achievement extends StatelessWidget {
  const Achievement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding, horizontal: defaultPadding),
          child: Text("My Achievements",
              style: Theme.of(context).textTheme.headline6),
        ),
        GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: demoAchievement.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding),
            itemBuilder: (context, index) => AchievmentCard(index : index))
      ],
    );
  }
}


