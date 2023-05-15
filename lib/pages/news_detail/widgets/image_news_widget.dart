import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/widgets.dart';

class ImageNewsWidget extends StatelessWidget {
  const ImageNewsWidget({
    super.key,
    this.urlImage,
  });

  final String? urlImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200.h,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          child: ImageCachedWidget(url: urlImage ?? ''),
        ),
      ),
    );
  }
}
