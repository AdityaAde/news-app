import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import 'shimmer.dart';

class ImageCachedWidget extends StatelessWidget {
  const ImageCachedWidget({
    super.key,
    required this.url,
  });

  final String? url;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url ?? '',
      imageBuilder: (context, imageProvider) => DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) => const ShimmerWidget(
        child: ColoredBox(
          color: Color(0xfff8f8f8),
        ),
      ),
      errorWidget: (context, url, error) => ColoredBox(
        color: const Color(0xfff8f8f8),
        child: Assets.images.emptyImage.image(fit: BoxFit.cover),
      ),
      memCacheHeight: 202,
      memCacheWidth: 360,
    );
  }
}
