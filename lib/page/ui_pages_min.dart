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
        body: Center(
          child: Text("MinPage"),
        )
    );
  }
}