import 'package:firebase_food_delivery/components/my_current_location.dart';
import 'package:firebase_food_delivery/components/my_description_box.dart';
import 'package:firebase_food_delivery/components/my_drawer.dart';
import 'package:firebase_food_delivery/components/my_sliver_app.dart';
import 'package:firebase_food_delivery/components/my_tab_bar.dart';
import 'package:firebase_food_delivery/model/food.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  // tab controller
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MySliverApp(
              title: MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                 const MyCurrentLocation(),

                 const MyDescriptionBox()
                ],
              ),
            ),
          ],
          body: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Text("first tab item"),
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Text("second tab item"),
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Text("third tab item"),
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Text("Fourth tab item"),
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Text("Fifth tab item"),
              ),
            ],
          )
          ),
        );
  }
}
