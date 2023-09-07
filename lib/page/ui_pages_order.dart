import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  OrderPage({super.key, required this.title});
  final title;
  @override
  State<OrderPage> createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage> {
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
              onPressed: () => {
                Navigator.pop(context)
              }),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text("OrderPage"),
        ));
  }
}
