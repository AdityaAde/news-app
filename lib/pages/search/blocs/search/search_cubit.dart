import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../component/component.dart';
import '../../../../models/models.dart';
import '../../../../repositories/repositories.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final NewsRepository _newsRepository;

  factory SearchCubit.create(BuildContext context) => SearchCubit(getIt.get());

  SearchCubit(this._newsRepository) : super(const SearchState.initial());

  void getSearchNews({String? search, String? from, String? to}) async {
    emit(const SearchState.loading());
    final result = await _newsRepository.getNewsEverything(search, from, to);
    result.fold(
      (l) => emit(SearchState.error(l.toString())),
      (r) => emit(SearchState.success(r)),
    );
  }
}
