import 'package:anupa_customers/appLists/customersPageList.dart';
import 'package:anupa_customers/screens/customersPage/components/color_dots.dart';

class OrderListBuilder {
  final String orderNo;
  final String tableNo;
  final String foodName;
  final String priceIs;
  OrderListBuilder({this.orderNo, this.tableNo, this.foodName, this.priceIs});

  listAdder(String foodIs) {
    Map orders = {
      'orderNo': (customersOrders.length + 1).toString(),
      'tableNo': tableNo,
      'foodName': foodIs,
      'quantity': 'X ' + counter.toString(),
      'bill': '\$' + (int.parse(priceIs) * counter).toString(),
    };
    customersOrders.add(orders);
    print(customersOrders);
  }
}
