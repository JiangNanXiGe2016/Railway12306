import 'package:rw12306client/bean/bean_station.dart';

import '../db/db.dart';

class DataBaseManager {
  static Future<MyDataBase> database() async {
    // 关键
    // $FloorMyDataBase是生成的类 名称为$Floor+你创建的数据库类名字
    final database =
        await $FloorMyDataBase.databaseBuilder('app_database.db').build();
    return database;
  }

  /// 查询
  static Future<List<Station>> queryAllStation() async {
    var myDataBase = await database();
    return myDataBase.stationDao.findAllStations();
  }

  /// 根据Id查询
  static Future<List<Station>> queryStationById(String stationID) async {
    var myDataBase = await database();
    return myDataBase.stationDao.findAllStationById(stationID);
  }

  /// 插入
  static Future<void> insertStation(Station station) async {
    var myDataBase = await database();
    return await myDataBase.stationDao.insertStation(station);
  }

  /// 更新 返回[int] 表示受影响的行数
  static Future<int> updateStation(Station station) async {
    var myDataBase = await database();
    return await myDataBase.stationDao.updateStation(station);
  }

  /// 删除 返回[int] 表示受影响的行数
  static Future<int> deleteStation(Station station) async {
    var myDataBase = await database();
    return await myDataBase.stationDao.deleteStationInfo(station);
  }
}
