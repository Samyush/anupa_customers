import 'package:anupa_customers/networking/serverConnection/UserPersonalDemands/allFoods.dart';
import 'package:anupa_customers/networking/serverConnection/UserPersonalDemands/allTables.dart';
import 'package:anupa_customers/screens/customersPage/customersPage.dart';
import 'package:anupa_customers/screens/kitchenPage/kitchensPage.dart';
import 'package:anupa_customers/screens/newsFeeds/newsFeeds.dart';
import 'package:anupa_customers/screens/totalBills/totalBillPage.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  static String routeName = "/bottom_nav";

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    NewsFeeds(),
    CustomersPage(),
    KitchenPage(),
    TotalBills(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    //if following data in retrieving results to be null then it throws error
    AllFoods().getFoods();
    AllTables().getTables();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.deck),
            label: 'About Us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.room_service),
            label: 'Get your Order Placed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Kitchen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Total Bill',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey[600],
      ),
    );
  }
}
