import 'package:anupa_customers/networking/serverConnection/mainConnection.dart';

class GetBills {
  Future<dynamic> getBills(var neededUrl) async {
    MainConnection connector = MainConnection(neededUrl);

    var tableBill = await connector.receiveData();
    print(tableBill);
    // print(foodDetails);
    return tableBill;
    // return foodDetails;
  }
}
