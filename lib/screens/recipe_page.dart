import 'package:baker_haven/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

import '../data/cake_ingredients.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe - Cinnamon Roll Delight!')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/banner_recipes_icons.png'),

                const SizedBox(height: 20),
                RecipeCard(title: cakeRecipe['title'] as String, ingredients: cakeRecipe['ingredients'] as List<String>, maxListValue: 1000),
              ],
            ),
          ),
        ),
      ),
    );
  }
}