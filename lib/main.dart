import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/main_screen.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/presentation/sezonlar/sezon_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HttpApp());
}

class HttpApp extends StatelessWidget {
  const HttpApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MainScreen(),
      home: SezonScreen(),
    );
  }
}
