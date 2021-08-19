import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: defaultPadding),
            child: Text("Knowledge",
                style: Theme.of(context).textTheme.subtitle2),
          ),
          KnowledgeText(text : "Data Structures and Algorithms"),
          KnowledgeText(text : "MySQL, PostgreSQL"),
          KnowledgeText(text : "Git/Github"),
          KnowledgeText(text : "VSCode"),
          KnowledgeText(text : "Bootstrap"),


        ]);
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children:[
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding/2),
          Text(text)
        ]
      ),
    );
  }
}
