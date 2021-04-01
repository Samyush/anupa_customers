import 'package:anupa_customers/appLists/appList.dart';
import 'package:anupa_customers/networking/API_constants/apiS.dart';
import 'package:anupa_customers/networking/serverConnection/mainConnection.dart';

class AllTables {
  Future<dynamic> getTables() async {
    MainConnection connector = MainConnection(urlTables);

    var tableDetails = await connector.receiveData();
    // print(foodDetails);
    return renderTables(tableDetails);
    // return foodDetails;
  }

  renderTables(dynamic tablesWeb) async {
    var tb = tablesWeb['data'];
    String allTable;
    // List allFoods;
    for (int i = 0; i < tb.length; i++) {
      allTable = tb[i]['name'].toString();
      // allFoods = foods[i]['food'].toList();

      tables.add(allTable);

      //Foods(category, allFoods);
      print(tables);
      // print(allFoods);
    }
    print(tb[0]['name']);

    print(tb.length);
  }
}
