import 'package:flutter/material.dart';
import 'package:flutter_foodappv2/models/category_item.dart';
import 'package:flutter_foodappv2/models/fake_data.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);
  static const String routeName = '/CategoriesPage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 2,
        children: fakeCategories.map((e) => CategoryItem(category: e)).toList(),
      ),
    );
  }
}
