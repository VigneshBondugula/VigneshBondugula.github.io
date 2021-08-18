import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/constants.dart';


class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/back.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.45),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover my work space!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: defaultPadding / 2,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "<",
                        children: [
                          TextSpan(
                            text: "VB",
                            style: TextStyle(color: primaryColor),
                          ),
                          TextSpan(text: ">"),
                        ],
                      ),
                    ),
                    DefaultTextStyle(
                      style: Theme.of(context).textTheme.subtitle1!,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText("Hello world!"),
                          TyperAnimatedText("I am a fullstack developer"),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
