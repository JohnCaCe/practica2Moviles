import 'package:flutter/material.dart';
import 'package:practica2_moviles/image_carousel.dart';

class CardHeroData {
  final String title;
  final String subtitle;
  final String title2;
  final String title3;
  final String desc;
  final Widget? image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final ListView listaPel;
  final Widget? background;

  CardHeroData({
    required this.title,
    required this.subtitle,
    required this.title2,
    required this.title3,
    required this.desc,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    required this.listaPel,
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
        //if (data.background != null) data.background!,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  if (data.image != null) data.image!,
                  const SizedBox(
                    height: 50.0,
                  ),
                  Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          )),
                      height: 800,
                      width: 1000,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(children: <Widget>[
                              const SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                data.title.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                data.subtitle.toUpperCase(),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              Text(
                                data.title2,
                                style: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                data.desc,
                                style: const TextStyle(
                                  letterSpacing: 2.0,
                                  fontSize: 15.0,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              Text(
                                data.title3,
                                style: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              Flexible(child: data.listaPel)
                            ])),
                      ))
                ]),
          ),
        ),
      ],
    );
  }
}
