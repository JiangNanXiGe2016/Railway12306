import 'package:json_annotation/json_annotation.dart'; 
  
part 'train_entity.g.dart';


@JsonSerializable()
  class TrainEntity extends Object {

  @JsonKey(name: 'validateMessagesShowId')
  String validateMessagesShowId;

  @JsonKey(name: 'status')
  bool status;

  @JsonKey(name: 'httpstatus')
  int httpstatus;

  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'messages')
  List<dynamic> messages;

  @JsonKey(name: 'validateMessages')
  ValidateMessages validateMessages;

  TrainEntity(this.validateMessagesShowId,this.status,this.httpstatus,this.data,this.messages,this.validateMessages,);

  factory TrainEntity.fromJson(Map<String, dynamic> srcJson) => _$TrainEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TrainEntityToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'queryLeftNewDTO')
  QueryLeftNewDTO queryLeftNewDTO;

  @JsonKey(name: 'buttonTextInfo')
  String buttonTextInfo;

  Data(this.queryLeftNewDTO,this.buttonTextInfo,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
@JsonSerializable()
  class QueryLeftNewDTO extends Object {

  @JsonKey(name: 'train_no')
  String trainNo;

  @JsonKey(name: 'station_train_code')
  String stationTrainCode;

  @JsonKey(name: 'start_station_telecode')
  String startStationTelecode;

  @JsonKey(name: 'start_station_name')
  String startStationName;

  @JsonKey(name: 'end_station_telecode')
  String endStationTelecode;

  @JsonKey(name: 'end_station_name')
  String endStationName;

  @JsonKey(name: 'from_station_telecode')
  String fromStationTelecode;

  @JsonKey(name: 'from_station_name')
  String fromStationName;

  @JsonKey(name: 'to_station_telecode')
  String toStationTelecode;

  @JsonKey(name: 'to_station_name')
  String toStationName;

  @JsonKey(name: 'start_time')
  String startTime;

  @JsonKey(name: 'arrive_time')
  String arriveTime;

  @JsonKey(name: 'day_difference')
  String dayDifference;

  @JsonKey(name: 'train_class_name')
  String trainClassName;

  @JsonKey(name: 'lishi')
  String lishi;

  @JsonKey(name: 'is_support_card')
  String isSupportCard;

  @JsonKey(name: 'control_train_day')
  String controlTrainDay;

  @JsonKey(name: 'start_train_date')
  String startTrainDate;

  @JsonKey(name: 'seat_feature')
  String seatFeature;

  @JsonKey(name: 'yp_ex')
  String ypEx;

  @JsonKey(name: 'train_seat_feature')
  String trainSeatFeature;

  @JsonKey(name: 'controlled_train_flag')
  String controlledTrainFlag;

  @JsonKey(name: 'controlled_train_message')
  String controlledTrainMessage;

  @JsonKey(name: 'country_flag')
  String countryFlag;

  @JsonKey(name: 'rw_num')
  String rwNum;

  @JsonKey(name: 'srrb_num')
  String srrbNum;

  @JsonKey(name: 'gg_num')
  String ggNum;

  @JsonKey(name: 'gr_num')
  String grNum;

  @JsonKey(name: 'rz_num')
  String rzNum;

  @JsonKey(name: 'tz_num')
  String tzNum;

  @JsonKey(name: 'wz_num')
  String wzNum;

  @JsonKey(name: 'yb_num')
  String ybNum;

  @JsonKey(name: 'yw_num')
  String ywNum;

  @JsonKey(name: 'yz_num')
  String yzNum;

  @JsonKey(name: 'ze_num')
  String zeNum;

  @JsonKey(name: 'zy_num')
  String zyNum;

  @JsonKey(name: 'swz_num')
  String swzNum;

  @JsonKey(name: 'yz_price')
  String yzPrice;

  @JsonKey(name: 'rz_price')
  String rzPrice;

  @JsonKey(name: 'yw_price')
  String ywPrice;

  @JsonKey(name: 'rw_price')
  String rwPrice;

  @JsonKey(name: 'gr_price')
  String grPrice;

  @JsonKey(name: 'zy_price')
  String zyPrice;

  @JsonKey(name: 'ze_price')
  String zePrice;

  @JsonKey(name: 'tz_price')
  String tzPrice;

  @JsonKey(name: 'gg_price')
  String ggPrice;

  @JsonKey(name: 'yb_price')
  String ybPrice;

  @JsonKey(name: 'bxyw_num')
  String bxywNum;

  @JsonKey(name: 'bxyw_price')
  String bxywPrice;

  @JsonKey(name: 'swz_price')
  String swzPrice;

  @JsonKey(name: 'hbyz_num')
  String hbyzNum;

  @JsonKey(name: 'hbyz_price')
  String hbyzPrice;

  @JsonKey(name: 'hbyw_num')
  String hbywNum;

  @JsonKey(name: 'hbyw_price')
  String hbywPrice;

  @JsonKey(name: 'bxrz_num')
  String bxrzNum;

  @JsonKey(name: 'bxrz_price')
  String bxrzPrice;

  @JsonKey(name: 'tdrz_num')
  String tdrzNum;

  @JsonKey(name: 'tdrz_price')
  String tdrzPrice;

  @JsonKey(name: 'srrb_price')
  String srrbPrice;

  @JsonKey(name: 'errb_num')
  String errbNum;

  @JsonKey(name: 'errb_price')
  String errbPrice;

  @JsonKey(name: 'yrrb_num')
  String yrrbNum;

  @JsonKey(name: 'yrrb_price')
  String yrrbPrice;

  @JsonKey(name: 'ydsr_num')
  String ydsrNum;

  @JsonKey(name: 'ydsr_price')
  String ydsrPrice;

  @JsonKey(name: 'edsr_num')
  String edsrNum;

  @JsonKey(name: 'edsr_price')
  String edsrPrice;

  @JsonKey(name: 'hbrz_num')
  String hbrzNum;

  @JsonKey(name: 'hbrz_price')
  String hbrzPrice;

  @JsonKey(name: 'hbrw_num')
  String hbrwNum;

  @JsonKey(name: 'hbrw_price')
  String hbrwPrice;

  @JsonKey(name: 'ydrz_num')
  String ydrzNum;

  @JsonKey(name: 'ydrz_price')
  String ydrzPrice;

  @JsonKey(name: 'edrz_num')
  String edrzNum;

  @JsonKey(name: 'edrz_price')
  String edrzPrice;

  @JsonKey(name: 'wz_price')
  String wzPrice;

  QueryLeftNewDTO(this.trainNo,this.stationTrainCode,this.startStationTelecode,this.startStationName,this.endStationTelecode,this.endStationName,this.fromStationTelecode,this.fromStationName,this.toStationTelecode,this.toStationName,this.startTime,this.arriveTime,this.dayDifference,this.trainClassName,this.lishi,this.isSupportCard,this.controlTrainDay,this.startTrainDate,this.seatFeature,this.ypEx,this.trainSeatFeature,this.controlledTrainFlag,this.controlledTrainMessage,this.countryFlag,this.rwNum,this.srrbNum,this.ggNum,this.grNum,this.rzNum,this.tzNum,this.wzNum,this.ybNum,this.ywNum,this.yzNum,this.zeNum,this.zyNum,this.swzNum,this.yzPrice,this.rzPrice,this.ywPrice,this.rwPrice,this.grPrice,this.zyPrice,this.zePrice,this.tzPrice,this.ggPrice,this.ybPrice,this.bxywNum,this.bxywPrice,this.swzPrice,this.hbyzNum,this.hbyzPrice,this.hbywNum,this.hbywPrice,this.bxrzNum,this.bxrzPrice,this.tdrzNum,this.tdrzPrice,this.srrbPrice,this.errbNum,this.errbPrice,this.yrrbNum,this.yrrbPrice,this.ydsrNum,this.ydsrPrice,this.edsrNum,this.edsrPrice,this.hbrzNum,this.hbrzPrice,this.hbrwNum,this.hbrwPrice,this.ydrzNum,this.ydrzPrice,this.edrzNum,this.edrzPrice,this.wzPrice,);

  factory QueryLeftNewDTO.fromJson(Map<String, dynamic> srcJson) => _$QueryLeftNewDTOFromJson(srcJson);

  Map<String, dynamic> toJson() => _$QueryLeftNewDTOToJson(this);

}

  
@JsonSerializable()
  class ValidateMessages extends Object {

  ValidateMessages();

  factory ValidateMessages.fromJson(Map<String, dynamic> srcJson) => _$ValidateMessagesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ValidateMessagesToJson(this);

}

  
