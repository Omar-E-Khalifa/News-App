import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/categories_ListView.dart';
import 'package:news_app/widgets/news_ListView_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<CateogryModel> categoryTitles = const [
    CateogryModel(image: 'assets/business.avif', name: "Business"),
    CateogryModel(image: 'assets/entertaiment.avif', name: "Entertainment"),
    CateogryModel(image: 'assets/health.avif', name: "Health"),
    CateogryModel(image: 'assets/science.avif', name: "Science"),
    CateogryModel(image: 'assets/technology.jpeg', name: "Technology"),
    CateogryModel(image: 'assets/sports.avif', name: "Sports"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CategoriesListView(categoryTitles: categoryTitles),
          ),
          NewsListViewBuilder(
            category: 'general',
          ),
        ],
      ),
    );
  }
}
