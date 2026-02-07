import 'package:flutter/material.dart';

class CreateRecipe extends StatefulWidget {
  const CreateRecipe({super.key});

  @override
  State<CreateRecipe> createState() => _CreateRecipeState();
}

class _CreateRecipeState extends State<CreateRecipe> {
  final _titleController = TextEditingController();
  final List<TextEditingController> _ingredientsControllers = [
    TextEditingController(),
  ];

  void _cleanupEmptyIngredients() {
    // Keep only ONE empty controller (the last one)
    int emptyCount = 0;

    _ingredientsControllers.removeWhere((controller) {
      if (controller.text.trim().isEmpty) {
        emptyCount++;
        return emptyCount > 1;
      }
      return false;
    });

    // Safety net: never allow zero fields
    if (_ingredientsControllers.isEmpty) {
      _ingredientsControllers.add(TextEditingController());
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    for (final c in _ingredientsControllers) {
      c.dispose();
    }
    super.dispose();
  }

  void _addIngredient() {
    setState(() {
      _ingredientsControllers.add(TextEditingController());
    });
  }

  void _saveRecipe() {
    final title = _titleController.text.trim();
    final ingredients = _ingredientsControllers
        .map((c) => c.text.trim())
        .where((text) => text.isNotEmpty)
        .toList();

    if (title.isEmpty || ingredients.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Add a title and at least one ingredient'),
        ),
      );
      return;
    }

    debugPrint('Recipe saved');
    debugPrint('Title: $title');
    debugPrint('Ingredients: $ingredients');

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Recipe'),
        actions: [
          IconButton(icon: const Icon(Icons.check), onPressed: _saveRecipe),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addIngredient,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Recipe Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _ingredientsControllers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: TextField(
                      controller: _ingredientsControllers[index],
                      onChanged: (value) {
                        final isLast =
                            index == _ingredientsControllers.length - 1;
                        final hasText = value.trim().isNotEmpty;

                        if (isLast && hasText) {
                          setState(() {
                            _ingredientsControllers.add(
                              TextEditingController(),
                            );
                          });
                        }

                        setState(() {
                          _cleanupEmptyIngredients();
                        });
                      },

                      decoration: InputDecoration(
                        labelText: 'Ingredient ${index + 1}',
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
