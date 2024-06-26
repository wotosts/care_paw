// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get occupation => throw _privateConstructorUsedError;
  Hospital? get hospital => throw _privateConstructorUsedError; // 화면 노출용
  List<Hospital> get hospitals => throw _privateConstructorUsedError;
  SignInEvent? get event => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {String email,
      String password,
      String? nickname,
      String? occupation,
      Hospital? hospital,
      List<Hospital> hospitals,
      SignInEvent? event});

  $HospitalCopyWith<$Res>? get hospital;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? nickname = freezed,
    Object? occupation = freezed,
    Object? hospital = freezed,
    Object? hospitals = null,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      hospital: freezed == hospital
          ? _value.hospital
          : hospital // ignore: cast_nullable_to_non_nullable
              as Hospital?,
      hospitals: null == hospitals
          ? _value.hospitals
          : hospitals // ignore: cast_nullable_to_non_nullable
              as List<Hospital>,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as SignInEvent?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HospitalCopyWith<$Res>? get hospital {
    if (_value.hospital == null) {
      return null;
    }

    return $HospitalCopyWith<$Res>(_value.hospital!, (value) {
      return _then(_value.copyWith(hospital: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String? nickname,
      String? occupation,
      Hospital? hospital,
      List<Hospital> hospitals,
      SignInEvent? event});

  @override
  $HospitalCopyWith<$Res>? get hospital;
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? nickname = freezed,
    Object? occupation = freezed,
    Object? hospital = freezed,
    Object? hospitals = null,
    Object? event = freezed,
  }) {
    return _then(_$SignInStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      hospital: freezed == hospital
          ? _value.hospital
          : hospital // ignore: cast_nullable_to_non_nullable
              as Hospital?,
      hospitals: null == hospitals
          ? _value._hospitals
          : hospitals // ignore: cast_nullable_to_non_nullable
              as List<Hospital>,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as SignInEvent?,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  _$SignInStateImpl(
      {this.email = '',
      this.password = '',
      this.nickname,
      this.occupation,
      this.hospital,
      final List<Hospital> hospitals = const [],
      this.event})
      : _hospitals = hospitals;

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  final String? nickname;
  @override
  final String? occupation;
  @override
  final Hospital? hospital;
// 화면 노출용
  final List<Hospital> _hospitals;
// 화면 노출용
  @override
  @JsonKey()
  List<Hospital> get hospitals {
    if (_hospitals is EqualUnmodifiableListView) return _hospitals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hospitals);
  }

  @override
  final SignInEvent? event;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, nickname: $nickname, occupation: $occupation, hospital: $hospital, hospitals: $hospitals, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.hospital, hospital) ||
                other.hospital == hospital) &&
            const DeepCollectionEquality()
                .equals(other._hospitals, _hospitals) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      nickname,
      occupation,
      hospital,
      const DeepCollectionEquality().hash(_hospitals),
      event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  factory _SignInState(
      {final String email,
      final String password,
      final String? nickname,
      final String? occupation,
      final Hospital? hospital,
      final List<Hospital> hospitals,
      final SignInEvent? event}) = _$SignInStateImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  String? get nickname;
  @override
  String? get occupation;
  @override
  Hospital? get hospital;
  @override // 화면 노출용
  List<Hospital> get hospitals;
  @override
  SignInEvent? get event;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
