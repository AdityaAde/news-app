import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CategoryNewsPage extends StatelessWidget {
  const CategoryNewsPage({super.key});

  static const route = AutoRoute(
    path: 'category-news',
    page: CategoryNewsPage,
  );

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Category News'));
  }
}
