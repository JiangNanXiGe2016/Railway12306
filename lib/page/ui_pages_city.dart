import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:rw12306client/bean/bean_station.dart';
import 'package:rw12306client/data/city_entity.dart';
import 'package:rw12306client/db/db.dart';
import 'package:rw12306client/manager/util.dart';

class CityPage extends StatefulWidget {
  const CityPage({super.key, required this.title});

  final String title;

  @override
  State<CityPage> createState() => CityPageState();
}

class CityPageState extends State<CityPage> {
  String _content = "no stations  yet!";

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
              onPressed: () => {Navigator.pop(context,2000)}),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: SingleChildScrollView(
              padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Text(_content,style: const TextStyle(wordSpacing: 15),),
        )));
  }

  requestCityList() async {
    EasyLoading.show(status: '数据加载中');
    Future<List<Station>> dataList = DataBaseManager.queryAllStation();
    List<Station> list = await dataList;
    if (list.isNotEmpty) {
      setState(() {
        _content = list.toString();
       EasyLoading.dismiss();
      });
      return;
    }
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
    String ret = response.data.toString();
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
      //save to db
    } else {
      LogUtil.d("list=====${cityEntity?.trainStationsInfo?.length}",
          tag: "77777");
      cityEntity?.trainStationsInfo?.forEach((e) {
        //  LogUtil.d("e=$element", tag: "888");
        DataBaseManager.insertStation(Station(
            e.stationID,
            e.stationName,
            e.pinYin,
            e.searchPinYin,
            e.pinYinHead,
            e.firstLetter,
            e.hotFlag,
            e.bureauID,
            e.stationGradeID,
            e.ctripCityID,
            e.cityName,
            e.cityNameEn,
            e.ctiyFirstLetter,
            e.cityCode,
            e.teleCode,
            e.lastUpdateTime,
            e.latitude,
            e.longitude,
            e.provinceName));
      });
    }
    dataList = DataBaseManager.queryAllStation();
    list = await dataList;
    setState(() {
      _content = list.toString();
      EasyLoading.dismiss();
    });
  }

  Future<List<Station>> cityListFromDatabase() async {
    Future<List<Station>> dataList = DataBaseManager.queryAllStation();
    return dataList;
  }
}
