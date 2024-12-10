import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/get_news_service.dart';
import 'package:news_app/widgets/custom_loading_indicator.dart';
import 'package:news_app/widgets/news_builder_widget.dart';

bool hasError = false;

class ArticleListBuilder extends StatefulWidget {
  final String category;

  const ArticleListBuilder({super.key, required this.category});

  @override
  State<ArticleListBuilder> createState() => _ArticleListBuilderState();
}

class _ArticleListBuilderState extends State<ArticleListBuilder> {
  Future<List<Articles>>? future;

  @override
  void initState() {
    future = GetNewsService().getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData == false) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomLoadingIndicator(),
          );
        } else if (hasError) {
          return SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: Image.asset('assets/OIP.jpeg')));
        }

        return NewsBuilderWidget(
          articlesList: snapshot.data!,
        );
      },
    );
  }
}
