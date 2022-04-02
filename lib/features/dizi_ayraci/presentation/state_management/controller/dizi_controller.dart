import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/domain/entities/dizi.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/service/dizi_service.dart';
import 'package:get/get.dart';

class DiziController extends GetxController {
  final diziler = <Dizi>[].obs;

  // isLoading

  // static final DiziController _singleton = DiziController._internal();
  // DiziController._internal();
  // factory DiziController() => _singleton;

  @override
  void onInit() {
    // TODO: implement onInit

    fetchDiziler();
    print("diziler değer " + diziler.value.toString());
    // diziler.bindStream(HttpDiziDB().getAllDizi());

    // ever(qr, (_) {
    //   secilenRestoran
    //       .bindStream(FirebaseRestoranDB().findRestoranByUid(qr.value));
    // });
    print("DiziController");
    super.onInit();
  }

  void fetchDiziler() async {
    var d = await DiziService().getAllDizi();
    print("ddd " + d.toString());
    diziler.assignAll(d);
  }
}
