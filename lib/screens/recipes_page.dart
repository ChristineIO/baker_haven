import 'package:baker_haven/data/cake_ingredients.dart';
import 'package:baker_haven/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Recipes')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/banner_recipes_icons.png'),

                const SizedBox(height: 20),
                RecipeCard(ingredients: cakeIngredients),
                RecipeCard(ingredients: cakeIngredients),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
