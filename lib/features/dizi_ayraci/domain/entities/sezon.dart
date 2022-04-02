import '../entities/dizi.dart';

//depth 1 - children of root node Dizi
class Sezon {
  late int parentDiziId;
  late int id;
  late String sezonName;
  Sezon({
    required this.parentDiziId,
    required this.id,
    required this.sezonName,
  });

  @override
  String toString() =>
      'Sezon(parentDiziId: $parentDiziId, id: $id, sezonName: $sezonName)';
}
