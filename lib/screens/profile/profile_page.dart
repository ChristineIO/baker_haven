import 'package:baker_haven/widgets/profile/profile_option.dart';
import 'package:baker_haven/widgets/profile/profile_recipe_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/banner_text.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xffe0b2c3)),
              ),
              child: Column(
                children: [
                  // Avatar
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.pink.shade100,
                    child: const Icon(
                      Icons.cake,
                      color: Color(0xffb35a76),
                      size: 32,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Username
                  const Text(
                    "username",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),

                  const Text(
                    "Home Baker",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),

                  const SizedBox(height: 20),

                  // My Recipes header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "My Recipes",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "See all >",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // Recipe grid
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
            ),
          ],
        ),
      ),
    );
  }
}
