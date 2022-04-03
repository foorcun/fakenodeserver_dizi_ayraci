import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/controller/dizi_controller.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/controller/sezon_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_slidable/flutter_slidable.dart';

class MainScreenGetx extends StatelessWidget {
  MainScreenGetx({Key? key}) : super(key: key);

  _loadData() async {
    //https://www.youtube.com/watch?v=q2vUKcrL5CI
    await Get.find<DiziController>().fetchDiziler();
  }

  @override
  Widget build(BuildContext context) {
    _loadData();
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
                return Slidable(
                  child: Card(
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
                  ),
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        flex: 2,
                        onPressed: (BuildContext context) {
                          print("basıldım...");

                          showDialog(
                              context: context,
                              builder: (_) {
                                return CupertinoAlertDialog(
                                  content: Text(Get.find<DiziController>()
                                          .diziler[index]
                                          .diziName +
                                      " silmek ister misiniz?"),
                                  actions: [
                                    CupertinoDialogAction(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Navigator.pop(context);
                                          Get.back();
                                        },
                                        child: Text("İptal"),
                                      ),
                                    ),
                                    CupertinoDialogAction(
                                      child: ElevatedButton(
                                        child: Text("Evet"),
                                        onPressed: () async {
                                          // await cDizi.delete();
                                          Get.back();
                                        },
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete_forever,
                        label: 'Delete',
                      ),
                    ],
                  ),
                );
              })),
    );
  }

  void _floatingPrint() {
    Get.toNamed("/AddDiziView");
  }
}
