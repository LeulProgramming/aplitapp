import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';

@JsonSerializable()
class Topic {
  String theme;
  String id;
  String chapter;
  String img;

  Topic({
    this.theme = '',
    this.id = '',
    this.chapter = '',
    this.img = 'default.jpg',
  });

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
  Map<String, dynamic> toJson() => _$TopicToJson(this);
}
