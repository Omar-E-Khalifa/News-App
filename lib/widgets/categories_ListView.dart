import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';
import 'package:news_app/widgets/category.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key, required this.categoryTitles});

  final List<CateogryModel> categoryTitles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryTitles.length,
        itemBuilder: (BuildContext context, index) {
          return Category(
            item: categoryTitles[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryView(
                          category: categoryTitles[index].name,
                        )),
              );
            },
          );
        },
      ),
    );
  }
}
