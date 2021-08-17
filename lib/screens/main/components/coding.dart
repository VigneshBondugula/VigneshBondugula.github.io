import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_linear.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding", style: Theme.of(context).textTheme.subtitle2),
        ),
        AnimatedLinearProgressionIndicator(percentage: 0.9, title: "C"),
        AnimatedLinearProgressionIndicator(percentage: 0.8, title: "Python"),
        AnimatedLinearProgressionIndicator(percentage: 0.8, title: "Java"),
        AnimatedLinearProgressionIndicator(percentage: 0.9, title: "C++"),
        AnimatedLinearProgressionIndicator(percentage: 0.5, title: "Dart"),
        AnimatedLinearProgressionIndicator(percentage: 0.9, title: "Html"),        
        AnimatedLinearProgressionIndicator(percentage: 0.8, title: "CSS"),        
        AnimatedLinearProgressionIndicator(percentage: 0.7, title: "Java Script"),        


      ],
    );
  }
}