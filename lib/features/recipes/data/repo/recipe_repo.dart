import '../models/recipe_model.dart';
import '../datasource/firebase_datasource.dart';

class RecipeRepository {
  final FirebaseRecipeSource source;

  RecipeRepository(this.source);

  Future<List<RecipeModel>> getRecipes() {
    return source.getRecipes();
  }

  Future<void> addRecipe(RecipeModel recipe) {
    return source.addRecipe(recipe);
  }

  Future<void> deleteRecipe(String id) {
    return source.deleteRecipe(id);
  }
}