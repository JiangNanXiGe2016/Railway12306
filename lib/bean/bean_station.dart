import 'package:floor/floor.dart';

@Entity()
class Station {
  @PrimaryKey()
  int? stationID;

  String? stationName;

  String? pinYin;

  String? searchPinYin;

  String? pinYinHead;

  String? firstLetter;

  int? hotFlag;

  int? bureauID;

  int? stationGradeID;

  int? ctripCityID;

  String? cityName;

  String? cityNameEn;

  String? ctiyFirstLetter;

  String? cityCode;

  String? teleCode;

  String? lastUpdateTime;

  double? latitude;

  double? longitude;

  String? provinceName;

  Station(
      this.stationID,
      this.stationName,
      this.pinYin,
      this.searchPinYin,
      this.pinYinHead,
      this.firstLetter,
      this.hotFlag,
      this.bureauID,
      this.stationGradeID,
      this.ctripCityID,
      this.cityName,
      this.cityNameEn,
      this.ctiyFirstLetter,
      this.cityCode,
      this.teleCode,
      this.lastUpdateTime,
      this.latitude,
      this.longitude,
      this.provinceName);

  @override
  String toString() {
    return 'Station{stationID: $stationID, stationName: $stationName, pinYin: $pinYin, searchPinYin: $searchPinYin, pinYinHead: $pinYinHead, firstLetter: $firstLetter, hotFlag: $hotFlag, bureauID: $bureauID, stationGradeID: $stationGradeID, ctripCityID: $ctripCityID, cityName: $cityName, cityNameEn: $cityNameEn, ctiyFirstLetter: $ctiyFirstLetter, cityCode: $cityCode, teleCode: $teleCode, lastUpdateTime: $lastUpdateTime, latitude: $latitude, longitude: $longitude, provinceName: $provinceName}';
  }
}
