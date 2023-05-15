import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../component/component.dart';
import '../../../../models/models.dart';
import '../../../../repositories/repositories.dart';

part 'news_cubit.freezed.dart';
part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsRepository _newsRepository;

  factory NewsCubit.create() => NewsCubit(getIt.get());

  NewsCubit(this._newsRepository) : super(const NewsState.initial());

  void getNewsByCategory(String category) async {
    emit(const NewsState.loading());
    final result = await _newsRepository.getNewsByCategory(category);
    result.fold(
      (l) => emit(NewsState.error(l.toString())),
      (r) => emit(NewsState.success(r)),
    );
  }
}
