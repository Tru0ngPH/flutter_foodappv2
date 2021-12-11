import 'package:flutter/material.dart';

import 'category.dart';
import 'food.dart';

const List<Category> fakeCategories = [
  Category(id: 1, name: 'Japanese\'s Food', color: Colors.orange),
  Category(id: 2, name: 'Pizza', color: Colors.blue),
  Category(id: 3, name: 'Humbergers', color: Colors.amber),
  Category(id: 4, name: 'VietNam\'s Food', color: Colors.deepOrange),
  Category(id: 5, name: 'Italian', color: Colors.cyan),
  Category(id: 6, name: 'Milk', color: Colors.redAccent),
  Category(id: 7, name: 'Coffes', color: Colors.blueAccent),
  Category(id: 8, name: 'Vegetables', color: Colors.orangeAccent),
  Category(id: 9, name: 'Fruits', color: Colors.deepOrange),
  Category(id: 10, name: 'Juice', color: Colors.cyan),
];

var fakeFoods = [
  //array of food's objects
  Food(
      name: "sushi",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/1200px-Sushi_platter.jpg",
      duration: const Duration(minutes: 25),
      complexity: Complexity.medium,
      ingredients: ['Sushi-meshi', 'Nori', 'Condiments'],
      categoryId: 1),
  Food(
      name: "Pizza tonda",
      urlImage:
          "https://blog.giallozafferano.it/ricettepanedolci/wp-content/uploads/2020/04/pizza-rotonda-in-teglia-1.jpeg",
      duration: const Duration(minutes: 15),
      complexity: Complexity.hard,
      ingredients: [
        'Tomato sauce',
        'Fontina cheese',
        'Pepperoni',
        'Onions',
        'Mushrooms',
        'pepperoncini'
      ],
      categoryId: 2),
  Food(
      name: "Makizushi",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/KansaiSushi.jpg",
      complexity: Complexity.simple,
      duration: const Duration(minutes: 20),
      categoryId: 1),
  Food(
      name: "Tempura",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/a/ac/Peixinhos_da_horta.jpg",
      duration: const Duration(minutes: 15),
      complexity: Complexity.simple,
      categoryId: 1),
  Food(
      name: "Neapolitan pizza",
      urlImage:
          "https://img-global.cpcdn.com/recipes/7f1a5380090f6300/1280x1280sq70/photo.jpg",
      duration: const Duration(minutes: 20),
      complexity: Complexity.medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms'],
      categoryId: 2),
  Food(
      name: "Sashimi",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Sashimi_-_Tokyo_-_Japan.jpg/2880px-Sashimi_-_Tokyo_-_Japan.jpg",
      duration: const Duration(hours: 1, minutes: 5),
      complexity: Complexity.medium,
      categoryId: 1),
  Food(
      name: "Homemade Humburger",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/5/58/Homemade_hamburger.jpg",
      duration: const Duration(minutes: 20),
      complexity: Complexity.hard,
      categoryId: 3),
];
