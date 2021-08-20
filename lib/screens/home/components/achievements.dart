import 'package:flutter/material.dart';
import 'package:portfolio/models/achievement.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
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
         Responsive(
          mobile: AchievementGridView(crossAxisCount: 1, childAspectRatio: 1.5,),
          desktop: AchievementGridView(),
          tablet: AchievementGridView(crossAxisCount: 2,),
          mobileLarge: AchievementGridView(crossAxisCount: 2,),
        ),
      ],
    );
  }
}

class AchievementGridView extends StatelessWidget {
  const AchievementGridView({
    Key? key, this.crossAxisCount = 3, this.childAspectRatio = 1.3,
  }) : super(key: key);
  final crossAxisCount;
  final childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: demoAchievement.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => AchievmentCard(index: index));
  }
}
