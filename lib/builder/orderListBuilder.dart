import 'package:anupa_customers/resources/appList.dart';

class OrderListBuilder {
  final String orderNo;
  final String tableNo;
  final String foodName;

  OrderListBuilder({this.orderNo, this.tableNo, this.foodName});

  listAdder() {
    Map orders = {
      'orderNo': orderNo,
      'tableNo': tableNo,
      'foodName': foodName,
    };
    ordersList.add(orders);
    print(ordersList);
  }
}
