import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:practica2_moviles/card_hero.dart';
import 'package:practica2_moviles/image_carousel2.dart';
import 'package:practica2_moviles/image_carouselDS.dart';
import 'package:practica2_moviles/image_carouselIronMan.dart';
import 'package:practica2_moviles/image_carouselThanos.dart';
import 'package:practica2_moviles/image_carouselThor.dart';
import 'counter.dart';
import 'image_carousel.dart';
import 'package:practica2_moviles/image_carousel.dart';

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

  final data = [
    CardHeroData(
        title: 'Scarlet witch',
        subtitle: 'wanda maximof',
        title2: 'Descripcion de Personaje',
        desc:
            'Wanda Maximoff es un personaje ficticio interpretado por Elizabeth Olsen en la franquicia del Universo cinematográfico de Marvel. Es el personaje mas poderoso del universo, el origen de su poder es una incognita pero se sabe que fue potenciada por la gema de la Mente durante unos experimentos de Hydra.',
        image: CarouselWithIndicatorDemo(),
        backgroundColor: Color.fromARGB(255, 67, 14, 14),
        titleColor: Color.fromARGB(255, 0, 0, 0),
        subtitleColor: Color.fromARGB(255, 0, 0, 0),
        listaPel: ListView(
          children: const [
            Text('Avengers; Age of Ultron (2015)'),
            Text('Capitan América: Civil War (2016)'),
            Text('Avengers: Infinity War (2018)'),
            Text('Avengers: Endgame (2019)'),
            Text('Wandavision (2020)'),
            Text('Doctor Strange in The Multiverse of Madness (2022)'),
          ],
        ),
        title3: 'Apariciones Peliculas-Series'),
    CardHeroData(
        title: 'spider-man',
        subtitle: 'Peter Parker',
        title2: 'Descripcion de Personaje',
        desc:
            'Spider-Man, traducido en ocasiones como el Hombre Araña,interpretado en el Universo Cinematográfico de Marvel por Tom Holland, es un personaje creado por los estadounidenses Stan Lee y Steve Ditko. Este aparece por primera vez en Captain America Civil War, siendo igual que en otras ocasiones un joven hereo sin mucha experiecia que trata de hacer el bien y porteger a aquellos que ama a su manera. Ya que ser un hereo conlleva muchas responsabilidades y peligros',
        image: CarouselWithIndicatorDemo2(),
        backgroundColor: Color.fromARGB(255, 29, 40, 255),
        titleColor: Color.fromARGB(255, 0, 0, 0),
        subtitleColor: Color.fromARGB(255, 0, 0, 0),
        listaPel: ListView(
          children: const [
            Text('<CAMEO>IronMan 2 (2010)'),
            Text('Capitan América: Civil War (2016)'),
            Text('Spider-Man: Homecoming (2017)'),
            Text('Avengers: Infinity War (2018)'),
            Text('Avengers: Endgame (2019)'),
            Text('Spider-Man: Far From Home (2019)'),
            Text('Spider-Man: No Way Home (2021)')
          ],
        ),
        title3: 'Apariciones Peliculas-Series'),
    CardHeroData(
        title: 'Thor',
        subtitle: 'Thor Odinson',
        title2: 'Descripcion de Personaje',
        desc:
            'Thor Odinson, más conocido como Thor, y a veces por su título como el Dios del Trueno, es un personaje ficticio interpretado por Chris Hemsworth en el Universo Cinematográfico de Marvel. Hijo de Odin, principe de Asgard y parte de los Vengadores originales, Thor es uno de los superheroes mas furtes del UCM.',
        image: CarouselWithIndicatorDemoThor(),
        backgroundColor: Color.fromARGB(243, 31, 229, 255),
        titleColor: Color.fromARGB(255, 0, 0, 0),
        subtitleColor: Color.fromARGB(255, 0, 0, 0),
        listaPel: ListView(
          children: const [
            Text('Thor (2011)'),
            Text('Avengers (2012)'),
            Text('Thor: The Dark World (2013)'),
            Text('Avengers: Age of Ultron (2015)'),
            Text('<ESCENA POSTCREDITOS>Doctor Strange (2016)'),
            Text('Thor: Ragnarok (2017)'),
            Text('Avengers: Infinity War (2018)'),
            Text('Avengers: Endgame (2019)'),
            Text('Thor: Love and Thunder (2022)')
          ],
        ),
        title3: 'Apariciones Peliculas'),
    CardHeroData(
        title: 'doctor strange',
        subtitle: 'Dr. Stephen Strange',
        title2: 'Descripcion de Personaje',
        desc:
            'El Doctor Stephen Vincent Strange, a menudo conocido como Doctor Strange, es un personaje de la franquicia Universo Cinematográfico de Marvel interpretado por Benedict Cumberbatch. Stephen Strange era un neurocirujano que tras un accidente de coche perdio la movilidad en sus manos, en busca de repararlas termina descubriendo su destino en el arte de la hechiceria, para despues convertirse, al menos hasta antes de el chasquido, en el Hechicero Supremo',
        image: CarouselWithIndicatorDemoDS(),
        backgroundColor: Color.fromARGB(255, 249, 165, 18),
        titleColor: Color.fromARGB(255, 0, 0, 0),
        subtitleColor: Color.fromARGB(255, 0, 0, 0),
        listaPel: ListView(
          children: const [
            Text('Doctor Strange (2016)'),
            Text('<CAMEO>Thor: Ragnarok (2017)'),
            Text('Avengers: Infinity War(2018)'),
            Text('Avengers: Endgame(2019)'),
            Text('Doctor Strange in The Multiverse of Madness (2022)'),
          ],
        ),
        title3: 'Apariciones Peliculas-Series'),
    CardHeroData(
        title: 'iron-man',
        subtitle: 'Antony Stark',
        title2: 'Descripcion de Personaje',
        desc:
            'Iron Man es un superhéroe del Universo Cinematográfico de Marvel, interpretado por Robert Downey Jr. La pelicula de su personaje fue la primera de este universo, viendo la luz en cine en el año 2008. Tony Stark es un genio, millonario, playboy y filántropo dueño de Industrias Stark además de fundador y parte de los Vengadores originales.',
        image: CarouselWithIndicatorDemoIM(),
        backgroundColor: Color.fromARGB(255, 186, 19, 19),
        titleColor: Color.fromARGB(255, 0, 0, 0),
        subtitleColor: Color.fromARGB(255, 0, 0, 0),
        listaPel: ListView(
          children: const [
            Text('IronMan (2008)'),
            Text('<ESCENA POSTCREDITOS>The Incredible Hulk (2008)'),
            Text('Ironan 2 (2010)'),
            Text('Avengers (2012)'),
            Text('IronMan 3 (2013)'),
            Text('Avengers; Age of Ultron (2015)'),
            Text('Capitan América: Civil War (2016)'),
            Text('Spider-Man: Homecoming (2017)'),
            Text('Avengers: Infinity War (2018)'),
            Text('Avengers: Endgame (2019)'),
          ],
        ),
        title3: 'Apariciones Peliculas-Series'),
    CardHeroData(
        title: 'thanos',
        subtitle: 'El titan loco',
        title2: 'Descripcion de Personaje',
        desc:
            'Thanos es un personaje ficticio interpretado principalmente por Josh Brolin en la franquicia de medios Marvel Cinematic Universe. Thanos, un eterno de la la luna de Saturno, Titan. Tiene como objetivo juntar las 6 piedras del infinito para asi eliminar a la mitad de la vida en el universon con el fin de que no se terminen los recursos de los planetas por el exceso de poblacion y asi evitar que el universo tenga el mismo destino que su planeta',
        image: CarouselWithIndicatorDemoThanos(),
        backgroundColor: Color.fromARGB(255, 120, 6, 219),
        titleColor: Color.fromARGB(255, 0, 0, 0),
        subtitleColor: Color.fromARGB(255, 0, 0, 0),
        listaPel: ListView(
          children: const [
            Text('<ESCENA POSTCREDITOS>Avengers (2012)'),
            Text('<CAMEO>Guardianes de la Galaxia (2014)'),
            Text('<ESCENA POSTCREDITOS>Avenger: Age of Ultron (2015)'),
            Text('Avengers: Infinity War (2018)'),
            Text('Avengers: Endgame (2019)'),
          ],
        ),
        title3: 'Apariciones Peliculas-Series'),
  ];

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
                //ListTile(leading: Image.asset("images/mcu.png"))
                IconButton(
                  icon: const Image(
                    image: AssetImage("images/mcu.png"),
                    alignment: Alignment.center,
                  ),
                  onPressed: () {},
                  alignment: Alignment.center,
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
              SizedBox(
                width: 20.0,
              ),
            ],
          ),
          body: ConcentricPageView(
            colors: data.map((e) => e.backgroundColor).toList(),
            itemCount: data.length,
            itemBuilder: (int index) {
              return CardSchool(data: data[index]);
            },
          )),
    );
  }
}
