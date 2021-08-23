import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedLinearProgressionIndicator extends StatelessWidget {
  const AnimatedLinearProgressionIndicator({
    Key? key,
    required this.percentage,
    required this.title,
  }) : super(key: key);
  final double percentage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
                Text((value * 100).round().toString()),
              ],
            ),
            SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}