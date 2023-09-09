import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:practica2_moviles/card_hero.dart';
import 'counter.dart';
import 'image_carousel.dart';

void main() {
  runApp(const FirstScreen());
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

/*class Home extends StatelessWidget {
  Home({super.key});

  final data = [
    CardHeroData(
        title: title,
        subtitle: subtitle,
        image: image,
        backgroundColor: Color.fromARGB(255, 34, 37, 81),
        titleColor: titleColor,
        subtitleColor: subtitleColor)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardSchool(data: data[index]);
        },
      ),
    );
  }
}*/

class _FirstScreen extends State<FirstScreen> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 241, 31, 31),
          leading: Row(
            children: <Widget>[
              const SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: const <Widget>[
            /*IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            ),*/
            const SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 56, 25, 25),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const CarouselWithIndicatorDemo(),
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
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Scarlet Witch',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text('Wanda Maximof'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'Description de personaje',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            'Wanda Maximoff es un personaje ficticio interpretado por Elizabeth Olsen en la franquicia del Universo cinematográfico de Marvel, basado en la antiheroína​ de Marvel Comics del mismo nombre.',
                            style: TextStyle(
                              letterSpacing: 2.0,
                              fontSize: 15.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          /*Row(
                            children: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 0.0,
                                ),
                                onPressed: _toggleFavorite,
                                child: IconButton(
                                  icon: _isFavorited
                                      ? Icon(
                                          Icons.favorite_border,
                                          color: Colors.amber[300],
                                        )
                                      : Icon(
                                          Icons.favorite,
                                          color: Colors.amber[300],
                                        ),
                                  onPressed: () {},
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber[300],
                                  elevation: 0.0,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Add to cart',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),*/
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
