import 'package:flutter/material.dart';
import 'package:foody_app/Src/models/category.dart';

List<Category> categoriesList = [
  Category(name: 'Salad', image: 'salad10.jpg'),
  Category(name: 'Fast Food', image: 'fastfood.jpg'),
  Category(name: 'Sand Which', image: 'sandwich.jpg'),
  Category(name: 'Ice-Cream', image: 'ice.png'),
  Category(name: 'Vegitables', image: 'salad10.jpg'),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.shade50,
                        offset: Offset(1, 1),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset("images/${categoriesList[index].image}"),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('${categoriesList[index].name}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
