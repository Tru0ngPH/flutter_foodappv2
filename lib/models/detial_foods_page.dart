import 'package:flutter/material.dart';
import 'package:flutter_foodappv2/models/food.dart';
import 'package:flutter_foodappv2/values/app_icons.dart';
import 'package:flutter_foodappv2/values/app_styles.dart';

class DetialFoodPage extends StatelessWidget {
  final Food? food;
  DetialFoodPage({Key? key, this.food}) : super(key: key);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            food!.name,
            style: AppStyles.dah3,
          ),
        ),
        body: Column(
          children: <Widget>[
            Center(
                child: FadeInImage.assetNetwork(
              placeholder: IconsPath.loading,
              image: food!.urlImage,
            )),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Text('Ingredients:',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            Expanded(
                child: (food != null && food!.ingredients != null)
                    ? ListView.builder(
                        itemCount: food!.ingredients!.length,
                        itemBuilder: (context, index) {
                          String ingredient = food!.ingredients![index];
                          return ListTile(
                            leading: CircleAvatar(
                              child: Text(
                                '#${index + 1}',
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.black),
                              ),
                            ),
                            title: Text(
                              ingredient,
                              style: const TextStyle(fontSize: 22),
                            ),
                          );
                        })
                    : const Text('No Detial Found'))
          ],
        ));
  }
}
