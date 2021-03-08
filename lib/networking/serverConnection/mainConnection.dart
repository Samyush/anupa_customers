import 'package:http/http.dart' as http;

var url = Uri.http('127.0.0.1:8000', 'api/try');

//the below urls doesnt work applying upon get(here)
var urls = 'http://127.0.0.1:8000/api/try';

class MainConnection {
  Future receiveData() async {
    http.Response response = await http.get(url);
    print(response.statusCode);
  }
}
