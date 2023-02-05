// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topic _$TopicFromJson(Map<String, dynamic> json) => Topic(
      theme: json['theme'] as String? ?? '',
      id: json['id'] as String? ?? '',
      chapter: json['chapter'] as String? ?? '',
      img: json['img'] as String? ?? 'default.jpg',
    );

Map<String, dynamic> _$TopicToJson(Topic instance) => <String, dynamic>{
      'theme': instance.theme,
      'id': instance.id,
      'chapter': instance.chapter,
      'img': instance.img,
    };
