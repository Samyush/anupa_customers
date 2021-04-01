import 'dart:convert';

import 'package:anupa_customers/networking/API_constants/apiS.dart';
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

  Future sendData() async {
    http.Response response = await http.post(urlFood);
    print(response);
  }
}
//data[4].name

//data[4].food
