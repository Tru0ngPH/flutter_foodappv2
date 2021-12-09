import 'package:flutter/material.dart';
import 'package:flutter_foodappv2/categories_page.dart';
import 'package:flutter_foodappv2/models/food_page.dart';
import 'package:flutter_foodappv2/values/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/FoodsPage': (context) => FoodsPage(),
          '/CategoriesPage': (context) => const CategoriesPage(),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: true,
              title: Center(
                child: Text(
                  'Food\'s categories',
                  style: AppStyles.dah3.copyWith(
                      fontWeight: FontWeight.bold,
                      shadows: [
                        const BoxShadow(
                            color: Colors.black26,
                            offset: Offset(2, 3),
                            blurRadius: 6)
                      ]),
                ),
              )),
          body: const CategoriesPage(),
        ));
  }
}
