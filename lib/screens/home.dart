import 'package:baker_haven/data/cake_ingredients.dart';
import 'package:baker_haven/screens/recipes_page.dart';
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
          RecipeCard(ingredients: cakeIngredients),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue.shade300,
                  side: BorderSide(color: Colors.blue.shade300, width: 2.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RecipesPage(),
                    ),
                  );
                },

                child: Text(
                  'more recipes...',
                  style: TextStyle(fontSize: 18, color: Colors.blue.shade300),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
