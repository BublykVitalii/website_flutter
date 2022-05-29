import 'package:flutter/material.dart';

import 'package:flutter_website/infrastructure/theme/app_colors.dart';
import 'package:flutter_website/infrastructure/theme/theme_extensions.dart';

// ---Texts---

const String newsOneTitle =
    'Отримайте новини скін Fortnite Obi-Wan Kenobi БЕЗКОШТОВНО граючи на цьому Duos Cup';

const String newsOneOverview =
    'Разработчики нечасто радуют игроков фортнайт бесплатными подарками, а если и радуют, то это малозначительные и малопривлекательные предметы, по типу эмодзи или кирки. В этот раз у нас праздник — Epic Games предлагают нам забрать... Разработчики нечасто радуют игроков фортнайт бесплатными подарками, а если и радуют, то это малозначительные и малопривлекательные предметы, по типу эмодзи или кирки. В этот раз у нас праздник — Epic Games предлагают нам забрать Разработчики нечасто радуют игроков фортнайт бесплатными подарками, а если и радуют, то это малозначительные и малопривлекательные предметы, по типу эмодзи или кирки. В этот раз у нас праздник — Epic Games предлагают нам забрать';

const bannerObi = 'images/bannerObi.png';
const lama = 'images/lama.png';
const collaider = 'images/collaider.png';

class ContentBodyLeft extends StatelessWidget {
  const ContentBodyLeft({
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 4,
                height: 20,
                color: AppColors.yellow,
              ),
              const SizedBox(width: 5),
              Text(
                'Щоденні новини',
                style: context.theme.textTheme.headline6!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const newsCard(
            title: newsOneTitle,
            overview: newsOneOverview,
            image: bannerObi,
          ),
          const SizedBox(height: 10),
          const newsCard(
            title: newsOneTitle,
            overview: newsOneOverview,
            image: lama,
          ),
          const SizedBox(height: 10),
          const newsCard(
            title: newsOneTitle,
            overview: newsOneOverview,
            image: collaider,
          ),
          const SizedBox(height: 10),
          const NewsButton(),
        ],
      ),
    );
  }
}

class newsCard extends StatelessWidget {
  const newsCard({
    Key? key,
    required this.title,
    required this.overview,
    required this.image,
  }) : super(key: key);
  final String title;
  final String overview;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.backgroundButton,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 220,
            width: 420,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(image).image,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                top: 10,
              ),
              child: Column(
                children: [
                  Text(
                    title,
                    style: context.theme.textTheme.subtitle1!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    overview,
                    style: context.theme.textTheme.button!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'читати далі'.toUpperCase(),
                        style: context.theme.textTheme.overline!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            AppColors.backgroundButtonAction),
                        fixedSize: MaterialStateProperty.all(
                          const Size(
                            140,
                            20,
                          ),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewsButton extends StatelessWidget {
  const NewsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Завантажити більше новин'.toUpperCase(),
          style: context.theme.textTheme.overline!.copyWith(
            color: AppColors.yellow,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(AppColors.backgroundButton),
          fixedSize: MaterialStateProperty.all(
            const Size(
              double.maxFinite,
              40,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ),
    );
  }
}
