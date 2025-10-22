import 'package:flutter/material.dart';
import 'package:myten_om_news_khara/models/article_model.dart';
import 'package:myten_om_news_khara/widgets/news_card.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        BuildContext context,
        index,
      ) {
        return NewsCard(articleModel: articles[index]);
      }),
    );
  }
}
