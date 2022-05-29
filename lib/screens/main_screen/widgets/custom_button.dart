import 'package:flutter/material.dart';
import 'package:flutter_website/infrastructure/theme/app_colors.dart';
import 'package:flutter_website/infrastructure/theme/theme_extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.namePage,
  }) : super(key: key);
  final String namePage;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        namePage.toUpperCase(),
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
    );
  }
}
