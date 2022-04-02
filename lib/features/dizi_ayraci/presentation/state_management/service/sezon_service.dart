import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/data/api/sezon_api.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/domain/entities/sezon.dart';

class SezonService {
  static Future<List<Sezon>> getSezonlarByDizi(int parentDiziId) async {
    return SezonsApi.getSezonlarByDizi(parentDiziId);
  }
}
