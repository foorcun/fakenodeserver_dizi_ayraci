import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/domain/entities/sezon.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/service/sezon_service.dart';
import 'package:get/get.dart';

class SezonController extends GetxController {
  final sezonlar = <Sezon>[].obs;
  final parentDiziId = 0.obs;

  // final secilenDiziId = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchSezonlar(parentDiziId.value);

    ever(parentDiziId, (_) {
      fetchSezonlar(parentDiziId.value);
    });

    super.onInit();
  }

  void fetchSezonlar(int parentDiziId) async {
    var s = await SezonService.getSezonlarByDizi(parentDiziId);
    sezonlar.assignAll(s);
  }

  setSecilenDiziId(int secilenId) {
    print("assecilen Id " + secilenId.toString());
    parentDiziId.value = secilenId;
  }
}
