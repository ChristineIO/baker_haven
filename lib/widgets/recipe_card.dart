import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {

  final List<String> ingredients;
  final String title;
  final int maxListValue;

  const RecipeCard({super.key, required this.title, required this.ingredients, required this.maxListValue});
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 20.0,
                bottom: 10.0,
              ),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 64, 43, 37),
                  width: 5.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...ingredients.take(maxListValue).map((item) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('• '),
                            Expanded(child: Text(item)),
                          ],
                        );
                      }),
                      if (ingredients.length > maxListValue)
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Color.fromARGB(
                                255,
                                159,
                                212,
                                255,
                              ),
                              side: BorderSide(
                                color: Color.fromARGB(255, 159, 212, 255),
                                width: 2.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                            ),
                            onPressed: () {},

                            child: Text('see more...'),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            );
  }
}
