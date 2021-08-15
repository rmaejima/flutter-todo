// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoModelTearOff {
  const _$TodoModelTearOff();

  _TodoModel call(
      {String title = '', String subTitle = '', String content = ''}) {
    return _TodoModel(
      title: title,
      subTitle: subTitle,
      content: content,
    );
  }
}

/// @nodoc
const $TodoModel = _$TodoModelTearOff();

/// @nodoc
mixin _$TodoModel {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoModelCopyWith<TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) then) =
      _$TodoModelCopyWithImpl<$Res>;
  $Res call({String title, String subTitle, String content});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res> implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._value, this._then);

  final TodoModel _value;
  // ignore: unused_field
  final $Res Function(TodoModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TodoModelCopyWith<$Res> implements $TodoModelCopyWith<$Res> {
  factory _$TodoModelCopyWith(
          _TodoModel value, $Res Function(_TodoModel) then) =
      __$TodoModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, String subTitle, String content});
}

/// @nodoc
class __$TodoModelCopyWithImpl<$Res> extends _$TodoModelCopyWithImpl<$Res>
    implements _$TodoModelCopyWith<$Res> {
  __$TodoModelCopyWithImpl(_TodoModel _value, $Res Function(_TodoModel) _then)
      : super(_value, (v) => _then(v as _TodoModel));

  @override
  _TodoModel get _value => super._value as _TodoModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? content = freezed,
  }) {
    return _then(_TodoModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TodoModel implements _TodoModel {
  const _$_TodoModel({this.title = '', this.subTitle = '', this.content = ''});

  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String subTitle;
  @JsonKey(defaultValue: '')
  @override
  final String content;

  @override
  String toString() {
    return 'TodoModel(title: $title, subTitle: $subTitle, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subTitle, subTitle) ||
                const DeepCollectionEquality()
                    .equals(other.subTitle, subTitle)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subTitle) ^
      const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$TodoModelCopyWith<_TodoModel> get copyWith =>
      __$TodoModelCopyWithImpl<_TodoModel>(this, _$identity);
}

abstract class _TodoModel implements TodoModel {
  const factory _TodoModel({String title, String subTitle, String content}) =
      _$_TodoModel;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subTitle => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TodoModelCopyWith<_TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
