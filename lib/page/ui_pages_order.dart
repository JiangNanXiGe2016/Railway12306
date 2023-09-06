import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key, required this.title});
  final String title;
  @override
  State<OrderPage> createState() => OrderPageState();
}


class OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text("OrderPage"),
        )
    );
  }
}
