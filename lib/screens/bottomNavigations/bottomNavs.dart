import 'package:anupa_customers/screens/completedOrdersPage/orderingPage.dart';
import 'package:anupa_customers/screens/customersPage/customersPage.dart';
import 'package:anupa_customers/screens/kitchenPage/kitchensPage.dart';
import 'package:anupa_customers/screens/newsFeeds/newsFeeds.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  static String routeName = "/bottom_nav";

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    NewsFeeds(),
    CustomersPage(),
    KitchenPage(),
    CompletedOrdersPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
            icon: Icon(Icons.done_all_sharp),
            label: 'Completed Orders',
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
