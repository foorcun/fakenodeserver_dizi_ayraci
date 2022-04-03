import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/controller/dizi_controller.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/controller/sezon_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenGetx extends StatelessWidget {
  MainScreenGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _floatingPrint,
        tooltip: 'Add new Dizi',
        child: const Icon(Icons.add),
      ),
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
                    onTap: () {
                      print("index " + index.toString());
                      print("Get.find<DiziController>().diziler[index].id " +
                          Get.find<DiziController>()
                              .diziler[index]
                              .id
                              .toString());
                      Get.find<SezonController>().setSecilenDiziId(
                          Get.find<DiziController>().diziler[index].id);

                      Get.toNamed("/SezonlarByDizi");
                    },
                  ),
                );
              })),
    );
  }

  void _floatingPrint() {
    Get.toNamed("/AddDiziView");
  }
}
