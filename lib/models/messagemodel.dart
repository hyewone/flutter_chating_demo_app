import 'package:json_annotation/json_annotation.dart';

part 'messagemodel.g.dart';

@JsonSerializable()
class MessageModel {
  String? messageid;

  String? sender;

  String? messagetext;

  bool? seen;

  DateTime? timecreated;

  MessageModel(
      {this.messagetext,
      this.seen,
      this.sender,
      this.timecreated,
      this.messageid});

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}