import 'package:anupa_customers/networking/API_constants/apiS.dart';
import 'package:anupa_customers/networking/serverConnection/mainConnection.dart';

class GetBills {
  Future<dynamic> getBills() async {
    MainConnection connector = MainConnection(urlBills);

    var tableBill = await connector.receiveData();
    // print(foodDetails);
    return renderBills(tableBill);
    // return foodDetails;
  }

  renderBills(dynamic tablesWeb) async {
    var tb = tablesWeb['data'];
    String billIs;
    // List allFoods;
    for (int i = 0; i < tb.length; i++) {
      billIs = tb[i]['name'].toString();
      // allFoods = foods[i]['food'].toList();

      // tables.add(allTable);

      //Foods(category, allFoods);
      // print(tables);
      print(billIs);
    }
    // print(tb[0]['name']);

    // print(tb.length);
  }
}
