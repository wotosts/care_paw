// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hospital.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Hospital {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HospitalCopyWith<Hospital> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalCopyWith<$Res> {
  factory $HospitalCopyWith(Hospital value, $Res Function(Hospital) then) =
      _$HospitalCopyWithImpl<$Res, Hospital>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$HospitalCopyWithImpl<$Res, $Val extends Hospital>
    implements $HospitalCopyWith<$Res> {
  _$HospitalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HospitalImplCopyWith<$Res>
    implements $HospitalCopyWith<$Res> {
  factory _$$HospitalImplCopyWith(
          _$HospitalImpl value, $Res Function(_$HospitalImpl) then) =
      __$$HospitalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$HospitalImplCopyWithImpl<$Res>
    extends _$HospitalCopyWithImpl<$Res, _$HospitalImpl>
    implements _$$HospitalImplCopyWith<$Res> {
  __$$HospitalImplCopyWithImpl(
      _$HospitalImpl _value, $Res Function(_$HospitalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$HospitalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HospitalImpl implements _Hospital {
  _$HospitalImpl({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Hospital(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HospitalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HospitalImplCopyWith<_$HospitalImpl> get copyWith =>
      __$$HospitalImplCopyWithImpl<_$HospitalImpl>(this, _$identity);
}

abstract class _Hospital implements Hospital {
  factory _Hospital({required final int id, required final String name}) =
      _$HospitalImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$HospitalImplCopyWith<_$HospitalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
