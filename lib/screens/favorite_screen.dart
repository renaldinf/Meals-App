import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets//meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoreiteMeals;

  FavoritesScreen(this.favoreiteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoreiteMeals.isEmpty){
    return Center(
      child: Text("You have no favorite yet - start adding some!"),
    );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoreiteMeals[index].id,
            title: favoreiteMeals[index].title,
            imageUrl: favoreiteMeals[index].imageUrl,
            duration: favoreiteMeals[index].duration,
            complexity: favoreiteMeals[index].complexity,
            affordability: favoreiteMeals[index].affordability,
          );
        },
        itemCount: favoreiteMeals.length,
      );
    }
  }
}