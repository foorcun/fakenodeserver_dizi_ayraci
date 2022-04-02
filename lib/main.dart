import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/pages/main_screen.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/pages/main_screen_getx.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/pages/sezonlar/sezon_screen.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/all_dizi_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//start the server
//start C:\API
//json-server --watch dizi_ayraci.json

void main() {
  // AllDiziBindings().dependencies();
  runApp(const HttpApp());
}

class HttpApp extends StatelessWidget {
  const HttpApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllDiziBindings(),
      // home: MainScreen(),
      // home: SezonScreen(),
      home: MainScreenGetx(),
    );
  }
}
