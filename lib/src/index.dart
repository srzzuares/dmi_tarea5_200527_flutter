import 'package:dmi_tarea6_200527_flutter/src/index2.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CsSuar - 200527',
      theme: ThemeData.dark(),
      home: const PageOne(title: 'Seccion de Imagenes'),
    );
  }
}

class PageOne extends StatefulWidget {
  const PageOne({super.key, required this.title});
  final String title;
  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String txt = "Hola,\n Soy Crystian";
  String imgAs = "asset/img/1.jpg";
  int index = 0;
  List<String> imagenes = [
    'asset/img/1.jpg',
    'asset/img/2.jpg',
    'asset/img/3.jpg',
    'asset/img/4.jpg',
    'asset/img/5.jpg',
    'asset/img/6.jpg',
    'asset/img/7.jpg',
    'asset/img/8.jpg',
    'asset/img/9.jpg',
    'asset/img/10.jpg',
    'asset/img/11.jpg',
    'asset/img/12.jpg',
    'asset/img/13.jpg',
    'asset/img/14.jpg',
    'asset/img/15.jpg',
  ];
  void onPresion() {
    setState(() {
      txt = "      Mis Favoritos: \n- CsSuar";
      imgAs = imagenes[index];
      index = index < 14 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(69, 28, 0, 64),
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                txt,
                style: const TextStyle(
                  letterSpacing: BorderSide.strokeAlignCenter,
                  fontFamily: 'Radley',
                  fontSize: 45,
                ),
              ),
              /* Image.asset(
              "$imgAs",
              scale: 3,
              alignment: Alignment.center,
            ), */
              Container(
                padding: EdgeInsets.all(20),
                width: 253,
                height: 450,
                decoration: BoxDecoration(
                  //color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(69, 28, 0, 64).withOpacity(.3),
                      offset: Offset(-10, 10),
                      blurRadius: 10,
                      spreadRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("$imgAs"), fit: BoxFit.cover),
                ),
              ),
              FloatingActionButton(
                  backgroundColor: Color.fromARGB(69, 28, 0, 64),
                  child: Icon(
                    Icons.touch_app_outlined,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    size: 45,
                  ),
                  onPressed: () {
                    onPresion();
                  })
            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: const Text(
                    'Inicio',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Radley',
                      color: Color.fromARGB(255, 182, 144, 240),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: const Text(
                    'Lista de imagenes',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Radley',
                      color: Color.fromARGB(255, 182, 144, 240),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => gridView(
                                title: "Imagenes de Prueba",
                              )),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
