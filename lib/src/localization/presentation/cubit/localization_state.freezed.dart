// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalizationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T locale) changed,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T locale)? changed,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T locale)? changed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizationInitial<T> value) initial,
    required TResult Function(LocalizationChanged<T> value) changed,
    required TResult Function(LocalizationError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalizationInitial<T> value)? initial,
    TResult? Function(LocalizationChanged<T> value)? changed,
    TResult? Function(LocalizationError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizationInitial<T> value)? initial,
    TResult Function(LocalizationChanged<T> value)? changed,
    TResult Function(LocalizationError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationStateCopyWith<T, $Res> {
  factory $LocalizationStateCopyWith(LocalizationState<T> value,
          $Res Function(LocalizationState<T>) then) =
      _$LocalizationStateCopyWithImpl<T, $Res, LocalizationState<T>>;
}

/// @nodoc
class _$LocalizationStateCopyWithImpl<T, $Res,
        $Val extends LocalizationState<T>>
    implements $LocalizationStateCopyWith<T, $Res> {
  _$LocalizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LocalizationInitialImplCopyWith<T, $Res> {
  factory _$$LocalizationInitialImplCopyWith(_$LocalizationInitialImpl<T> value,
          $Res Function(_$LocalizationInitialImpl<T>) then) =
      __$$LocalizationInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LocalizationInitialImplCopyWithImpl<T, $Res>
    extends _$LocalizationStateCopyWithImpl<T, $Res,
        _$LocalizationInitialImpl<T>>
    implements _$$LocalizationInitialImplCopyWith<T, $Res> {
  __$$LocalizationInitialImplCopyWithImpl(_$LocalizationInitialImpl<T> _value,
      $Res Function(_$LocalizationInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocalizationInitialImpl<T> implements _LocalizationInitial<T> {
  const _$LocalizationInitialImpl();

  @override
  String toString() {
    return 'LocalizationState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T locale) changed,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T locale)? changed,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T locale)? changed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizationInitial<T> value) initial,
    required TResult Function(LocalizationChanged<T> value) changed,
    required TResult Function(LocalizationError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalizationInitial<T> value)? initial,
    TResult? Function(LocalizationChanged<T> value)? changed,
    TResult? Function(LocalizationError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizationInitial<T> value)? initial,
    TResult Function(LocalizationChanged<T> value)? changed,
    TResult Function(LocalizationError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LocalizationInitial<T> implements LocalizationState<T> {
  const factory _LocalizationInitial() = _$LocalizationInitialImpl<T>;
}

/// @nodoc
abstract class _$$LocalizationChangedImplCopyWith<T, $Res> {
  factory _$$LocalizationChangedImplCopyWith(_$LocalizationChangedImpl<T> value,
          $Res Function(_$LocalizationChangedImpl<T>) then) =
      __$$LocalizationChangedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T locale});
}

/// @nodoc
class __$$LocalizationChangedImplCopyWithImpl<T, $Res>
    extends _$LocalizationStateCopyWithImpl<T, $Res,
        _$LocalizationChangedImpl<T>>
    implements _$$LocalizationChangedImplCopyWith<T, $Res> {
  __$$LocalizationChangedImplCopyWithImpl(_$LocalizationChangedImpl<T> _value,
      $Res Function(_$LocalizationChangedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_$LocalizationChangedImpl<T>(
      freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LocalizationChangedImpl<T> implements LocalizationChanged<T> {
  const _$LocalizationChangedImpl(this.locale);

  @override
  final T locale;

  @override
  String toString() {
    return 'LocalizationState<$T>.changed(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationChangedImpl<T> &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationChangedImplCopyWith<T, _$LocalizationChangedImpl<T>>
      get copyWith => __$$LocalizationChangedImplCopyWithImpl<T,
          _$LocalizationChangedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T locale) changed,
    required TResult Function(String error) error,
  }) {
    return changed(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T locale)? changed,
    TResult? Function(String error)? error,
  }) {
    return changed?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T locale)? changed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizationInitial<T> value) initial,
    required TResult Function(LocalizationChanged<T> value) changed,
    required TResult Function(LocalizationError<T> value) error,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalizationInitial<T> value)? initial,
    TResult? Function(LocalizationChanged<T> value)? changed,
    TResult? Function(LocalizationError<T> value)? error,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizationInitial<T> value)? initial,
    TResult Function(LocalizationChanged<T> value)? changed,
    TResult Function(LocalizationError<T> value)? error,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class LocalizationChanged<T> implements LocalizationState<T> {
  const factory LocalizationChanged(final T locale) =
      _$LocalizationChangedImpl<T>;

  T get locale;

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationChangedImplCopyWith<T, _$LocalizationChangedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalizationErrorImplCopyWith<T, $Res> {
  factory _$$LocalizationErrorImplCopyWith(_$LocalizationErrorImpl<T> value,
          $Res Function(_$LocalizationErrorImpl<T>) then) =
      __$$LocalizationErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LocalizationErrorImplCopyWithImpl<T, $Res>
    extends _$LocalizationStateCopyWithImpl<T, $Res, _$LocalizationErrorImpl<T>>
    implements _$$LocalizationErrorImplCopyWith<T, $Res> {
  __$$LocalizationErrorImplCopyWithImpl(_$LocalizationErrorImpl<T> _value,
      $Res Function(_$LocalizationErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LocalizationErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalizationErrorImpl<T> implements LocalizationError<T> {
  const _$LocalizationErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LocalizationState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationErrorImplCopyWith<T, _$LocalizationErrorImpl<T>>
      get copyWith =>
          __$$LocalizationErrorImplCopyWithImpl<T, _$LocalizationErrorImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T locale) changed,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T locale)? changed,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T locale)? changed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizationInitial<T> value) initial,
    required TResult Function(LocalizationChanged<T> value) changed,
    required TResult Function(LocalizationError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalizationInitial<T> value)? initial,
    TResult? Function(LocalizationChanged<T> value)? changed,
    TResult? Function(LocalizationError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizationInitial<T> value)? initial,
    TResult Function(LocalizationChanged<T> value)? changed,
    TResult Function(LocalizationError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocalizationError<T> implements LocalizationState<T> {
  const factory LocalizationError(final String error) =
      _$LocalizationErrorImpl<T>;

  String get error;

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationErrorImplCopyWith<T, _$LocalizationErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
