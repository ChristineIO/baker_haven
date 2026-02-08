import 'package:flutter/material.dart';

class ProfileRecipeCard extends StatelessWidget {
  final String title;
  final int likes;

  const ProfileRecipeCard({super.key, required this.title, required this.likes});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Icon(
                Icons.bakery_dining,
                color: Colors.pink.shade300,
                size: 40,
              ),
            ),
          ),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.favorite, size: 14, color: Colors.pink),
              const SizedBox(width: 4),
              Text(likes.toString()),
            ],
          ),
        ],
      ),
    );
  }
}