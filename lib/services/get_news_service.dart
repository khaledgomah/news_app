import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/widgets/news_list_view_widget.dart';

class GetNewsService {
  String apiKey = '7200f2397d6b4b6aae82d0d4733143c1';

  Future<List<Articles>> getNews({required String category,String country='us'}) async {
    final Dio dio = Dio();
    List<Articles> articlesList = [];

    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=$country&apiKey=$apiKey&category=$category');
      Map<String, dynamic> jsonData = response.data;

      for (Map<String, dynamic> element in jsonData['articles']) {
        articlesList.add(Articles.fromJson(json: element));
      }
    } catch (e) {
      hasError = true;
    }
    return articlesList;
  }
}