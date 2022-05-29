import 'package:flutter/material.dart';

import 'package:flutter_website/infrastructure/theme/app_colors.dart';
import 'package:flutter_website/infrastructure/theme/theme_extensions.dart';
import 'package:flutter_website/screens/main_screen/widgets/content_body_left.dart';
import 'package:flutter_website/screens/main_screen/widgets/content_right.dart';
import 'package:flutter_website/screens/main_screen/widgets/custom_button.dart';
import 'package:flutter_website/screens/main_screen/widgets/custom_button_long.dart';

// ---Texts---
const String news = 'новини';
const String forGame = 'про гру';
const String season = 'сезон';
const String bendFortnight = 'загін фортнайт';
const String trial = 'випробування';
const String bagpipes = 'гайди';
const String eSports = 'кіберспорт';
const String skins = 'скіни';
const String customizeTopPlayers = 'налаштування\nтоп\nгравців';
const String contacts = 'контакти';
const String support = 'підтримка';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const _routeName = '/maine-page';

  static PageRoute<MainPage> get route {
    return MaterialPageRoute(
      settings: const RouteSettings(name: _routeName),
      builder: (context) {
        return const MainPage();
      },
    );
  }

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isPressed = true;
  bool isPressed1 = true;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1200),
        child: Container(
          color: AppColors.backgroundButton,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                child: Text(
                  'головна'.toUpperCase(),
                  style: context.theme.textTheme.overline!.copyWith(
                    color: isPressed ? AppColors.text : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return isPressed
                          ? AppColors.backgroundButton
                          : AppColors.yellow;
                    },
                  ),
                ),
              ),
              const CustomButton(namePage: news),
              const CustomButton(namePage: forGame),
              const CustomButton(namePage: season),
              const CustomButton(namePage: bendFortnight),
              const CustomButtonLong(namePage: trial),
              const CustomButton(namePage: bagpipes),
              const CustomButton(namePage: eSports),
              const CustomButton(namePage: skins),
              const CustomButtonLong(namePage: customizeTopPlayers),
              const CustomButton(namePage: contacts),
              const CustomButton(namePage: support),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                flex: 2,
                child: ContentBodyLeft(),
              ),
              Expanded(
                child: ContentRight(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
