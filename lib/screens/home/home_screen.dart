import 'package:flutter/material.dart';
import 'package:portfolio/screens/main/main_screen.dart';

import 'components/homebanner.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner()
    ]);
  }
}

