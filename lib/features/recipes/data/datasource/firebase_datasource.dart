import 'package:baker_haven/features/recipes/data/models/recipe_model.dart';

class FirebaseRecipeSource {
  final List<RecipeModel> _fakeDb = [];

  Future<List<RecipeModel>> getRecipes() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _fakeDb;
  }

  Future<void> addRecipe(RecipeModel recipe) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _fakeDb.add(recipe);
  }

  Future<void> deleteRecipe(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _fakeDb.removeWhere((r) => r.id == id);
  }
}