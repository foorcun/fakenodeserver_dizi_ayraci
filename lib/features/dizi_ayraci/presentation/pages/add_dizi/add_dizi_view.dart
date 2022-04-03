import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AddDiziView extends StatelessWidget {
  AddDiziView({Key? key}) : super(key: key);

  final _diziTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _floatingPrint,
      //   tooltip: 'Add new Dizi',
      //   child: const Icon(Icons.add),
      // ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: TextField(
                controller: _diziTextController,
              ),
              padding: EdgeInsets.all(32),
            ),
            ElevatedButton(
              onPressed: () async {
                print(_diziTextController.text);
                var uri = Uri.parse("http://localhost:3000/diziler");
                var response = await http.post(uri, body: {
                  "diziName": _diziTextController.text,
                });
                print(response.body);

                // Get.back();
                Get.toNamed("/main_screen_getx");
              },
              child: Text("Yeni Dizi Yarat"),
            ),
          ],
        ),
      ),
    );
  }

  // void _floatingPrint() {
  //   // Get.toNamed("/AddDiziView");
  //   Get.back();
  // }
}
