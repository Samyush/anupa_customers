import 'package:anupa_customers/builder/foodDisplayList.dart';
import 'package:anupa_customers/resources/foodItemList.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({
    Key key,
  }) : super(key: key);

  @override
  _CategorySectionState createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: categoryList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // color: Colors.black12,
      body: ListView(
        children: <Widget>[
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                for (String category in categoryList)
                  Tab(
                    child: Text(
                      category,
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      ),
                    ),
                  ),
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 70,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                // for (String cato in categoryList)
                FoodDisplayListBuilder(foodCategory: alCarte),
                FoodDisplayListBuilder(foodCategory: choupsey),
                FoodDisplayListBuilder(foodCategory: chilly),
                FoodDisplayListBuilder(foodCategory: choila),
                FoodDisplayListBuilder(foodCategory: chowmin),
                FoodDisplayListBuilder(foodCategory: friedRice),
                FoodDisplayListBuilder(foodCategory: localRiceBowel),
                FoodDisplayListBuilder(foodCategory: localKatiya),
                FoodDisplayListBuilder(foodCategory: momo),
                FoodDisplayListBuilder(foodCategory: sekuwa),
                FoodDisplayListBuilder(foodCategory: thakaliSet),
              ]))
        ],
      ),
    );
  }
}
