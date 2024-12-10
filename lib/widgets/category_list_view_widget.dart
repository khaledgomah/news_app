import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  final List<Categories> categorysList = const [
    Categories(
      name: 'Sports',
      imageUrl: 'assets/sports.png',
    ),
    Categories(name: 'General', imageUrl: 'assets/general.png'),
    Categories(name: 'Science', imageUrl: 'assets/science.png'),
    Categories(name: 'Business', imageUrl: 'assets/business.png'),
    Categories(name: 'Entertainment', imageUrl: 'assets/entertaiment.png'),
    Categories(name: 'Technology', imageUrl: 'assets/technology.jpeg'),
    Categories(name: 'Health', imageUrl: 'assets/health.png'),
  ];
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: categorysList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(
          category: categorysList[index],
        ),
      ),
    );
  }
}
