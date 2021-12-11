import 'package:flutter/material.dart';
import 'package:flutter_foodappv2/models/detial_foods_page.dart';
import 'package:flutter_foodappv2/models/fake_data.dart';
import 'package:flutter_foodappv2/models/food.dart';
import 'package:flutter_foodappv2/values/app_icons.dart';
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
      body: Center(
          child: foods.isNotEmpty
              ? ListView.builder(
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    Food food = foods[index];
                    return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  DetialFoodPage(food: food)));
                        },
                        child: Stack(
                          children: [
                            Container(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 20, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        (index + 1).toString() +
                                            "." +
                                            food.name,
                                        style: AppStyles.dah4),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Colors.black38, width: 2)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        clipBehavior: Clip.hardEdge,
                                        child: Center(
                                          child: FadeInImage.assetNetwork(
                                              placeholder: IconsPath.loading,
                                              image: food.urlImage),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            Positioned(
                              top: 60,
                              right: 40,
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.lightBlue,
                                    border: Border.all(color: Colors.white)),
                                child: Text(
                                    food.complexity.toString().split('.').last,
                                    style: AppStyles.dah5),
                              ),
                            ),
                            Positioned(
                              top: 60,
                              left: 40,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black45),
                                    child: Row(children: [
                                      const Icon(
                                        Icons.access_alarm,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        ' ${food.duration.inMinutes} minutes',
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ));
                  })
              : const Text('No Food Found',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
    );
  }
}
