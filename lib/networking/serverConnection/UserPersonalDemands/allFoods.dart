import 'package:anupa_customers/networking/API_constants/apiS.dart';
import 'package:anupa_customers/networking/serverConnection/mainConnection.dart';

class AllFoods {
  Future<dynamic> getFoods() async {
    MainConnection connector = MainConnection(urlFood);

    var foodDetails = await connector.receiveData();
    // print(foodDetails);
    return renderFoods(foodDetails);
    // return foodDetails;
  }

  renderFoods(dynamic food) async {
    var foods = food['data'];
    var category;
    var allFoods;
    for (int i = 0; i < foods.length; i++) {
      category = foods[i]['name'];
      allFoods = foods[i]['food'];
      print(category);
      print(allFoods);
    }
    print(foods[0]['name']);

    print(foods.length);
  }
}
