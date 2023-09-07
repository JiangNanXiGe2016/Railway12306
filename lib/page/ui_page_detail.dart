import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rw12306client/data/movie_entity.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _TrainState();
}

class _TrainState extends State<DetailPage> {
  String _content = "no tarin info";

  @override
  void initState() {
    super.initState();
    requestTrainList();
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
              onPressed: () => {Navigator.pop(context)}),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text(_content),
        ));
  }

  requestTrainList() async {
    Dio http = Dio();
    LogUtil.init(tag: "http_get", isDebug: true, maxLen: 128);
    String url = "https://kyfw.12306.cn/otn/queryTrainInfo/query";

    //一定要是http.Response类型，然后调用get获取数据

   String   date= DateUtil.formatDateMs(DateTime.timestamp().millisecondsSinceEpoch+10000000, format: "yyyyMMdd"); //2019-07-09 16:16:16
    Response response =  await http.get(url,queryParameters:{"keyword":"K1003","date":date});

    //得到原始数据
    // print(response);
    // 用decode转成json对象
    String ret = response.data.toString();
    LogUtil.d(ret, tag: "1111");
    MovieEntity? entity;

    String result = "";
    if (entity == null) {
      result = "Fail  Get Info";
      LogUtil.d(ret, tag: "22222");
    } else {
      result = "Success  Get Info";
      LogUtil.d(entity.toString(), tag: "33333");
    }
    setState(() {
      _content = result;
    });
  }
}
