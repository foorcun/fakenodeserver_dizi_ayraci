import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/controller/dizi_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenGetx extends StatelessWidget {
  MainScreenGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
          // Get.find<DiziController>().diziler.length != 0
          //     ? Text("${Get.find<DiziController>().diziler[0].diziName}")
          //     : Text(""),
          ListView.builder(
              itemCount: Get.find<DiziController>().diziler.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                        Get.find<DiziController>().diziler[index].diziName),
                  ),
                );
              })),
    );
  }
}
