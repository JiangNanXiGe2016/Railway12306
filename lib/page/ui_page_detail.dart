import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:rw12306client/data/train_entity.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _TrainState();
}

class _TrainState extends State<DetailPage> {
  String _content = "no tarin info";
  List<Data> _trains = [];

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
            child: ListView.separated(
          itemCount: _trains.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              color: Colors.white,
              child: Center(
                child: DecoratedBox(
                    decoration: const BoxDecoration(

                        shape: BoxShape.rectangle,
                        color: Color.fromRGBO(255, 240, 230, 100),
                        boxShadow: [
                          //阴影
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1.5, 1.5),
                              blurRadius: 1.0)
                        ],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(_trains[index].queryLeftNewDTO.startTime,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 22)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.orange,
                                    width: 10,
                                    height: 10,
                                    child: const Text(
                                      "始",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 7),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Text(
                                    _trains[index]
                                        .queryLeftNewDTO
                                        .startStationName,
                                  ),
                                ],
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                const TextSpan(
                                    text: "商务",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: _trains[index].queryLeftNewDTO.swzNum,
                                    style:
                                        const TextStyle(color: Colors.green)),
                              ]))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(_trains[index]
                                  .queryLeftNewDTO
                                  .stationTrainCode),
                              Text(_trains[index].queryLeftNewDTO.lishi),
                              RichText(
                                  text: TextSpan(children: [
                                const TextSpan(
                                    text: "一等",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text:
                                        _trains[index].queryLeftNewDTO.ydrzNum,
                                    style:
                                        const TextStyle(color: Colors.green)),
                              ]))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(_trains[index].queryLeftNewDTO.arriveTime,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 22)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.green,
                                    width: 10,
                                    height: 10,
                                    child: const Text(
                                      "终",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 7),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Text(_trains[index]
                                      .queryLeftNewDTO
                                      .endStationName),
                                ],
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                const TextSpan(
                                    text: "二等",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text:
                                        _trains[index].queryLeftNewDTO.edrzNum,
                                    style:
                                        const TextStyle(color: Colors.green)),
                              ]))
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(height: 5, color: Colors.grey);
          },
        )));
  }

  requestTrainList() async {
    EasyLoading.show(status: '数据加载中');
    Dio http = Dio();
    LogUtil.init(tag: "http_get", isDebug: true, maxLen: 128);
    String url =
        "https://kyfw.12306.cn/otn/leftTicketPrice/query?leftTicketDTO.train_date=2023-09-14&leftTicketDTO.from_station=SHH&leftTicketDTO.to_station=BJP&leftTicketDTO.ticket_type=1&randCode=stzh";
    //一定要是http.Response类型，然后调用get获取数据
    Response response =
        await http.get(url, options: Options(responseType: ResponseType.plain));
    //得到原始数据
    // print(response);
    // 用decode转成json对象
    String ret = response.data.toString();
    LogUtil.d(ret, tag: "1111");
    TrainEntity? entity;
    String result = "";
    try {
      Map<String, dynamic> json = jsonDecode(ret);
      entity = TrainEntity.fromJson(json);
    } catch (e) {
      // LogUtil.d(ret, tag: "-111111111111111111111");
      LogUtil.d("try-catch error : $e");
    }

    if (entity == null) {
      result = "Fail  Get Info";
      LogUtil.d("", tag: "22222");
    } else {
      result = jsonEncode(entity);
      LogUtil.d(entity.toString(), tag: "33333");
    }
    setState(() {
      _content = result;
      _trains = entity!.data;
      EasyLoading.dismiss();
    });
  }
}
