import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/domain/entities/sezon.dart';

//depth 2 - children of root node Dizi
class Bolum {
  late int parentSezonId;
  late int id;
  late String bolumName;
  Bolum({
    required this.parentSezonId,
    required this.id,
    required this.bolumName,
  });

  @override
  String toString() =>
      'Bolum(parentSezonId: $parentSezonId, id: $id, bolumName: $bolumName)';
}
