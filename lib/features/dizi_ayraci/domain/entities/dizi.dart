//root node of the general tree

import 'package:json_annotation/json_annotation.dart';

part 'dizi.g.dart';

@JsonSerializable()
class Dizi {
  late int id;
  late String diziName;
  Dizi({
    required this.id,
    required this.diziName,
  });

  Map<String, dynamic> toJson() => _$DiziToJson(this);

  factory Dizi.fromJson(Map<String, dynamic> json) => _$DiziFromJson(json);

  @override
  String toString() => 'Dizi(id: $id, diziName: $diziName)';
}
