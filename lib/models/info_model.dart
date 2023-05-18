import 'package:json_annotation/json_annotation.dart';

import 'other_model.dart';

part 'info_model.g.dart';

@JsonSerializable()
class InfoModel {
  final int? id;
  final String? typeString;
  final int? typeInt;
  final double? typeDouble;
  final bool? typeBool;
  final OtherModel? typeOther;
  final List<String>? typeListString;
  final List<OtherModel>? typeListOther;
  InfoModel({
    this.id,
    this.typeString,
    this.typeInt,
    this.typeDouble,
    this.typeBool,
    this.typeOther,
    this.typeListString,
    this.typeListOther,
  });

  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$InfoModelToJson(this);

  @override
  String toString() {
    return 'InfoModel(id: $id, typeString: $typeString, typeInt: $typeInt, typeDouble: $typeDouble, typeBool: $typeBool, typeOther: $typeOther, typeListString: $typeListString, typeListOther: $typeListOther)';
  }
}
