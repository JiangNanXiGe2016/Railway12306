import 'package:json_annotation/json_annotation.dart'; 
  
part 'movie_entity.g.dart';


@JsonSerializable()
  class MovieEntity extends Object {

  @JsonKey(name: 'chiefBonus')
  ChiefBonus chiefBonus;

  @JsonKey(name: 'coming')
  List<dynamic> coming;

  @JsonKey(name: 'movieIds')
  List<int> movieIds;

  @JsonKey(name: 'schemaUrl')
  String schemaUrl;

  @JsonKey(name: 'stid')
  String stid;

  @JsonKey(name: 'stids')
  List<Stids> stids;

  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'movieList')
  List<MovieList> movieList;

  MovieEntity(this.chiefBonus,this.coming,this.movieIds,this.schemaUrl,this.stid,this.stids,this.total,this.movieList,);

  factory MovieEntity.fromJson(Map<String, dynamic> srcJson) => _$MovieEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MovieEntityToJson(this);

}

  
@JsonSerializable()
  class ChiefBonus extends Object {

  @JsonKey(name: '346288')
  List<A346288> a346288;

  @JsonKey(name: '1309817')
  List<A1309817> a1309817;

  @JsonKey(name: '1398840')
  List<A1398840> a1398840;

  @JsonKey(name: '1462043')
  List<A1462043> a1462043;

  ChiefBonus(this.a346288,this.a1309817,this.a1398840,this.a1462043,);

  factory ChiefBonus.fromJson(Map<String, dynamic> srcJson) => _$ChiefBonusFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ChiefBonusToJson(this);

}

  
@JsonSerializable()
  class A346288 extends Object {

  @JsonKey(name: 'chiefAvatarUrl')
  String chiefAvatarUrl;

  @JsonKey(name: 'chiefName')
  String chiefName;

  A346288(this.chiefAvatarUrl,this.chiefName,);

  factory A346288.fromJson(Map<String, dynamic> srcJson) => _$A346288FromJson(srcJson);

  Map<String, dynamic> toJson() => _$A346288ToJson(this);

}

  
@JsonSerializable()
  class A1309817 extends Object {

  @JsonKey(name: 'chiefAvatarUrl')
  String chiefAvatarUrl;

  @JsonKey(name: 'chiefName')
  String chiefName;

  A1309817(this.chiefAvatarUrl,this.chiefName,);

  factory A1309817.fromJson(Map<String, dynamic> srcJson) => _$A1309817FromJson(srcJson);

  Map<String, dynamic> toJson() => _$A1309817ToJson(this);

}

  
@JsonSerializable()
  class A1398840 extends Object {

  @JsonKey(name: 'chiefAvatarUrl')
  String chiefAvatarUrl;

  @JsonKey(name: 'chiefName')
  String chiefName;

  A1398840(this.chiefAvatarUrl,this.chiefName,);

  factory A1398840.fromJson(Map<String, dynamic> srcJson) => _$A1398840FromJson(srcJson);

  Map<String, dynamic> toJson() => _$A1398840ToJson(this);

}

  
@JsonSerializable()
  class A1462043 extends Object {

  @JsonKey(name: 'chiefAvatarUrl')
  String chiefAvatarUrl;

  @JsonKey(name: 'chiefName')
  String chiefName;

  A1462043(this.chiefAvatarUrl,this.chiefName,);

  factory A1462043.fromJson(Map<String, dynamic> srcJson) => _$A1462043FromJson(srcJson);

  Map<String, dynamic> toJson() => _$A1462043ToJson(this);

}

  
@JsonSerializable()
  class Stids extends Object {

  @JsonKey(name: 'movieId')
  int movieId;

  @JsonKey(name: 'stid')
  String stid;

  Stids(this.movieId,this.stid,);

  factory Stids.fromJson(Map<String, dynamic> srcJson) => _$StidsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StidsToJson(this);

}

  
@JsonSerializable()
  class MovieList extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'haspromotionTag')
  bool haspromotionTag;

  @JsonKey(name: 'img')
  String img;

  @JsonKey(name: 'version')
  String version;

  @JsonKey(name: 'nm')
  String nm;

  @JsonKey(name: 'preShow')
  bool preShow;

  @JsonKey(name: 'sc')
  double sc;

  @JsonKey(name: 'globalReleased')
  bool globalReleased;

  @JsonKey(name: 'wish')
  int wish;

  @JsonKey(name: 'star')
  String star;

  @JsonKey(name: 'rt')
  String rt;

  @JsonKey(name: 'showInfo')
  String showInfo;

  @JsonKey(name: 'showst')
  int showst;

  @JsonKey(name: 'wishst')
  int wishst;

  @JsonKey(name: 'comingTitle')
  String comingTitle;

  @JsonKey(name: 'showStateButton')
  ShowStateButton showStateButton;

  MovieList(this.id,this.haspromotionTag,this.img,this.version,this.nm,this.preShow,this.sc,this.globalReleased,this.wish,this.star,this.rt,this.showInfo,this.showst,this.wishst,this.comingTitle,this.showStateButton,);

  factory MovieList.fromJson(Map<String, dynamic> srcJson) => _$MovieListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MovieListToJson(this);

}

  
@JsonSerializable()
  class ShowStateButton extends Object {

  @JsonKey(name: 'color')
  String color;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'onlyPreShow')
  bool onlyPreShow;

  @JsonKey(name: 'shadowColor')
  String shadowColor;

  ShowStateButton(this.color,this.content,this.onlyPreShow,this.shadowColor,);

  factory ShowStateButton.fromJson(Map<String, dynamic> srcJson) => _$ShowStateButtonFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ShowStateButtonToJson(this);

}

  
