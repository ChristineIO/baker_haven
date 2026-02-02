import 'package:baker_haven/data/cake_ingredients.dart';
import 'package:flutter/material.dart';
import '../widgets/recipe_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecipeCard(ingredients: cakeIngredients)
          ],
        ),
      );
  }
}