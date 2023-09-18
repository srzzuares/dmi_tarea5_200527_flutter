import 'package:flutter/material.dart';

class gridView extends StatefulWidget {
  const gridView({super.key, required this.title});
  final String title;

  @override
  _gridViewState createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(69, 28, 0, 64),
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('This is my second screen'),
      ),
    );
  }
}
