import 'package:fakenodeserver_dizi_ayraci/core/utils/json_helper.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/domain/entities/dizi.dart';
import 'package:http/http.dart' as http;

class DiziService {
  Future<List<Dizi>> getAllDizi() async {
    print("HttpDiziDB getAll");

    Uri myUri = Uri.parse("http://127.0.0.1:3000/diziler");

    http.Response response = await http.get(myUri);

    List listJson = JsonHelper.convertResponseToList(response.body);
    //print("json list length " + listJson.length.toString());
    //print(listJson[0].toString());
    List<Dizi> theList = [];
    for (var i = 0; i < listJson.length; i++) {
      theList.add(Dizi.fromJson(listJson[i]));
    }

    return theList;
  }
}
