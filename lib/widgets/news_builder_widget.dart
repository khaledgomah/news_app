import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/widgets/news_card.dart';

class NewsBuilderWidget extends StatelessWidget {
 final List<Articles> articlesList;
  const NewsBuilderWidget({
    super.key, required this.articlesList,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
      itemCount:articlesList.length,
      itemBuilder: (context, index) =>
          NewsCard(news: articlesList[index]),
    );
  }
}
