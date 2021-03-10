import 'package:anupa_customers/appLists/foodItemList.dart';
import 'package:anupa_customers/constants/foods.dart';
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
    String category;
    List allFoods;
    for (int i = 0; i < foods.length; i++) {
      category = foods[i]['name'].toString();
      allFoods = foods[i]['food'].toList();

      foodsAre.add(Foods(category, allFoods));

      //Foods(category, allFoods);
      print(category);
      print(allFoods);
    }
    print(foods[0]['name']);

    print(foods.length);
  }
}
