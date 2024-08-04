// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      scoreFatLoss: (json['scoreFatLoss'] as num?)?.toDouble(),
      scoreMuscleGain: (json['scoreMuscleGain'] as num?)?.toDouble(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'scoreFatLoss': instance.scoreFatLoss,
      'scoreMuscleGain': instance.scoreMuscleGain,
      'image': instance.image,
    };
