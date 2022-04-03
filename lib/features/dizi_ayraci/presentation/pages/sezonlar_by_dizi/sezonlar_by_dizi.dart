import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/controller/dizi_controller.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/controller/sezon_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SezonlarByDizi extends StatelessWidget {
  const SezonlarByDizi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SezonlarListViewbuilder(),
    );
  }
}

class SezonlarListViewbuilder extends StatelessWidget {
  const SezonlarListViewbuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (Get.find<SezonController>().isLoading == true) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else if (Get.find<SezonController>().sezonlar.length == 0) {
        return Center(
          child: Text("Sezon ekleyiniz"),
        );
      }
      return ListView.builder(
          itemCount: Get.find<SezonController>().sezonlar.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title:
                    Text(Get.find<SezonController>().sezonlar[index].sezonName),
                subtitle: Text(Get.find<DiziController>()
                    .searchDiziById(Get.find<SezonController>()
                        .sezonlar[index]
                        .parentDiziId)
                    .diziName),
                // subtitle: Text(Get.find<SezonController>()
                //     .sezonlar[index]
                //     .parentDiziId
                //     .toString()),
              ),
            );
          });
    });
  }
}
