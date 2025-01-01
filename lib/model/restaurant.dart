import 'package:firebase_food_delivery/model/food.dart';
import 'package:flutter/material.dart';

class Restaurant extends ChangeNotifier{
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
        name: "Classic CheeseBurger",
        description:
            "A juicy beef patty with melted cheese, lettuce, tomatoes, and a hint of onion and pickle.",
        imagePath: 'lib/images/burgers/classic_burger.jpg',
        price: 11,
        category: FoodCategory.burgers,
        avaliableAddon: [
          Addon(name: "Extra cheese", price: 2),
          Addon(name: "Grilled onions", price: 3),
          Addon(name: "Extra  patty", price: 5),
        ]
    ),
    Food(
        name: "Beef Bacon",
        description:
        "A juicy beef patty with melted cheese, beef bacon, onions, pickle, and special sauce",
        imagePath: 'lib/images/burgers/beef_bacon.jpg',
        price: 13,
        category: FoodCategory.burgers,
        avaliableAddon: [
          Addon(name: "Extra cheese", price: 2),
          Addon(name: "Beef bacon", price: 4),
          Addon(name: "Extra  patty", price: 5),
        ]
    ),
    Food(
        name: "Juicy Lucy",
        description:
        "Two juicy beef patties with melted cheese, beef bacon, onions, pickle, and signature lucy sauce",
        imagePath: 'lib/images/burgers/Juicy_lucy.jpg',
        price: 16,
        category: FoodCategory.burgers,
        avaliableAddon: [
          Addon(name: "Extra cheese", price: 2),
          Addon(name: "Extra sauce", price: 3),
          Addon(name: "Extra  patty", price: 5),
        ]
    ),
    Food(
        name: "Spicy burger",
        description:
        "A juicy beef patty covered in our signature hot sauce,pickles and coleslaw",
        imagePath: 'lib/images/burgers/spicy_burger.jpg',
        price: 18,
        category: FoodCategory.burgers,
        avaliableAddon: [
          Addon(name: "Extra Coleslaw", price: 3),
          Addon(name: "jalapenos", price: 4),
          Addon(name: "Extra  patty", price: 5),
        ]
    ),
    Food(
        name: "Turkey",
        description:
        "A juicy Turkey patty with melted cheese, beef bacon, onions, pickle, and special sauce",
        imagePath: 'lib/images/burgers/turkey_burger.jpg',
        price: 17,
        category: FoodCategory.burgers,
        avaliableAddon: [
          Addon(name: "Extra cheese", price: 3),
          Addon(name: "Grilled onions", price: 4),
          Addon(name: "Extra  patty", price: 5),
        ]
    ),

    // salads
    Food(
        name: "Chicken salad",
        description:
        "A chicken salad with fresh cut vegetables and olive oil.",
        imagePath: 'lib/images/salads/chicken_salad.jpg',
        price: 11,
        category: FoodCategory.salads,
        avaliableAddon: [
          Addon(name: "Extra chicken", price: 5),
          Addon(name: "Ranch sauce", price: 2),
          Addon(name: "Fresh bread", price: 5),
        ]
    ),
    Food(
        name: "Egg salad",
        description:
        "Two boiled eggs mixed with green veggies, seasoned and served with olive oil.",
        imagePath: 'lib/images/salads/egg_salad.jpg',
        price: 8,
        category: FoodCategory.salads,
        avaliableAddon: [
          Addon(name: "Extra eggs", price: 3),
          Addon(name: "Mayonnaise", price: 2),
          Addon(name: "Fresh bread", price: 5),
        ]
    ),
    Food(
        name: "Fruit salad",
        description:
        "A handful of strawberries are cut and served with a mixture of fruits and veggies. giving a sweet & sour taste",
        imagePath: 'lib/images/salads/fruit_salad.jpg',
        price: 9,
        category: FoodCategory.salads,
        avaliableAddon: [
          Addon(name: "Extra fruits", price: 6),
          Addon(name: "Honey", price: 4),
          Addon(name: "Fresh bread", price: 3),
        ]
    ),
    Food(
        name: "Green salad",
        description:
        "The classic green salad served with olive oil.",
        imagePath: 'lib/images/salads/greens_salad.jpg',
        price: 7,
        category: FoodCategory.salads,
        avaliableAddon: [
          Addon(name: "Chicken", price: 7),
          Addon(name: "Ranch sauce", price: 3),
          Addon(name: "Fresh bread", price: 4),
        ]
    ),
    Food(
        name: "Ranch salad",
        description:
        "Green salad is served with Ranch sauce",
        imagePath: 'lib/images/salads/ranch_salad.jpg',
        price: 10,
        category: FoodCategory.salads,
        avaliableAddon: [
          Addon(name: "Chicken", price: 3),
          Addon(name: "Olive oil", price: 7),
          Addon(name: "Fresh bread", price: 5),
        ]
    ),

    // desserts
    Food(
        name: "Blueberry cake",
        description:
        "A sweet blueberry flavoured cake/",
        imagePath: 'lib/images/desserts/blueberry_cake.jpg',
        price: 11,
        category: FoodCategory.desserts,
        avaliableAddon: [
          Addon(name: "Chocolate sauce", price: 3),
          Addon(name: "Oreo", price: 4),
          Addon(name: "Fruits", price: 5),
        ]
    ),
    Food(
        name: "CheeseCake",
        description:
        "A cheesecake with vanilla flavoured biscuits and whipped cream",
        imagePath: 'lib/images/desserts/cheescake.jpg',
        price: 10,
        category: FoodCategory.desserts,
        avaliableAddon: [
          Addon(name: "Oreo", price: 3),
          Addon(name: "Chocolate sauce", price: 4),
          Addon(name: "Ice cream scoop", price: 5),
        ]
    ),
    Food(
        name: "Chocolate brownie",
        description:
        "A chocolate flavoured brownie topped with dark chocolate sauce.",
        imagePath: 'lib/images/desserts/chocolate_brownie.jpg',
        price: 11,
        category: FoodCategory.desserts,
        avaliableAddon: [
          Addon(name: "Extra chocolate sauce", price: 3),
          Addon(name: "Oreo", price: 5),
          Addon(name: "Dark chocolate ", price: 4),
        ]
    ),
    Food(
        name: "Lava chocolate cake",
        description:
        "A chocolate lava cake filled with hot sweet chocolate sauce served with a scoop of ice cream.",
        imagePath: 'lib/images/desserts/lava_chocolate_cake.jpg',
        price: 11,
        category: FoodCategory.desserts,
        avaliableAddon: [
          Addon(name: "Extra ice cream scoop", price: 3),
          Addon(name: "Cookie crumbs", price: 7),
          Addon(name: "Berries", price: 5),
        ]
    ),
    Food(
        name: "Strawberry cheesecake",
        description:
        "A strawberry flavoured cheesecake.",
        imagePath: 'lib/images/desserts/strawberry_cake.jpg',
        price: 11,
        category: FoodCategory.desserts,
        avaliableAddon: [
          Addon(name: "Ice cream scoop", price: 3),
          Addon(name: "vanilla sauce", price: 7),
          Addon(name: "Berries", price: 5),
        ]
    ),

    // drinks
    Food(
        name: "7Up",
        description:
        "7Up fizzy drink",
        imagePath: 'lib/images/drinks/7up.jpg',
        price: 4,
        category: FoodCategory.drinks,
        avaliableAddon: [
          Addon(name: "Ice", price: 3),
          Addon(name: "Straw", price: 3),
        ]
    ),
    Food(
        name: "Coca Cola",
        description:
        "Coca Cola fizzy drink",
        imagePath: 'lib/images/drinks/cocacola.jpg',
        price: 4,
        category: FoodCategory.drinks,
        avaliableAddon: [
          Addon(name: "Ice", price: 3),
          Addon(name: "Straw", price: 3),
        ]
    ),
    Food(
        name: "Fanta",
        description:
        "Fanta orange",
        imagePath: 'lib/images/drinks/fanta.jpg',
        price: 4,
        category: FoodCategory.drinks,
        avaliableAddon: [
          Addon(name: "Ice", price: 3),
          Addon(name: "Straw", price: 3),
        ]
    ),
    Food(
        name: "Mountain Dew",
        description:
        "Mountain Dew fizzy drink",
        imagePath: 'lib/images/drinks/mountain_dew.jpg',
        price: 4,
        category: FoodCategory.drinks,
        avaliableAddon: [
          Addon(name: "Ice", price: 3),
          Addon(name: "Straw", price: 3),
        ]
    ),
    Food(
        name: "Pepsi",
        description:
        "Pepsi fizzy drink.",
        imagePath: 'lib/images/drinks/pepsi.jpg',
        price: 4,
        category: FoodCategory.drinks,
        avaliableAddon: [
          Addon(name: "Ice", price: 3),
          Addon(name: "Straw", price: 3),
        ]
    ),

    // sides
    Food(
        name: "Buffalo chicken wings",
        description:
        "5 chicken wing pieces covered in buffalo sauce.",
        imagePath: 'lib/images/sides/chicken_wings.jpg',
        price: 6,
        category: FoodCategory.sides,
      avaliableAddon: []
    ),
    Food(
        name: "French fries",
        description:
        "A side of french fires",
        imagePath: 'lib/images/sides/french_fries.jpg',
        price: 6,
        category: FoodCategory.sides,
        avaliableAddon: []
    ),
    Food(
        name: "Garlic bread",
        description:
        "Cheesy garlic bread sticks.",
        imagePath: 'lib/images/sides/garlic_bread.jpg',
        price: 7,
        category: FoodCategory.sides,
        avaliableAddon: []
    ),
    Food(
        name: "Mac & cheese",
        description:
        "A mac & cheese side",
        imagePath: 'lib/images/sides/mac_cheese.jpg',
        price: 8,
        category: FoodCategory.sides,
        avaliableAddon: []
    ),
    Food(
        name: "Onion rings",
        description:
        "A side of onion rings",
        imagePath: 'lib/images/sides/onion_rings.jpg',
        price: 8,
        category: FoodCategory.sides,
        avaliableAddon: []
    ),
  ];

  // Getter
List<Food> get menu => _menu;



}
