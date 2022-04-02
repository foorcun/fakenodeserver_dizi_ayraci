import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/data/api/sezon_api.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/domain/entities/sezon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SezonScreen extends StatelessWidget {
  const SezonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: SezonsApi.getDiziler(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Beklenmeyen bir hata oluştu..."),
              );
            } else if (snapshot.hasData) {
              List<Sezon> data = snapshot.data as List<Sezon>;
              return ListView.builder(
                  // itemCount: 2,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(data[index].sezonName),
                        subtitle: Text(data[index].parentDiziId.toString()),
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
