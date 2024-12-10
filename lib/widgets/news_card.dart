import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/views/article_view.dart';

class NewsCard extends StatelessWidget {
  final Articles news;
  const NewsCard({
    super.key,
    required this.news,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (news.url != null) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ArticleView(
                  articleUrl: news.url!,
                ),
              ));
        }
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(8),
                child: news.imageUrl != null
                    ? Image.network(
                        height: 250,
                        news.imageUrl!,
                        width: double.infinity,
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset(
                          'assets/no_photo.jpeg',
                        ),
                        fit: BoxFit.cover,
                      )
                    : Image.asset('assets/no_photo.jpeg')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                news.title ?? 'error',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                news.description ?? 'error',
                maxLines: 2,
                style: const TextStyle(
                    fontSize: 18,
                    overflow: TextOverflow.ellipsis,
                    color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
