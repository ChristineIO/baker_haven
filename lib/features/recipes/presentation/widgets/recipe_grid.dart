import 'package:baker_haven/widgets/profile/profile_option.dart';
import 'package:baker_haven/widgets/profile/profile_recipe_card.dart';
import 'package:flutter/material.dart';

class RecipeGrid extends StatelessWidget {
  const RecipeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.95,
            children: [
              ProfileRecipeCard(title: "Banana Bread", likes: 88),
              ProfileRecipeCard(title: "Cupcake", likes: 123),
              ProfileRecipeCard(
                title: "Chocolate Chip Cookies",
                likes: 103,
              ),
              ProfileRecipeCard(title: "Strawberry Tart", likes: 123),
            ],
          ),
          const SizedBox(height: 16),
          // Options
          const Divider(),
          const ProfileOption(icon: Icons.edit, text: "Edit Profile"),
          const ProfileOption(
            icon: Icons.bookmark,
            text: "Saved Recipes",
          ),
          const ProfileOption(icon: Icons.logout, text: "Logout"),
        ],
      ),
    );
  }
}