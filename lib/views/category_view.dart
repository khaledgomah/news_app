import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_widget.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News"),
            Text(
              'Cloud',
              style:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [ArticleListBuilder(category: category)]),
      ),
    );
  }
}
