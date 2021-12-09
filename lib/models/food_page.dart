import 'package:flutter/material.dart';
import 'package:flutter_foodappv2/models/fake_data.dart';
import 'package:flutter_foodappv2/models/food.dart';
import 'package:flutter_foodappv2/values/app_styles.dart';
import 'category.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  Category? category;
  FoodsPage({Key? key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Map<String, Category?> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Category?>;
    category = arguments['category'];
    List<Food> foods =
        fakeFoods.where((food) => food.categoryId == category?.id).toList();
    return Scaffold(
      appBar: AppBar(
          title: Text(
        '',
        style: AppStyles.dah3.copyWith(fontStyle: FontStyle.italic),
      )),
      body: Center(),
    );
  }
}
