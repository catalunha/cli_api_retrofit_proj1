// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoModel _$InfoModelFromJson(Map<String, dynamic> json) => InfoModel(
      id: json['id'] as int?,
      typeString: json['typeString'] as String?,
      typeInt: json['typeInt'] as int?,
      typeDouble: (json['typeDouble'] as num?)?.toDouble(),
      typeBool: json['typeBool'] as bool?,
      typeOther: json['typeOther'] == null
          ? null
          : OtherModel.fromJson(json['typeOther'] as Map<String, dynamic>),
      typeListString: (json['typeListString'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      typeListOther: (json['typeListOther'] as List<dynamic>?)
          ?.map((e) => OtherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InfoModelToJson(InfoModel instance) => <String, dynamic>{
      'id': instance.id,
      'typeString': instance.typeString,
      'typeInt': instance.typeInt,
      'typeDouble': instance.typeDouble,
      'typeBool': instance.typeBool,
      'typeOther': instance.typeOther,
      'typeListString': instance.typeListString,
      'typeListOther': instance.typeListOther,
    };
