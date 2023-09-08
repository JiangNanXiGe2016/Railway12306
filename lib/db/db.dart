import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:rw12306client/bean/bean_station.dart';

import '../dao/dao_station.dart';

part 'db.g.dart';

// 执行命令 flutter pub run build_runner build --delete-conflicting-outputs
@Database(version: 1, entities: [Station])
abstract class MyDataBase extends FloorDatabase {
  StationDao get stationDao;
}
