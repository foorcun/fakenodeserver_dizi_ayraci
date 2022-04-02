import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/controller/dizi_controller.dart';
import 'package:get/get.dart';

class AllDiziBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiziController>(() => DiziController());
  }
}
