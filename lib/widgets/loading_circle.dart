import 'package:flutter/material.dart';

class LoadingCircle extends StatelessWidget {
  const LoadingCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: CircularProgressIndicator(color: Colors.amber),
        ),
      );
  }
}