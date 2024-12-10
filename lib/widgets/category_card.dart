import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  final Categories category;
  const CategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CategoryView(
              category: category.name,
            );
          },
        ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        alignment: Alignment.center,
        height: 200,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              category.imageUrl,
            ),
          ),
        ),
        child: Text(
          category.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
