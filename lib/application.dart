import 'package:flutter/material.dart';
import 'package:flutter_website/infrastructure/theme/dark_theme.dart';
import 'package:flutter_website/screens/main_screen/maine_screen.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FortniteUA',
      theme: getDarkTheme(context),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
