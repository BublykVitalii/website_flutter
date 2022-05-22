import 'package:flutter/material.dart';

import 'package:flutter_website/infrastructure/theme/app_colors.dart';
import 'package:flutter_website/infrastructure/theme/theme_extensions.dart';

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
                  'ГОЛОВНА',
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
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'НОВИНИ',
                  style: context.theme.textTheme.overline!.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return AppColors.backgroundButton;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ПРО ГРУ',
                  style: context.theme.textTheme.overline!.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return AppColors.backgroundButton;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'СЕЗОН',
                  style: context.theme.textTheme.overline!.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return AppColors.backgroundButton;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ЗАГІН ФОРТНАЙТ',
                  textAlign: TextAlign.center,
                  style: context.theme.textTheme.overline!.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return AppColors.backgroundButton;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'ВИПРОБУВАННЯ',
                  style: TextStyle(
                    fontSize: 9,
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return AppColors.backgroundButton;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ГАЙДИ',
                  style: context.theme.textTheme.overline!.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return AppColors.backgroundButton;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'КІБЕРСПОРТ',
                  style: context.theme.textTheme.overline!.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return AppColors.backgroundButton;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'СКІНИ',
                  style: context.theme.textTheme.overline!.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return AppColors.backgroundButton;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'НАЛАШТУВАННЯ\nТОП\nГРАВЦІВ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 9,
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return AppColors.backgroundButton;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'КОНТАКТИ',
                  style: context.theme.textTheme.overline!.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return AppColors.backgroundButton;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ПІДТРИМКА',
                  style: context.theme.textTheme.overline!.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return AppColors.backgroundButton;
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: AppColors.background,
      ),
    );
  }
}
