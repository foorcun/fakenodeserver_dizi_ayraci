import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/controller/dizi_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenGetx extends StatelessWidget {
  const MainScreenGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Text("${Get.find<DiziController>().diziler[0].diziName}"),
      ),
    );
  }
}
