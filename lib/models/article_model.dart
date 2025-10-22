class ArticleModel {
  final String title;
  final String? subTitle;
  final String? newsImage;
  final String? author;
  final String? content;

  ArticleModel(
      {required this.title,
      required this.subTitle,
      required this.newsImage,
      required this.author,
      required this.content});


      factory ArticleModel.fromJson(json){
        return ArticleModel(
        title: json["title"],
        subTitle: json["description"],
        newsImage: json["urlToImage"],
        author: json["author"],
        content: json["content"],
      );
      }
}
