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

  Future sendData(var sendOrder) async {
    Map finalOrder = {'foodLists': sendOrder};

    http.Response response = await http.post(url,
        headers: {"Access-Control-Allow-Origin": "*"},
        body: jsonEncode(finalOrder));

    if (response.statusCode == 200) {
      var data = response.body;
      print(response.statusCode);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

// {'orderList': [{orderNo: 1, tableNo: Table 6, foodName: Chicken Chopsuey, quantity: X 2, bill: $400}, {orderNo: 2, tableNo: Table 6, foodName: Mix Chopsuey, quantity: X 2, bill: $340}, {orderNo: 3, tableNo: Table 6, foodName: Egg Chopsuey, quantity: X 3, bill: $480}]}
//data[4].name

//data[4].food
