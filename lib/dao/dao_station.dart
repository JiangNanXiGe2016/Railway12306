import 'package:floor/floor.dart';
import 'package:rw12306client/bean/bean_station.dart';

@dao
abstract class StationDao {
  @Query('SELECT * FROM Station')
  Future<List<Station>> findAllStations();

  /// 查询语句里的 userId 要和方法参数里的参数名一致
  @Query('SELECT * FROM Station WHERE stationID=:stationID')
  Future<List<Station>> findAllStationById(String stationID);

  @insert
  Future<void> insertStation(Station station);

  @update
  Future<int> updateStation(Station station);

  @delete
  Future<int> deleteStationInfo(Station station);
}
