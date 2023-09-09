import 'package:flutter/material.dart';
import 'package:practica2_moviles/image_carousel.dart';

class CardHeroData {
  final String title;
  final String subtitle;
  final CarouselWithIndicatorDemo image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget? background;

  CardHeroData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    this.background,
  });
}

class CardSchool extends StatelessWidget {
  const CardSchool({
    required this.data,
    Key? key,
  }) : super(key: key);

  final CardHeroData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (data.background != null) data.background!,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                data.title.toUpperCase(),
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                data.subtitle,
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(
                flex: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
