import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/pages/add_dizi/add_dizi_view.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/pages/main_screen_getx.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/pages/sezonlar/sezon_screen.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/pages/sezonlar_by_dizi/sezonlar_by_dizi.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/state_management/all_dizi_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//start the server
//start C:\API
//json-server --watch dizi_ayraci.json

// flutter run -d chrome --web-hostname localhost --web-port 5000 --no-sound-null-safety

void main() {
  AllDiziBindings().dependencies();
  runApp(const HttpApp());
}

class HttpApp extends StatelessWidget {
  const HttpApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // // initialBinding: AllDiziBindings(),
      // // home: MainScreen(),
      // // home: SezonScreen(),
      // home: MainScreenGetx(),

      debugShowCheckedModeBanner: false,
      title: 'Dizi App',
      // initialRoute: homePageBringer(),
      initialRoute: "/main_screen_getx",

      getPages: [
        GetPage(name: "/main_screen_getx", page: () => MainScreenGetx()),
        GetPage(name: "/SezonScreen", page: () => SezonScreen()),
        GetPage(name: "/SezonlarByDizi", page: () => SezonlarByDizi()),
        GetPage(name: "/AddDiziView", page: () => AddDiziView()),
      ],
    );
  }
}
