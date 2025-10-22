import 'package:dio/dio.dart';
import 'package:myten_om_news_khara/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apikey=28717189a6414bf588c5298840cbaefe&category=$category',
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
