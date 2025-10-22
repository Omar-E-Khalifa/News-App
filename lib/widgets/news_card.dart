import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articleModel.newsImage != null &&
                    articleModel.newsImage!.isNotEmpty
                ? Image.network(
                    articleModel.newsImage!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Image.asset("assets/no_image.png"),
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Opacity(
            opacity: 0.4,
            child: Text(
              articleModel.subTitle ?? "",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Opacity(
              opacity: 0.4,
              child: Text(
                articleModel.author != null
                    ? "By :${articleModel.author}"
                    : "By: Unkown",
                textAlign: TextAlign.end,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
