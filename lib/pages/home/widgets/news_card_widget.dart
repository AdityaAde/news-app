import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/route/routers.gr.dart';
import '../../../component/theme/theme.dart';
import '../../../widgets/widgets.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    super.key,
    this.urlImage,
    this.title,
    this.description,
    this.author,
  });

  final String? urlImage;
  final String? title;
  final String? description;
  final String? author;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () => AutoRouter.of(context).push(
        NewsDetailRoute(
          title: title ?? '',
          urlImage: urlImage,
          description: description,
          author: author,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Card(
          elevation: 10,
          child: Container(
            height: 150.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: ImageCachedWidget(url: urlImage ?? ''),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.titleMedium
                              ?.copyWith(color: AppColor.ink01),
                        ),
                        Text(
                          description ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodySmall?.copyWith(
                            color: AppColor.ink01.withOpacity(0.7),
                          ),
                        ),
                        Text(
                          author ?? '',
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.titleMedium
                              ?.copyWith(color: AppColor.ink01),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
