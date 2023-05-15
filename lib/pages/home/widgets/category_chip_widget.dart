import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../component/theme/theme.dart';
import '../controller/controller.dart';

class CategoryChipWidget extends StatelessWidget {
  const CategoryChipWidget({super.key, required this.categoryList});

  final List<String> categoryList;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, i) {
          return Consumer<SelectedChipController>(
            builder: (context, value, _) => SizedBox(
              child: InkWell(
                onTap: () => value.selectChip(i, categoryList[i]),
                child: Chip(
                  label: Text(
                    categoryList[i],
                    style: textTheme.bodyMedium?.copyWith(
                      color: value.selectedIndex == i
                          ? AppColor.white
                          : AppColor.ink01,
                    ),
                  ),
                  backgroundColor:
                      value.selectedIndex == i ? Colors.blue : Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
