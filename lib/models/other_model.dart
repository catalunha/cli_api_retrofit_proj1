import 'package:json_annotation/json_annotation.dart';

part 'other_model.g.dart';

@JsonSerializable()
class OtherModel {
  final String? id;
  final String? typeString;
  OtherModel({
    this.id,
    this.typeString,
  });

  factory OtherModel.fromJson(Map<String, dynamic> json) =>
      _$OtherModelFromJson(json);
  Map<String, dynamic> toJson() => _$OtherModelToJson(this);
}
