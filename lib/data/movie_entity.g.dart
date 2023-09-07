// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieEntity _$MovieEntityFromJson(Map<String, dynamic> json) => MovieEntity(
      ChiefBonus.fromJson(json['chiefBonus'] as Map<String, dynamic>),
      json['coming'] as List<dynamic>,
      (json['movieIds'] as List<dynamic>).map((e) => e as int).toList(),
      json['schemaUrl'] as String,
      json['stid'] as String,
      (json['stids'] as List<dynamic>)
          .map((e) => Stids.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total'] as int,
      (json['movieList'] as List<dynamic>)
          .map((e) => MovieList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieEntityToJson(MovieEntity instance) =>
    <String, dynamic>{
      'chiefBonus': instance.chiefBonus,
      'coming': instance.coming,
      'movieIds': instance.movieIds,
      'schemaUrl': instance.schemaUrl,
      'stid': instance.stid,
      'stids': instance.stids,
      'total': instance.total,
      'movieList': instance.movieList,
    };

ChiefBonus _$ChiefBonusFromJson(Map<String, dynamic> json) => ChiefBonus(
      (json['346288'] as List<dynamic>)
          .map((e) => A346288.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['1309817'] as List<dynamic>)
          .map((e) => A1309817.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['1398840'] as List<dynamic>)
          .map((e) => A1398840.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['1462043'] as List<dynamic>)
          .map((e) => A1462043.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChiefBonusToJson(ChiefBonus instance) =>
    <String, dynamic>{
      '346288': instance.a346288,
      '1309817': instance.a1309817,
      '1398840': instance.a1398840,
      '1462043': instance.a1462043,
    };

A346288 _$A346288FromJson(Map<String, dynamic> json) => A346288(
      json['chiefAvatarUrl'] as String,
      json['chiefName'] as String,
    );

Map<String, dynamic> _$A346288ToJson(A346288 instance) => <String, dynamic>{
      'chiefAvatarUrl': instance.chiefAvatarUrl,
      'chiefName': instance.chiefName,
    };

A1309817 _$A1309817FromJson(Map<String, dynamic> json) => A1309817(
      json['chiefAvatarUrl'] as String,
      json['chiefName'] as String,
    );

Map<String, dynamic> _$A1309817ToJson(A1309817 instance) => <String, dynamic>{
      'chiefAvatarUrl': instance.chiefAvatarUrl,
      'chiefName': instance.chiefName,
    };

A1398840 _$A1398840FromJson(Map<String, dynamic> json) => A1398840(
      json['chiefAvatarUrl'] as String,
      json['chiefName'] as String,
    );

Map<String, dynamic> _$A1398840ToJson(A1398840 instance) => <String, dynamic>{
      'chiefAvatarUrl': instance.chiefAvatarUrl,
      'chiefName': instance.chiefName,
    };

A1462043 _$A1462043FromJson(Map<String, dynamic> json) => A1462043(
      json['chiefAvatarUrl'] as String,
      json['chiefName'] as String,
    );

Map<String, dynamic> _$A1462043ToJson(A1462043 instance) => <String, dynamic>{
      'chiefAvatarUrl': instance.chiefAvatarUrl,
      'chiefName': instance.chiefName,
    };

Stids _$StidsFromJson(Map<String, dynamic> json) => Stids(
      json['movieId'] as int,
      json['stid'] as String,
    );

Map<String, dynamic> _$StidsToJson(Stids instance) => <String, dynamic>{
      'movieId': instance.movieId,
      'stid': instance.stid,
    };

MovieList _$MovieListFromJson(Map<String, dynamic> json) => MovieList(
      json['id'] as int,
      json['haspromotionTag'] as bool,
      json['img'] as String,
      json['version'] as String,
      json['nm'] as String,
      json['preShow'] as bool,
      (json['sc'] as num).toDouble(),
      json['globalReleased'] as bool,
      json['wish'] as int,
      json['star'] as String,
      json['rt'] as String,
      json['showInfo'] as String,
      json['showst'] as int,
      json['wishst'] as int,
      json['comingTitle'] as String,
      ShowStateButton.fromJson(json['showStateButton'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovieListToJson(MovieList instance) => <String, dynamic>{
      'id': instance.id,
      'haspromotionTag': instance.haspromotionTag,
      'img': instance.img,
      'version': instance.version,
      'nm': instance.nm,
      'preShow': instance.preShow,
      'sc': instance.sc,
      'globalReleased': instance.globalReleased,
      'wish': instance.wish,
      'star': instance.star,
      'rt': instance.rt,
      'showInfo': instance.showInfo,
      'showst': instance.showst,
      'wishst': instance.wishst,
      'comingTitle': instance.comingTitle,
      'showStateButton': instance.showStateButton,
    };

ShowStateButton _$ShowStateButtonFromJson(Map<String, dynamic> json) =>
    ShowStateButton(
      json['color'] as String,
      json['content'] as String,
      json['onlyPreShow'] as bool,
      json['shadowColor'] as String,
    );

Map<String, dynamic> _$ShowStateButtonToJson(ShowStateButton instance) =>
    <String, dynamic>{
      'color': instance.color,
      'content': instance.content,
      'onlyPreShow': instance.onlyPreShow,
      'shadowColor': instance.shadowColor,
    };
