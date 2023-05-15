part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;
  const factory NewsState.loading() = _Loading;
  const factory NewsState.success(List<NewsModels> news) = _Success;
  const factory NewsState.error(String err) = _Error;
}
