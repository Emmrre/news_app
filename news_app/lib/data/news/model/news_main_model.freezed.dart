// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_main_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsMainModel _$NewsMainModelFromJson(Map<String, dynamic> json) {
  return _NewsMainModel.fromJson(json);
}

/// @nodoc
mixin _$NewsMainModel {
  String? get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  List<NewsCategoryModel>? get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsMainModelCopyWith<NewsMainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsMainModelCopyWith<$Res> {
  factory $NewsMainModelCopyWith(
          NewsMainModel value, $Res Function(NewsMainModel) then) =
      _$NewsMainModelCopyWithImpl<$Res, NewsMainModel>;
  @useResult
  $Res call(
      {String? status, int? totalResults, List<NewsCategoryModel>? articles});
}

/// @nodoc
class _$NewsMainModelCopyWithImpl<$Res, $Val extends NewsMainModel>
    implements $NewsMainModelCopyWith<$Res> {
  _$NewsMainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsCategoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsMainModelCopyWith<$Res>
    implements $NewsMainModelCopyWith<$Res> {
  factory _$$_NewsMainModelCopyWith(
          _$_NewsMainModel value, $Res Function(_$_NewsMainModel) then) =
      __$$_NewsMainModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status, int? totalResults, List<NewsCategoryModel>? articles});
}

/// @nodoc
class __$$_NewsMainModelCopyWithImpl<$Res>
    extends _$NewsMainModelCopyWithImpl<$Res, _$_NewsMainModel>
    implements _$$_NewsMainModelCopyWith<$Res> {
  __$$_NewsMainModelCopyWithImpl(
      _$_NewsMainModel _value, $Res Function(_$_NewsMainModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_$_NewsMainModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsCategoryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsMainModel extends _NewsMainModel {
  _$_NewsMainModel(
      {this.status, this.totalResults, final List<NewsCategoryModel>? articles})
      : _articles = articles,
        super._();

  factory _$_NewsMainModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsMainModelFromJson(json);

  @override
  final String? status;
  @override
  final int? totalResults;
  final List<NewsCategoryModel>? _articles;
  @override
  List<NewsCategoryModel>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsMainModel(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsMainModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsMainModelCopyWith<_$_NewsMainModel> get copyWith =>
      __$$_NewsMainModelCopyWithImpl<_$_NewsMainModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsMainModelToJson(
      this,
    );
  }
}

abstract class _NewsMainModel extends NewsMainModel {
  factory _NewsMainModel(
      {final String? status,
      final int? totalResults,
      final List<NewsCategoryModel>? articles}) = _$_NewsMainModel;
  _NewsMainModel._() : super._();

  factory _NewsMainModel.fromJson(Map<String, dynamic> json) =
      _$_NewsMainModel.fromJson;

  @override
  String? get status;
  @override
  int? get totalResults;
  @override
  List<NewsCategoryModel>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$_NewsMainModelCopyWith<_$_NewsMainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
