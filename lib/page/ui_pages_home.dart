import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool? _train = false;
  bool? _airplane = false;
  bool? _bus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey.withAlpha(33),
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.topCenter,
              children: <Widget>[

                Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        "images/img.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),


                Container(
                  width: double.infinity,
                  height: 50,
                  margin: const EdgeInsets.only(top: 10.0),
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  color: Colors.transparent,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "安康",
                        style: TextStyle(color: Colors.white,fontSize: 16),
                      ),
                      Icon(Icons.arrow_drop_down,size: 20,color: Colors.white,)
                    ],
                  ),
                )
              ],
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("火车"),
                  Checkbox(
                    value: _train,
                    onChanged: (onChanged) => {
                      setState(() {
                        _train = onChanged;
                      })
                    },
                  ),
                  const Text("飞机"),
                  Checkbox(
                    value: _airplane,
                    onChanged: (onChanged) => {
                      setState(() {
                        _airplane = onChanged;
                      })
                    },
                  ),
                  const Text("汽车"),
                  Checkbox(
                    value: _bus,
                    onChanged: (onChanged) => {
                      setState(() {
                        _bus = onChanged;
                      })
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: "城市",
                  hintText: "出发城市",
                  prefixIcon: Icon(Icons.location_city)),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: "时间",
                  hintText: "出发时间",
                  prefixIcon: Icon(Icons.time_to_leave)),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            padding:
                const EdgeInsets.only(left: 50, top: 50, right: 50, bottom: 50),
            child: OutlinedButton(
              onPressed: () => {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("查询车票"),
            ),
          ),
        ],
      ),
    ));
  }
}
