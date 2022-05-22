import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website/infrastructure/theme/app_colors.dart';
import 'package:flutter_website/infrastructure/theme/theme_extensions.dart';

const _colorTheme = ColorScheme(
  brightness: Brightness.dark,
  primary: AppColors.background,
  onPrimary: AppColors.backgroundButton,
  secondary: AppColors.accentColor,
  onSecondary: AppColors.accentColor,
  error: Colors.red,
  onError: Colors.red,
  background: AppColors.accentColor,
  onBackground: Colors.white,
  surface: AppColors.accentColor,
  onSurface: Colors.white,
);

BorderSide _getOutlinedColor(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    return const BorderSide(color: Colors.white);
  }
  return const BorderSide(color: Colors.grey);
}

ThemeData getDarkTheme(BuildContext context) {
  final textTheme =
      Typography.material2018(platform: defaultTargetPlatform).white;

  final textButtonScaledPadding = ButtonStyleButton.scaledPadding(
    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
    MediaQuery.maybeOf(context)?.textScaleFactor ?? 1,
  );

  return ThemeData.from(
    colorScheme: _colorTheme,
    textTheme: textTheme.apply(
      fontFamily: 'Open Sans',
      bodyColor: Colors.white,
      displayColor: Colors.white,
      decorationColor: AppColors.background,
    ),
  ).copyWith(
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: context.theme.textTheme.overline,
        fixedSize: const Size(60, 40),
        primary: Colors.white,
        padding: textButtonScaledPadding,
      ).copyWith(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(
          120,
          60,
        ),
      ).copyWith(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return AppColors.yellow;
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return AppColors.yellow;
            }
            return AppColors.yellow;
          },
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: AppColors.background,
      ).copyWith(
        side: MaterialStateProperty.resolveWith(_getOutlinedColor),
      ),
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
        color: Colors.white,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.accentColor),
        borderRadius: BorderRadius.circular(20.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(20.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(20.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
  );
}
