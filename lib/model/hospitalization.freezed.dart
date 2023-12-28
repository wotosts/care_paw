// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hospitalization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Hospitalization {
  int get id => throw _privateConstructorUsedError;
  Animal get animal => throw _privateConstructorUsedError;
  bool get isBookmarked =>
      throw _privateConstructorUsedError; // dto 따로 잡기.. 유저별 bookmark list
  DateTime get hospitalizationStartDate => throw _privateConstructorUsedError;
  DateTime? get hospitalizationEndDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HospitalizationCopyWith<Hospitalization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalizationCopyWith<$Res> {
  factory $HospitalizationCopyWith(
          Hospitalization value, $Res Function(Hospitalization) then) =
      _$HospitalizationCopyWithImpl<$Res, Hospitalization>;
  @useResult
  $Res call(
      {int id,
      Animal animal,
      bool isBookmarked,
      DateTime hospitalizationStartDate,
      DateTime? hospitalizationEndDate});

  $AnimalCopyWith<$Res> get animal;
}

/// @nodoc
class _$HospitalizationCopyWithImpl<$Res, $Val extends Hospitalization>
    implements $HospitalizationCopyWith<$Res> {
  _$HospitalizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? animal = null,
    Object? isBookmarked = null,
    Object? hospitalizationStartDate = null,
    Object? hospitalizationEndDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      animal: null == animal
          ? _value.animal
          : animal // ignore: cast_nullable_to_non_nullable
              as Animal,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      hospitalizationStartDate: null == hospitalizationStartDate
          ? _value.hospitalizationStartDate
          : hospitalizationStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hospitalizationEndDate: freezed == hospitalizationEndDate
          ? _value.hospitalizationEndDate
          : hospitalizationEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimalCopyWith<$Res> get animal {
    return $AnimalCopyWith<$Res>(_value.animal, (value) {
      return _then(_value.copyWith(animal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HospitalizationImplCopyWith<$Res>
    implements $HospitalizationCopyWith<$Res> {
  factory _$$HospitalizationImplCopyWith(_$HospitalizationImpl value,
          $Res Function(_$HospitalizationImpl) then) =
      __$$HospitalizationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Animal animal,
      bool isBookmarked,
      DateTime hospitalizationStartDate,
      DateTime? hospitalizationEndDate});

  @override
  $AnimalCopyWith<$Res> get animal;
}

/// @nodoc
class __$$HospitalizationImplCopyWithImpl<$Res>
    extends _$HospitalizationCopyWithImpl<$Res, _$HospitalizationImpl>
    implements _$$HospitalizationImplCopyWith<$Res> {
  __$$HospitalizationImplCopyWithImpl(
      _$HospitalizationImpl _value, $Res Function(_$HospitalizationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? animal = null,
    Object? isBookmarked = null,
    Object? hospitalizationStartDate = null,
    Object? hospitalizationEndDate = freezed,
  }) {
    return _then(_$HospitalizationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      animal: null == animal
          ? _value.animal
          : animal // ignore: cast_nullable_to_non_nullable
              as Animal,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      hospitalizationStartDate: null == hospitalizationStartDate
          ? _value.hospitalizationStartDate
          : hospitalizationStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hospitalizationEndDate: freezed == hospitalizationEndDate
          ? _value.hospitalizationEndDate
          : hospitalizationEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$HospitalizationImpl extends _Hospitalization {
  _$HospitalizationImpl(
      {required this.id,
      required this.animal,
      required this.isBookmarked,
      required this.hospitalizationStartDate,
      this.hospitalizationEndDate})
      : super._();

  @override
  final int id;
  @override
  final Animal animal;
  @override
  final bool isBookmarked;
// dto 따로 잡기.. 유저별 bookmark list
  @override
  final DateTime hospitalizationStartDate;
  @override
  final DateTime? hospitalizationEndDate;

  @override
  String toString() {
    return 'Hospitalization(id: $id, animal: $animal, isBookmarked: $isBookmarked, hospitalizationStartDate: $hospitalizationStartDate, hospitalizationEndDate: $hospitalizationEndDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HospitalizationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.animal, animal) || other.animal == animal) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(
                    other.hospitalizationStartDate, hospitalizationStartDate) ||
                other.hospitalizationStartDate == hospitalizationStartDate) &&
            (identical(other.hospitalizationEndDate, hospitalizationEndDate) ||
                other.hospitalizationEndDate == hospitalizationEndDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, animal, isBookmarked,
      hospitalizationStartDate, hospitalizationEndDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HospitalizationImplCopyWith<_$HospitalizationImpl> get copyWith =>
      __$$HospitalizationImplCopyWithImpl<_$HospitalizationImpl>(
          this, _$identity);
}

abstract class _Hospitalization extends Hospitalization {
  factory _Hospitalization(
      {required final int id,
      required final Animal animal,
      required final bool isBookmarked,
      required final DateTime hospitalizationStartDate,
      final DateTime? hospitalizationEndDate}) = _$HospitalizationImpl;
  _Hospitalization._() : super._();

  @override
  int get id;
  @override
  Animal get animal;
  @override
  bool get isBookmarked;
  @override // dto 따로 잡기.. 유저별 bookmark list
  DateTime get hospitalizationStartDate;
  @override
  DateTime? get hospitalizationEndDate;
  @override
  @JsonKey(ignore: true)
  _$$HospitalizationImplCopyWith<_$HospitalizationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
