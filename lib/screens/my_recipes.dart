// import 'package:baker_haven/screens/recipes_page.dart';
import 'package:baker_haven/screens/create_recipe.dart';
import 'package:baker_haven/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class MyRecipes extends StatelessWidget {
  const MyRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recipes'),
        surfaceTintColor: Colors.pink.shade700,
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              RecipeCard(
                title: 'Creamy Garlic Chicken',
                ingredients: [
                  '2 chicken breasts',
                  '3 cloves garlic',
                  '200ml double cream',
                  '1 tbsp olive oil',
                  '50g parmesan',
                  'Salt & black pepper',
                ],
                maxListValue: 6,
              ),
              RecipeCard(
                title: 'Ultimate Everything Stew',
                ingredients: [
                  'Onions',
                  'Garlic',
                  'Carrots',
                  'Celery',
                  'Potatoes',
                  'Tomatoes',
                  'Chickpeas',
                  'Spinach',
                  'Paprika',
                  'Cumin',
                  'Bay leaves',
                ],
                maxListValue: 9,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'addRecipeFab',
        onPressed: () {
          Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateRecipe(),
                    ),
                  );
        },
        backgroundColor: Colors.blue.shade300,
        splashColor: Colors.blueAccent,
        shape: CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }
}
