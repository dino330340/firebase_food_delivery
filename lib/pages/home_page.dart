import 'package:firebase_food_delivery/components/my_current_location.dart';
import 'package:firebase_food_delivery/components/my_drawer.dart';
import 'package:firebase_food_delivery/components/my_sliver_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MySliverApp(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  MyCurrentLocation()
                ],
              ),
              title: Text("title"),
            ),
          ],
          body: Container(
            color: Colors.blue,
          ),
        ));
  }
}
