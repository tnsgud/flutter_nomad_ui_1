// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      title: json['title'] as String,
      names: (json['names'] as List<dynamic>).map((e) => e as String).toList(),
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'names': instance.names,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
    };
