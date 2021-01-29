import 'package:anupa_customers/appLists/customersPageList.dart';

class OrderListBuilder {
  final String orderNo;
  final String tableNo;
  final String foodName;

  OrderListBuilder({this.orderNo, this.tableNo, this.foodName});

  listAdder(String foodIs) {
    // Map orders = {
    //   'orderNo': orderNo,
    //   'tableNo': tableNo,
    //   'foodName': foodName,
    // };

    Map orders = {
      'orderNo': '9',
      'tableNo': '9',
      'foodName': foodIs,
    };
    customersOrders.add(orders);
    print(customersOrders);
  }
}
