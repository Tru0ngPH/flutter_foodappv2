import 'package:flutter/material.dart';
import 'package:flutter_foodappv2/models/category.dart';
import 'package:flutter_foodappv2/values/app_styles.dart';

import 'food_page.dart';

class CategoryItem extends StatelessWidget {
  final Category? category;
  const CategoryItem({Key? key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? _color = category!.color;
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [_color!.withOpacity(0.7), _color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          color: _color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(category!.name, style: AppStyles.dah4)],
        ),
      ),
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => FoodsPage(category: category)));

        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => FoodsPage(category: category)));

        Navigator.pushNamed(context, FoodsPage.routeName,
            arguments: {'category': category});
      },
      splashColor: Colors.deepOrangeAccent,
      borderRadius: BorderRadius.circular(20),
    );
  }
}
