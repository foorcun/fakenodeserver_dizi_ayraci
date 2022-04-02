import 'package:fakenodeserver_dizi_ayraci/core/utils/json_helper.dart';
import 'package:fakenodeserver_dizi_ayraci/features/dizi_ayraci/domain/entities/sezon.dart';
import 'package:http/http.dart' as http;

class SezonsApi {
  static Future<List<Sezon>> getSezonlar() async {
    Uri myUri = Uri.parse("http://127.0.0.1:3000/sezonlar");

    http.Response response = await http.get(myUri);

    List listJson = JsonHelper.convertResponseToList(response.body);
    //print("json list length " + listJson.length.toString());
    //print(listJson[0].toString());
    List<Sezon> theList = [];
    for (var i = 0; i < listJson.length; i++) {
      theList.add(Sezon.fromJson(listJson[i]));
    }

    return theList;
  }

  static Future<List<Sezon>> getSezonlarByDizi(int parentDiziId) async {
    Uri myUri = Uri.parse("http://127.0.0.1:3000/sezonlar");

    http.Response response = await http.get(myUri);

    List listJson = JsonHelper.convertResponseToList(response.body);
    //print("json list length " + listJson.length.toString());
    //print(listJson[0].toString());
    List<Sezon> theList = [];
    for (var i = 0; i < listJson.length; i++) {
      theList.add(Sezon.fromJson(listJson[i]));
    }

    print(theList.toString());
    int theAmount = getByDiziId(theList, parentDiziId);
    theList = theList.sublist(0, theAmount);
    print(theList.toString());

    return theList;
  }

  static int getByDiziId(List<Sezon> theList, int val) {
    int l = 0;
    int r = 1;
    print("val değeri " + val.toString());

    while (r < theList.length) {
      print("a");
      if (theList[l].parentDiziId == val) {
        print("b");

        l++;
        r++;
      } else {
        print("c");

        if (theList[r].parentDiziId == val) {
          print("d");

          //swap
          var temp = theList[l];
          theList[l] = theList[r];
          theList[r] = temp;
          l++;
          r++;
        } else {
          print("e");

          r++;
        }
      }
    }
    return l;
  }
}
