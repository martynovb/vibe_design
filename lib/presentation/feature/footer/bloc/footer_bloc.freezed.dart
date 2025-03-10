// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'footer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FooterEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) applyForCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? applyForCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? applyForCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplyForCourse value) applyForCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplyForCourse value)? applyForCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplyForCourse value)? applyForCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of FooterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FooterEventCopyWith<FooterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooterEventCopyWith<$Res> {
  factory $FooterEventCopyWith(
          FooterEvent value, $Res Function(FooterEvent) then) =
      _$FooterEventCopyWithImpl<$Res, FooterEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$FooterEventCopyWithImpl<$Res, $Val extends FooterEvent>
    implements $FooterEventCopyWith<$Res> {
  _$FooterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FooterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplyForCourseImplCopyWith<$Res>
    implements $FooterEventCopyWith<$Res> {
  factory _$$ApplyForCourseImplCopyWith(_$ApplyForCourseImpl value,
          $Res Function(_$ApplyForCourseImpl) then) =
      __$$ApplyForCourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ApplyForCourseImplCopyWithImpl<$Res>
    extends _$FooterEventCopyWithImpl<$Res, _$ApplyForCourseImpl>
    implements _$$ApplyForCourseImplCopyWith<$Res> {
  __$$ApplyForCourseImplCopyWithImpl(
      _$ApplyForCourseImpl _value, $Res Function(_$ApplyForCourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FooterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ApplyForCourseImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApplyForCourseImpl implements _ApplyForCourse {
  const _$ApplyForCourseImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'FooterEvent.applyForCourse(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyForCourseImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of FooterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyForCourseImplCopyWith<_$ApplyForCourseImpl> get copyWith =>
      __$$ApplyForCourseImplCopyWithImpl<_$ApplyForCourseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) applyForCourse,
  }) {
    return applyForCourse(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? applyForCourse,
  }) {
    return applyForCourse?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? applyForCourse,
    required TResult orElse(),
  }) {
    if (applyForCourse != null) {
      return applyForCourse(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplyForCourse value) applyForCourse,
  }) {
    return applyForCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplyForCourse value)? applyForCourse,
  }) {
    return applyForCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplyForCourse value)? applyForCourse,
    required TResult orElse(),
  }) {
    if (applyForCourse != null) {
      return applyForCourse(this);
    }
    return orElse();
  }
}

abstract class _ApplyForCourse implements FooterEvent {
  const factory _ApplyForCourse(final String email) = _$ApplyForCourseImpl;

  @override
  String get email;

  /// Create a copy of FooterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplyForCourseImplCopyWith<_$ApplyForCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FooterState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of FooterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FooterStateCopyWith<FooterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooterStateCopyWith<$Res> {
  factory $FooterStateCopyWith(
          FooterState value, $Res Function(FooterState) then) =
      _$FooterStateCopyWithImpl<$Res, FooterState>;
  @useResult
  $Res call({FormzSubmissionStatus status});
}

/// @nodoc
class _$FooterStateCopyWithImpl<$Res, $Val extends FooterState>
    implements $FooterStateCopyWith<$Res> {
  _$FooterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FooterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FooterStateImplCopyWith<$Res>
    implements $FooterStateCopyWith<$Res> {
  factory _$$FooterStateImplCopyWith(
          _$FooterStateImpl value, $Res Function(_$FooterStateImpl) then) =
      __$$FooterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormzSubmissionStatus status});
}

/// @nodoc
class __$$FooterStateImplCopyWithImpl<$Res>
    extends _$FooterStateCopyWithImpl<$Res, _$FooterStateImpl>
    implements _$$FooterStateImplCopyWith<$Res> {
  __$$FooterStateImplCopyWithImpl(
      _$FooterStateImpl _value, $Res Function(_$FooterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FooterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$FooterStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$FooterStateImpl implements _FooterState {
  const _$FooterStateImpl({required this.status});

  @override
  final FormzSubmissionStatus status;

  @override
  String toString() {
    return 'FooterState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FooterStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of FooterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FooterStateImplCopyWith<_$FooterStateImpl> get copyWith =>
      __$$FooterStateImplCopyWithImpl<_$FooterStateImpl>(this, _$identity);
}

abstract class _FooterState implements FooterState {
  const factory _FooterState({required final FormzSubmissionStatus status}) =
      _$FooterStateImpl;

  @override
  FormzSubmissionStatus get status;

  /// Create a copy of FooterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FooterStateImplCopyWith<_$FooterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
