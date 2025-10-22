import 'package:flutter/material.dart';


class ArticleView extends StatelessWidget {
  const ArticleView({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.asset("assets/no_image.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Text(
              "text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am text kteeer mooot ya 3am ",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),

        ],
      ),
    );
  }
}
