import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_website/infrastructure/theme/app_colors.dart';
import 'package:flutter_website/infrastructure/theme/theme_extensions.dart';
import 'package:flutter_website/infrastructure/theme/web_image.dart';

// ---Texts---
const String shopDey = 'Щоденні предмети';
const String shopAll = 'Прикрась свого персонажа';
const String titleButton = 'переглянути\nвесь магазин';
const String redux = 'Redux';
const String envoy = 'Envoy';
const String angularAxe = 'Angular Axe';
const String flux = 'Flux';
const String popLack = 'Pop Lack';
const String verySneaky = 'Vry Sneaky';

const String joltara = 'Joltara';
const String dynamoDancer = 'Dynamo Dancer';
const String firebrand = 'Firebrand';
const String polarity = 'Polarity';
const String backlash = 'Backlash';
const String theMightyVolt = 'The Mighty Volt';
const String hunter = 'Hunter';
const String blastoff = 'Blastoff';
const String hypersonic = 'Hypersonic';

class ContentRight extends StatelessWidget {
  const ContentRight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        top: 10.0,
      ),
      child: Column(
        children: const [
          TitleShop(title: shopDey),
          SizedBox(height: 10),
          ShopCardDaily(),
          SizedBox(height: 10),
          TitleShop(title: shopAll),
          SizedBox(height: 10),
          ShopCardAll(),
          SizedBox(height: 40),
          AccentButton(),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class TitleShop extends StatelessWidget {
  const TitleShop({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 4,
          height: 20,
          color: AppColors.yellow,
        ),
        const SizedBox(width: 5),
        Text(
          title,
          style: context.theme.textTheme.headline6!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class ShopCardDaily extends StatelessWidget {
  const ShopCardDaily({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            CardShops(
              name: redux,
              prise: '1.200',
              image: WebImage.redux,
            ),
            SizedBox(width: 10),
            CardShops(
              name: envoy,
              prise: '800',
              image: WebImage.envoy,
            ),
            SizedBox(width: 10),
            CardShops(
              name: angularAxe,
              prise: '500',
              image: WebImage.angularAxe,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            CardShops(
              name: flux,
              prise: '500',
              image: WebImage.flux,
            ),
            SizedBox(width: 10),
            CardShops(
              name: popLack,
              prise: '800',
              image: WebImage.popLack,
            ),
            SizedBox(width: 10),
            CardShops(
              name: verySneaky,
              prise: '500',
              image: WebImage.verysneaky,
            ),
          ],
        ),
      ],
    );
  }
}

class CardShops extends StatelessWidget {
  const CardShops({
    Key? key,
    required this.name,
    required this.prise,
    required this.image,
  }) : super(key: key);

  final String name;
  final String prise;
  final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(image).image,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.black.withOpacity(0.5),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  alignment: Alignment.center,
                  height: 20,
                  child: Text(
                    name,
                    maxLines: 1,
                    style: context.theme.textTheme.overline!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.8),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  alignment: Alignment.center,
                  height: 20,
                  child: Text(
                    prise,
                    maxLines: 1,
                    style: context.theme.textTheme.overline!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopCardAll extends StatelessWidget {
  const ShopCardAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            CardShops(
              name: joltara,
              prise: '1.800',
              image: WebImage.joltara,
            ),
            SizedBox(width: 10),
            CardShops(
              name: dynamoDancer,
              prise: '1.800',
              image: WebImage.dynamoDancer,
            ),
            SizedBox(width: 10),
            CardShops(
              name: firebrand,
              prise: '1.800',
              image: WebImage.firebrand,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            CardShops(
              name: polarity,
              prise: '1.800',
              image: WebImage.polarity,
            ),
            SizedBox(width: 10),
            CardShops(
              name: backlash,
              prise: '1.800',
              image: WebImage.backlash,
            ),
            SizedBox(width: 10),
            CardShops(
              name: theMightyVolt,
              prise: '1.800',
              image: WebImage.theMightyVolt,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            CardShops(
              name: hunter,
              prise: '1.800',
              image: WebImage.hunter,
            ),
            SizedBox(width: 10),
            CardShops(
              name: blastoff,
              prise: '1.800',
              image: WebImage.blastoff,
            ),
            SizedBox(width: 10),
            CardShops(
              name: hypersonic,
              prise: '1.800',
              image: WebImage.hyperSonic,
            ),
          ],
        ),
      ],
    );
  }
}

const double degrees2Radians = math.pi / 180.0;
double radians(double degrees) => degrees * degrees2Radians;

class AccentButton extends StatelessWidget {
  const AccentButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.translate(
          offset: const Offset(-44, 0),
          child: Transform(
            alignment: FractionalOffset.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.02)
              ..rotateY(radians(3))
              ..rotateX(radians(3))
              ..rotateZ(radians(-3)),
            child: Container(
              height: 80,
              width: 220,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: AppColors.accentColor,
              ),
              child: const SizedBox(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SizedBox(
            width: 200,
            height: 60,
            child: TextButton(
              onPressed: () {},
              child: Text(
                titleButton,
                style: context.theme.textTheme.headline5!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
