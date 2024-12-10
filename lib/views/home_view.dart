import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view_widget.dart';
import 'package:news_app/widgets/news_list_view_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
        actions: <Widget>[
          PopupMenuButton<int>(
            onSelected: (value) {
              if (value == 1) {
                print('Option 1 selected');
              } else if (value == 2) {
                print('Option 2 selected');
              } else if (value == 3) {
                print('Option 3 selected');
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Option 1"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Option 2"),
              ),
              PopupMenuItem(
                value: 3,
                child: Text("Option 3"),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: CategoryListView()),
            const SliverToBoxAdapter(child: SizedBox(height: 8)),
            ArticleListBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
