import 'package:anupa_customers/networking/API_constants/apiS.dart';
import 'package:anupa_customers/networking/serverConnection/mainConnection.dart';

class NewsFeeds {
  Future<dynamic> getBills() async {
    MainConnection connector = MainConnection(urlNewsFeeds);

    var newsFeeds = await connector.receiveData();
    // print(foodDetails);
    return renderBills(newsFeeds);
    // return foodDetails;
  }

  renderBills(dynamic news) async {
    var nf = news['data'];
    String newsAre;
    // List allFoods;
    for (int i = 0; i < nf.length; i++) {
      newsAre = nf[i]['name'].toString();
      // allFoods = foods[i]['food'].toList();

      // tables.add(allTable);

      //Foods(category, allFoods);
      // print(tables);
      print(newsAre);
    }
    // print(tb[0]['name']);

    // print(tb.length);
  }
}
