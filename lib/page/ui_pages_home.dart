import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:rw12306client/page/ui_page_detail.dart';
import 'package:rw12306client/page/ui_pages_city.dart';
import 'package:rw12306client/page/ui_pages_time.dart';

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

  String? _city = "";
  String? _time = "";

  selectCity() async {
    int ret = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const CityPage(
          title: "城市",
        );
      }),
    );
    print("selectCity----------------------------");
    setState(() {
      _city = "上海";
    });
  }

  selectTime() async {
    int ret = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const TimePage(
          title: "时间",
        );
      }),
    );
    print("selectTime----------------------------");
    setState(() {
      _time = "2023-09-13";
    });
  }

  startQueryInfo() {
    if (_time == null || _time!.isEmpty) {
      EasyLoading.showToast("请选择出发时间",toastPosition: EasyLoadingToastPosition.bottom);
      return;
    }
    if (_city == null || _city!.isEmpty) {
      EasyLoading.showToast("请选择目的地",toastPosition: EasyLoadingToastPosition.bottom);
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const DetailPage(
          title: "列车时刻表",
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "12306车票查询",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  Image.asset(
                    'images/img.png',
                    fit: BoxFit.fitHeight,
                  ),
                ],
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 50, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("火车"),
                      Checkbox(
                        value: true,
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
                height: 80,
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  readOnly: true,
                  autofocus: false,
                  controller: TextEditingController.fromValue(TextEditingValue(
                    text: _city!,
                  )),
                  decoration: const InputDecoration(
                      labelText: "城市",
                      hintText: "出发城市",
                      prefixIcon: Icon(Icons.location_city)),
                  onTap: () => {selectCity()},
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  autofocus: false,
                  readOnly: true,
                  controller: TextEditingController.fromValue(TextEditingValue(
                    text: _time!,
                  )),
                  decoration: const InputDecoration(
                      labelText: "时间",
                      hintText: "出发时间",
                      prefixIcon: Icon(Icons.time_to_leave)),
                  onTap: () => {selectTime()},
                ),
              ),
              Container(
                width: double.infinity,
                height: 150,
                padding: const EdgeInsets.only(
                    left: 50, top: 50, right: 50, bottom: 50),
                child: OutlinedButton(
                  onPressed: () => {startQueryInfo()},
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
