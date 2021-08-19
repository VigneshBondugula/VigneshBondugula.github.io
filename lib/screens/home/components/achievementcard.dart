import 'package:flutter/material.dart';
import 'package:portfolio/models/achievement.dart';

import '../../../constants.dart';

class AchievmentCard extends StatelessWidget {
  const AchievmentCard({
    Key? key,
    required this.index
  }) : super(key: key);

  final index;
  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(defaultPadding),
          color: secondaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                demoAchievement[index].title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Spacer(),
              Text(
                demoAchievement[index].description!,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(height: 1.5),
              ),
              Spacer()
            ],
          ),
        );
  }
}