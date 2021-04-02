import 'package:anupa_customers/networking/API_constants/apiS.dart';

import '../mainConnection.dart';

class SendOrders {
  Future<dynamic> sendOrder(List finalOrder) async {
    MainConnection mainConnection = MainConnection(urlOrders);

    var ratingDetails = await mainConnection.sendData(finalOrder);
    print(ratingDetails);

    // Profile(userDetail: userDetail);

    return ratingDetails;
  }
}
