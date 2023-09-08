import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:rw12306client/bean/bean_station.dart';
import 'package:rw12306client/data/city_entity.dart';
import 'package:rw12306client/db/db.dart';
import 'package:rw12306client/manager/util.dart';

class TimePage extends StatefulWidget {
  const TimePage({super.key, required this.title});

  final String title;

  @override
  State<TimePage> createState() => TimePageState();
}

class TimePageState extends State<TimePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => {Navigator.pop(context,1000)}),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
            child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Text(
            "time  select",
            style: TextStyle(wordSpacing: 15),
          ),
        )));
  }
}
