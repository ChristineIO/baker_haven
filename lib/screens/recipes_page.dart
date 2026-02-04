import 'package:baker_haven/data/cake_ingredients.dart';
import 'package:baker_haven/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

import '../data/cookie_ingredients.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Recipes'),
        surfaceTintColor: Colors.pink.shade700,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/banner_recipes_icons.png'),

                const SizedBox(height: 20),
                RecipeCard(
                  title: cakeRecipe['title'] as String,
                  ingredients: cakeRecipe['ingredients'] as List<String>,
                  maxListValue: 6,
                ),
                RecipeCard(
                  title: cookieRecipe['title'] as String,
                  ingredients: cookieRecipe['ingredients'] as List<String>,
                  maxListValue: 6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
