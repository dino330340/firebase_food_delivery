import 'package:flutter/material.dart';

import '../model/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;

  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(widget.food.imagePath),
          Text(widget.food.name),
          Text(widget.food.description),

          // addons
          ListView.builder(
            shrinkWrap: true,
              itemCount: widget.food.avaliableAddon.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
            return CheckboxListTile(value: false, onChanged: (value){}
            );
          }
          )
        ],
      ),
    );
  }
}
