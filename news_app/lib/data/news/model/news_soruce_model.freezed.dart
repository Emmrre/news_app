// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_soruce_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsSoruceModel _$NewsSoruceModelFromJson(Map<String, dynamic> json) {
  return _NewsSoruceModel.fromJson(json);
}

/// @nodoc
mixin _$NewsSoruceModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSoruceModelCopyWith<$Res> {
  factory $NewsSoruceModelCopyWith(
          NewsSoruceModel value, $Res Function(NewsSoruceModel) then) =
      _$NewsSoruceModelCopyWithImpl<$Res, NewsSoruceModel>;
}

/// @nodoc
class _$NewsSoruceModelCopyWithImpl<$Res, $Val extends NewsSoruceModel>
    implements $NewsSoruceModelCopyWith<$Res> {
  _$NewsSoruceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NewsSoruceModelCopyWith<$Res> {
  factory _$$_NewsSoruceModelCopyWith(
          _$_NewsSoruceModel value, $Res Function(_$_NewsSoruceModel) then) =
      __$$_NewsSoruceModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewsSoruceModelCopyWithImpl<$Res>
    extends _$NewsSoruceModelCopyWithImpl<$Res, _$_NewsSoruceModel>
    implements _$$_NewsSoruceModelCopyWith<$Res> {
  __$$_NewsSoruceModelCopyWithImpl(
      _$_NewsSoruceModel _value, $Res Function(_$_NewsSoruceModel) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_NewsSoruceModel implements _NewsSoruceModel {
  _$_NewsSoruceModel();

  factory _$_NewsSoruceModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsSoruceModelFromJson(json);

  @override
  String toString() {
    return 'NewsSoruceModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewsSoruceModel);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsSoruceModelToJson(
      this,
    );
  }
}

abstract class _NewsSoruceModel implements NewsSoruceModel {
  factory _NewsSoruceModel() = _$_NewsSoruceModel;

  factory _NewsSoruceModel.fromJson(Map<String, dynamic> json) =
      _$_NewsSoruceModel.fromJson;
}
