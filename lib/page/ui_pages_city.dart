import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rw12306client/data/city_entity.dart';

class CityPage extends StatefulWidget {
  const CityPage({super.key, required this.title});

  final String title;

  @override
  State<CityPage> createState() => CityPageState();
}

class CityPageState extends State<CityPage> {
  String _content = "not city info";
  List<TrainStationsInfo> _cities = [];

  @override
  void initState() {
    super.initState();
    requestCityList();
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

  requestCityList() async {
    Dio http = Dio();

    LogUtil.init(tag: "http_get", isDebug: true, maxLen: 128);
    String url =
        "https://m.ctrip.com/restapi/soa2/14666/json/GetTrainStationV3?_fxpcqlniredt=09031147413396600993&x-traceID=09031147413396600993-1694141465493-4571166";
    //一定要是http.Response类型，然后调用get获取数据
    Response response =
        await http.get(url, options: Options(responseType: ResponseType.plain));
    //得到原始数据
    // print(response);
    // 用decode转成json对象
    String ret =  response.data.toString();
    // LogUtil.d(ret, tag: "444444");
    CityEntity? cityEntity;
    String result = "";

    try {
      Map<String, dynamic> json = jsonDecode(ret);
      cityEntity = CityEntity.fromJson(json);
    } catch (e, stack) {
      // LogUtil.d(ret, tag: "-22222");
        print(e);
        print(stack);
    }

    if (cityEntity == null) {
      result = "Fail  Get Info";
      LogUtil.d("", tag: "55555");
    } else {
      result = jsonEncode(cityEntity);
    }
    setState(() {
      _content = result;
       // _cities = cityEntity?.trainStationsInfo;
    });
  }
}
