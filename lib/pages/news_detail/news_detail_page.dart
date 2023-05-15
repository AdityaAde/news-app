import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/widgets.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({
    super.key,
    @PathParam('title') required this.title,
    @QueryParam('utlImage') this.urlImage,
    @QueryParam('description') this.description,
    @QueryParam('author') this.author,
  });

  final String title;
  final String? urlImage;
  final String? description;
  final String? author;

  static const route = AutoRoute(
    path: 'detail-page/:title',
    page: NewsDetailPage,
  );

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('NEWS')),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageNewsWidget(urlImage: urlImage),
            SizedBox(height: 12.0.h),
            Text(title, style: textTheme.titleLarge),
            SizedBox(height: 12.0.h),
            Text(description ?? '-'),
            SizedBox(height: 24.0.h),
            Text(
              'Author: ${author ?? '-'}',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
