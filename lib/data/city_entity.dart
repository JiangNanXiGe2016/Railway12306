import 'package:json_annotation/json_annotation.dart'; 
  
part 'city_entity.g.dart';


@JsonSerializable()
  class CityEntity extends Object {

  @JsonKey(name: 'ResponseStatus')
  ResponseStatus responseStatus;

  @JsonKey(name: 'RetCode')
  int retCode;

  @JsonKey(name: 'LastUpdateTime')
  String lastUpdateTime;

  @JsonKey(name: 'TrainStationsInfo')
  List<TrainStationsInfo> trainStationsInfo;

  CityEntity(this.responseStatus,this.retCode,this.lastUpdateTime,this.trainStationsInfo,);

  factory CityEntity.fromJson(Map<String, dynamic> srcJson) => _$CityEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CityEntityToJson(this);

}

  
@JsonSerializable()
  class ResponseStatus extends Object {

  @JsonKey(name: 'Timestamp')
  String timestamp;

  @JsonKey(name: 'Ack')
  String ack;

  @JsonKey(name: 'Errors')
  List<dynamic> errors;

  @JsonKey(name: 'Extension')
  List<Extension> extension;

  ResponseStatus(this.timestamp,this.ack,this.errors,this.extension,);

  factory ResponseStatus.fromJson(Map<String, dynamic> srcJson) => _$ResponseStatusFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ResponseStatusToJson(this);

}

  
@JsonSerializable()
  class Extension extends Object {

  @JsonKey(name: 'Id')
  String id;

  @JsonKey(name: 'Value')
  String value;

  Extension(this.id,this.value,);

  factory Extension.fromJson(Map<String, dynamic> srcJson) => _$ExtensionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ExtensionToJson(this);

}

  
@JsonSerializable()
  class TrainStationsInfo extends Object {

  @JsonKey(name: 'StationID')
  int stationID;

  @JsonKey(name: 'StationName')
  String stationName;

  @JsonKey(name: 'PinYin')
  String pinYin;

  @JsonKey(name: 'SearchPinYin')
  String searchPinYin;

  @JsonKey(name: 'PinYinHead')
  String pinYinHead;

  @JsonKey(name: 'FirstLetter')
  String firstLetter;

  @JsonKey(name: 'HotFlag')
  int hotFlag;

  @JsonKey(name: 'BureauID')
  int bureauID;

  @JsonKey(name: 'StationGradeID')
  int stationGradeID;

  @JsonKey(name: 'CtripCityID')
  int ctripCityID;

  @JsonKey(name: 'CityName',includeIfNull: true)
  String? cityName;

  @JsonKey(name: 'CityNameEn',includeIfNull: true)
  String? cityNameEn;

  @JsonKey(name: 'CtiyFirstLetter')
  String ctiyFirstLetter;

  @JsonKey(name: 'CityCode',includeIfNull: true)
  String? cityCode;

  @JsonKey(name: 'TeleCode',includeIfNull: true)
  String? teleCode;

  @JsonKey(name: 'LastUpdateTime')
  String lastUpdateTime;

  @JsonKey(name: 'Latitude')
  double latitude;

  @JsonKey(name: 'Longitude')
  double longitude;

  @JsonKey(name: 'ProvinceName',includeIfNull: true)
  String? provinceName;

  TrainStationsInfo(this.stationID,this.stationName,this.pinYin,this.searchPinYin,this.pinYinHead,this.firstLetter,this.hotFlag,this.bureauID,this.stationGradeID,this.ctripCityID,this.cityName,this.cityNameEn,this.ctiyFirstLetter,this.cityCode,this.teleCode,this.lastUpdateTime,this.latitude,this.longitude,this.provinceName,);

  factory TrainStationsInfo.fromJson(Map<String, dynamic> srcJson) => _$TrainStationsInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TrainStationsInfoToJson(this);

}

  
