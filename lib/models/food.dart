import 'dart:math';

class Food {
  int? id;
  String name;
  String urlImage;
  Duration duration; //time to finish this food
  Complexity? complexity;
  //one foods has many ingredients
  List<String>? ingredients = <String>[];
  //reference: 1 Category has many Foods
  int? categoryId;
  //constructor:
  Food(
      {required this.name,
      required this.urlImage,
      required this.duration,
      this.complexity,
      this.ingredients,
      this.categoryId}) {
    //id is "auto-increment"
    id = Random().nextInt(1000);
  }
}

enum Complexity { simple, medium, hard }
