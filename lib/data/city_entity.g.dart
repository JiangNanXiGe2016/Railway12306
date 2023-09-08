// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityEntity _$CityEntityFromJson(Map<String, dynamic> json) => CityEntity(
      ResponseStatus.fromJson(json['ResponseStatus'] as Map<String, dynamic>),
      json['RetCode'] as int,
      json['LastUpdateTime'] as String,
      (json['TrainStationsInfo'] as List<dynamic>)
          .map((e) => TrainStationsInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CityEntityToJson(CityEntity instance) =>
    <String, dynamic>{
      'ResponseStatus': instance.responseStatus,
      'RetCode': instance.retCode,
      'LastUpdateTime': instance.lastUpdateTime,
      'TrainStationsInfo': instance.trainStationsInfo,
    };

ResponseStatus _$ResponseStatusFromJson(Map<String, dynamic> json) =>
    ResponseStatus(
      json['Timestamp'] as String,
      json['Ack'] as String,
      json['Errors'] as List<dynamic>,
      (json['Extension'] as List<dynamic>)
          .map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseStatusToJson(ResponseStatus instance) =>
    <String, dynamic>{
      'Timestamp': instance.timestamp,
      'Ack': instance.ack,
      'Errors': instance.errors,
      'Extension': instance.extension,
    };

Extension _$ExtensionFromJson(Map<String, dynamic> json) => Extension(
      json['Id'] as String,
      json['Value'] as String,
    );

Map<String, dynamic> _$ExtensionToJson(Extension instance) => <String, dynamic>{
      'Id': instance.id,
      'Value': instance.value,
    };

TrainStationsInfo _$TrainStationsInfoFromJson(Map<String, dynamic> json) =>
    TrainStationsInfo(
  json['StationID'] as int,
  json['StationName'] as String,
  json['PinYin'] as String,
  json['SearchPinYin'] as String,
  json['PinYinHead'] as String,
  json['FirstLetter'] as String,
  json['HotFlag'] as int,
  json['BureauID'] as int,
  json['StationGradeID'] as int,
  json['CtripCityID'] as int,
  json['CityName'] as String?,
  json['CityNameEn'] as String?,
  json['CtiyFirstLetter'] as String,
  json['CityCode'] as String?,
  json['TeleCode'] as String?,
  json['LastUpdateTime'] as String,
  (json['Latitude'] as num).toDouble(),
  (json['Longitude'] as num).toDouble(),
  json['ProvinceName'] as String?,
);




Map<String, dynamic> _$TrainStationsInfoToJson(TrainStationsInfo instance) =>
    <String, dynamic>{
      'StationID': instance.stationID,
      'StationName': instance.stationName,
      'PinYin': instance.pinYin,
      'SearchPinYin': instance.searchPinYin,
      'PinYinHead': instance.pinYinHead,
      'FirstLetter': instance.firstLetter,
      'HotFlag': instance.hotFlag,
      'BureauID': instance.bureauID,
      'StationGradeID': instance.stationGradeID,
      'CtripCityID': instance.ctripCityID,
      'CityName': instance.cityName,
      'CityNameEn': instance.cityNameEn,
      'CtiyFirstLetter': instance.ctiyFirstLetter,
      'CityCode': instance.cityCode,
      'TeleCode': instance.teleCode,
      'LastUpdateTime': instance.lastUpdateTime,
      'Latitude': instance.latitude,
      'Longitude': instance.longitude,
      'ProvinceName': instance.provinceName,
    };
