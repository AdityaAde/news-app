// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsModels _$NewsModelsFromJson(Map<String, dynamic> json) {
  return _NewsModels.fromJson(json);
}

/// @nodoc
mixin _$NewsModels {
  String? get news => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelsCopyWith<NewsModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelsCopyWith<$Res> {
  factory $NewsModelsCopyWith(
          NewsModels value, $Res Function(NewsModels) then) =
      _$NewsModelsCopyWithImpl<$Res>;
  $Res call({String? news});
}

/// @nodoc
class _$NewsModelsCopyWithImpl<$Res> implements $NewsModelsCopyWith<$Res> {
  _$NewsModelsCopyWithImpl(this._value, this._then);

  final NewsModels _value;
  // ignore: unused_field
  final $Res Function(NewsModels) _then;

  @override
  $Res call({
    Object? news = freezed,
  }) {
    return _then(_value.copyWith(
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NewsModelsCopyWith<$Res>
    implements $NewsModelsCopyWith<$Res> {
  factory _$$_NewsModelsCopyWith(
          _$_NewsModels value, $Res Function(_$_NewsModels) then) =
      __$$_NewsModelsCopyWithImpl<$Res>;
  @override
  $Res call({String? news});
}

/// @nodoc
class __$$_NewsModelsCopyWithImpl<$Res> extends _$NewsModelsCopyWithImpl<$Res>
    implements _$$_NewsModelsCopyWith<$Res> {
  __$$_NewsModelsCopyWithImpl(
      _$_NewsModels _value, $Res Function(_$_NewsModels) _then)
      : super(_value, (v) => _then(v as _$_NewsModels));

  @override
  _$_NewsModels get _value => super._value as _$_NewsModels;

  @override
  $Res call({
    Object? news = freezed,
  }) {
    return _then(_$_NewsModels(
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsModels implements _NewsModels {
  const _$_NewsModels({this.news});

  factory _$_NewsModels.fromJson(Map<String, dynamic> json) =>
      _$$_NewsModelsFromJson(json);

  @override
  final String? news;

  @override
  String toString() {
    return 'NewsModels(news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsModels &&
            const DeepCollectionEquality().equals(other.news, news));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(news));

  @JsonKey(ignore: true)
  @override
  _$$_NewsModelsCopyWith<_$_NewsModels> get copyWith =>
      __$$_NewsModelsCopyWithImpl<_$_NewsModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsModelsToJson(
      this,
    );
  }
}

abstract class _NewsModels implements NewsModels {
  const factory _NewsModels({final String? news}) = _$_NewsModels;

  factory _NewsModels.fromJson(Map<String, dynamic> json) =
      _$_NewsModels.fromJson;

  @override
  String? get news;
  @override
  @JsonKey(ignore: true)
  _$$_NewsModelsCopyWith<_$_NewsModels> get copyWith =>
      throw _privateConstructorUsedError;
}
