import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../widgets/widgets.dart';
import '../home/widgets/widgets.dart';
import 'blocs/blocs.dart';

class SearchNewsPage extends SearchDelegate<String> {
  final SearchCubit searchCubit;

  SearchNewsPage({required this.searchCubit});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      Row(
        children: [
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              query = '';
            },
          ),
          IconButton(
            onPressed: () async {
              final dateTime = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2010),
                lastDate: DateTime(2025),
              );
              String formattedDate =
                  DateFormat('yyyy-MM-dd').format(dateTime ?? DateTime(0));

              searchCubit.setDateTime(formattedDate);
            },
            icon: const Icon(Icons.calendar_month_outlined),
          )
        ],
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    searchCubit.getSearchNews(search: query);

    return BlocBuilder<SearchCubit, SearchState>(
      bloc: searchCubit,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: () => const LoadingWidget(),
          success: (news) => ListView.builder(
            itemCount: news.length,
            itemBuilder: (context, i) {
              final newsItem = news[i];
              return NewsCardWidget(
                urlImage: newsItem.urlToImage,
                title: newsItem.title,
                description: newsItem.description,
                author: newsItem.author,
              );
            },
          ),
          error: (err) => const SizedBox.shrink(),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    searchCubit.getSearchNews(search: query);
    return BlocBuilder<SearchCubit, SearchState>(
      bloc: searchCubit,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: () => const LoadingWidget(),
          success: (news) => ListView.builder(
            itemCount: news.length,
            itemBuilder: (context, i) {
              final newsItem = news[i];
              return NewsCardWidget(
                urlImage: newsItem.urlToImage,
                title: newsItem.title,
                description: newsItem.description,
                author: newsItem.author,
              );
            },
          ),
          error: (err) => const SizedBox.shrink(),
        );
      },
    );
  }
}
