import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../models/models.dart';
import 'blocs/blocs.dart';
import 'controller/controller.dart';
import 'widgets/widgets.dart';

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
  late final NewsCubit _newsCubit;

  @override
  void initState() {
    super.initState();
    _selectedChipController = SelectedChipController.create();
    _newsCubit = NewsCubit.create();
    _newsCubit.getNewsByCategory(_selectedChipController.selectedCategory);
  }

  @override
  void dispose() {
    _selectedChipController.dispose();
    _newsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categoryList = NewsModels.categoryList;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _selectedChipController),
        BlocProvider.value(value: _newsCubit),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('NEWS'),
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
          builder: (context, value, _) => ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => const NewsCardWidget(),
          ),
        ),
      ),
    );
  }
}
