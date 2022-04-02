import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/data/api/dizi_api.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/domain/entities/dizi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: DiziApi.getDiziler(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Beklenmeyen bir hata oluştu..."),
              );
            } else if (snapshot.hasData) {
              List<Dizi> data = snapshot.data as List<Dizi>;
              return ListView.builder(
                  // itemCount: 2,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(data[index].diziName),
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
