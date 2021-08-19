import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/screens/main/components/skills.dart';

import '../../../constants.dart';
import 'areainfotext.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'myinfo.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  InfoText(title: "CGPA", text: "3.77"),
                  Skills(),
                  Coding(),
                  Knowledge(),
                  Divider(),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "DOWNLOAD CV",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                          ),
                          SizedBox(
                            width: defaultPadding / 2,
                          ),
                          SvgPicture.asset("assets/icons/download.svg"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            _launchURL("https://www.linkedin.com/in/vignesh-bondugula-0362361a9");
                          },
                          splashRadius: 25,
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        IconButton(
                          onPressed: () {
                            _launchURL("https://github.com/VigneshBondugula"); 
                          },
                          splashRadius: 25,
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        IconButton(
                          onPressed: () {
                            _launchURL("https://www.instagram.com/vignesh_bondugula?r=nametag");
                          },
                          splashRadius: 25,
                          icon: SvgPicture.asset("assets/icons/instagram.svg"),
                        ),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';