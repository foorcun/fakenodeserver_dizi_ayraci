import 'package:json_annotation/json_annotation.dart';

import '../entities/dizi.dart';

part 'sezon.g.dart';

//depth 1 - children of root node Dizi

@JsonSerializable()
class Sezon {
  late int parentDiziId;
  late int id;
  late String sezonName;
  Sezon({
    required this.parentDiziId,
    required this.id,
    required this.sezonName,
  });

  Map<String, dynamic> toJson() => _$SezonToJson(this);

  factory Sezon.fromJson(Map<String, dynamic> json) => _$SezonFromJson(json);

  @override
  String toString() =>
      'Sezon(parentDiziId: $parentDiziId, id: $id, sezonName: $sezonName)';
}
