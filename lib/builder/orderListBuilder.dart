// import 'package:anupa_customers/appLists/customersPageList.dart';
// import 'package:anupa_customers/screens/customersPage/components/color_dots.dart';
//
// class OrderListBuilder {
//   final String orderNo;
//   final String tableNo;
//   final String foodName;
//   final String priceIs;
//   final String quantity;
//   final String bill;
//
//   // List<OrderListBuilder> orderList;
//
//   OrderListBuilder(
//       {this.orderNo,
//       this.tableNo,
//       this.foodName,
//       this.priceIs,
//       this.bill,
//       this.quantity});
//
//   listAdder(String foodIs) {
//     var orders = {
//       'orderNo': (customersOrders.length + 1).toString(),
//       'tableNo': tableNo[tableNo.length - 2] + tableNo[tableNo.length - 1],
//       'foodName': foodIs,
//       'quantity': /*'X ' +*/ counter.toString(),
//       'bill': /*'\$' + */ (int.parse(priceIs) * counter).toString(),
//     };
//
//     // orderList.add(
//     //   // orderNo,
//     // );
//
//     customersOrders.add(orders);
//     print(customersOrders);
//     print(customersOrdersAsList);
//   }
// }

import 'package:anupa_customers/appLists/customersPageList.dart';
import 'package:anupa_customers/appLists/kitchenPageList.dart';
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
      'tableNo': tableNo[tableNo.length - 2] + tableNo[tableNo.length - 1],
      'foodName': foodIs,
      'quantity': /*'X ' +*/ counter.toString(),
      'bill': /*'\$' + */ (int.parse(priceIs) * counter).toString(),
    };
    customersOrders.add(orders);
    newOrders.add(orders);
    print(customersOrders);
    print(newOrders);
  }
}
