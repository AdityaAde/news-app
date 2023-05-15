import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../models/models.dart';
import '../../widgets/widgets.dart';
import '../search/search.dart';
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
  late final SearchCubit _searchCubit;

  @override
  void initState() {
    super.initState();
    _selectedChipController = SelectedChipController.create();
    _newsCubit = NewsCubit.create();
    _searchCubit = SearchCubit.create(context);
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
        BlocProvider.value(value: _searchCubit),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('NEWS'),
          actions: [
            IconButton(
              onPressed: () => showSearch(
                context: context,
                delegate: SearchNewsPage(searchCubit: _searchCubit),
              ),
              icon: const Icon(Icons.search),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70.0.h),
            child: CategoryChipWidget(categoryList: categoryList),
          ),
        ),
        body: BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              loading: () => const LoadingWidget(),
              success: (news) => Consumer<SelectedChipController>(
                builder: (context, value, _) {
                  return ListView.builder(
                    itemCount: news.length,
                    itemBuilder: (context, i) {
                      final newsItem = news[i];
                      return NewsCardWidget(
                        urlImage: newsItem.urlToImage,
                        title: newsItem.title,
                        description: newsItem.description,
                        author: newsItem.author,
                        publishedAt: newsItem.publishedAt,
                      );
                    },
                  );
                },
              ),
              error: (err) => Center(child: Text('Something went wront $err')),
            );
          },
        ),
      ),
    );
  }
}
