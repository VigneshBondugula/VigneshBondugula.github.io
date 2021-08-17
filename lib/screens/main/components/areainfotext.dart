import 'package:flutter/material.dart';

import '../../../constants.dart';

class InfoText extends StatelessWidget {
  const InfoText({Key? key, this.text, this.title}) : super(key: key);

  final String? title, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text!,
          )
        ],
      ),
    );
  }
}