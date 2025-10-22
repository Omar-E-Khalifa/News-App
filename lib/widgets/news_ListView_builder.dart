import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:myten_om_news_khara/models/article_model.dart';
import 'package:myten_om_news_khara/services/news_service.dart';
import 'package:myten_om_news_khara/widgets/loading_circle.dart';
import 'package:myten_om_news_khara/widgets/news_ListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  bool isLoading = true;

  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapShot) {
          if (snapShot.hasData) {
            return NewsListView(articles: snapShot.data!);
          } else if (snapShot.hasError) {
            return const SliverToBoxAdapter(
              child: Text("Opps, there was an error, try again later!"),
            );
          } else {
            return LoadingCircle();
          }
        });
  }
}
