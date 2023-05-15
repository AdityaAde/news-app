import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../models/models.dart';
import 'controller/controller.dart';
import 'widgets/category_chip_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const route = AutoRoute(
    path: 'home',
    page: HomePage,
    initial: true,
  );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final SelectedChipController _selectedChipController;

  @override
  void initState() {
    super.initState();
    _selectedChipController = SelectedChipController.create();
  }

  @override
  void dispose() {
    _selectedChipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categoryList = NewsModels.categoryList;
    return ChangeNotifierProvider.value(
      value: _selectedChipController,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70.0.h),
            child: CategoryChipWidget(categoryList: categoryList),
          ),
        ),
        body: Consumer<SelectedChipController>(
          builder: (context, value, _) => Center(
            child: Text(value.selectedCategory),
          ),
        ),
      ),
    );
  }
}
