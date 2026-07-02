import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  final String apikey = const String.fromEnvironment('NEWS_API_KEY');

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apikey=$apikey&category=$category',
    );

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(article);

      articlesList.add(articleModel);
    }

    return articlesList;
  }
}
