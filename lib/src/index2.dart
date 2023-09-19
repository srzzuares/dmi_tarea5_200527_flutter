import 'package:flutter/material.dart';

class gridView extends StatefulWidget {
  gridView({super.key, required this.title});
  final String title;
  @override
  _gridViewState createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {
  final List<String> imgs = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(69, 28, 0, 64),
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(10),
          itemCount: imgs.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 300),
          itemBuilder: (context, index) {
            return Container(
              //margin: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage(imgs[index]), fit: BoxFit.cover)),
            );
          },
        ));
  }
}
