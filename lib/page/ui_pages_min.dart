import 'package:flutter/material.dart';

class MinPage extends StatefulWidget {
  const MinPage({super.key, required this.title});
  final String title;
  @override
  State<MinPage> createState() => MinPageState();
}

class MinPageState extends State<MinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => {}),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text("MinPage"),
        ));
  }
}
