// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sezon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sezon _$SezonFromJson(Map<String, dynamic> json) => Sezon(
      parentDiziId: json['parentDiziId'] as int,
      id: json['id'] as int,
      sezonName: json['sezonName'] as String,
    );

Map<String, dynamic> _$SezonToJson(Sezon instance) => <String, dynamic>{
      'parentDiziId': instance.parentDiziId,
      'id': instance.id,
      'sezonName': instance.sezonName,
    };
