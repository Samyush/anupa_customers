import 'dart:convert';

import 'package:http/http.dart' as http;

class MainConnection {
  MainConnection(this.url);

  final url;

  Future receiveData() async {
    http.Response response = await http.get(url);
    //print(response.statusCode);

    if (response.statusCode == 200) {
      String data = response.body;
      //print(data);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

  Future sendData(List sendOrder) async {
    Map finalOrder = {'orderList': sendOrder};

    http.Response response = await http.post(url,
        // headers: {HttpHeaders.authorizationHeader: "Bearer $token"},
        body: finalOrder);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }

    // http.Response response = await http.post(urlFood);
    // print(response);
  }
}

// {'orderList': [{orderNo: 1, tableNo: Table 6, foodName: Chicken Chopsuey, quantity: X 2, bill: $400}, {orderNo: 2, tableNo: Table 6, foodName: Mix Chopsuey, quantity: X 2, bill: $340}, {orderNo: 3, tableNo: Table 6, foodName: Egg Chopsuey, quantity: X 3, bill: $480}]}
//data[4].name

//data[4].food
