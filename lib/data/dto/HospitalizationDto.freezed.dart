// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'HospitalizationDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HospitalizationDto _$HospitalizationDtoFromJson(Map<String, dynamic> json) {
  return _HospitalizationDto.fromJson(json);
}

/// @nodoc
mixin _$HospitalizationDto {
  int get id => throw _privateConstructorUsedError;
  int get animal_id => throw _privateConstructorUsedError;
  int get hospital_id => throw _privateConstructorUsedError;
  DateTime get start_date => throw _privateConstructorUsedError;
  @JsonKey(name: 'Animal')
  AnimalDto? get animal => throw _privateConstructorUsedError;
  DateTime? get end_date => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HospitalizationDtoCopyWith<HospitalizationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalizationDtoCopyWith<$Res> {
  factory $HospitalizationDtoCopyWith(
          HospitalizationDto value, $Res Function(HospitalizationDto) then) =
      _$HospitalizationDtoCopyWithImpl<$Res, HospitalizationDto>;
  @useResult
  $Res call(
      {int id,
      int animal_id,
      int hospital_id,
      DateTime start_date,
      @JsonKey(name: 'Animal') AnimalDto? animal,
      DateTime? end_date,
      String? notes});

  $AnimalDtoCopyWith<$Res>? get animal;
}

/// @nodoc
class _$HospitalizationDtoCopyWithImpl<$Res, $Val extends HospitalizationDto>
    implements $HospitalizationDtoCopyWith<$Res> {
  _$HospitalizationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? animal_id = null,
    Object? hospital_id = null,
    Object? start_date = null,
    Object? animal = freezed,
    Object? end_date = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      animal_id: null == animal_id
          ? _value.animal_id
          : animal_id // ignore: cast_nullable_to_non_nullable
              as int,
      hospital_id: null == hospital_id
          ? _value.hospital_id
          : hospital_id // ignore: cast_nullable_to_non_nullable
              as int,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      animal: freezed == animal
          ? _value.animal
          : animal // ignore: cast_nullable_to_non_nullable
              as AnimalDto?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimalDtoCopyWith<$Res>? get animal {
    if (_value.animal == null) {
      return null;
    }

    return $AnimalDtoCopyWith<$Res>(_value.animal!, (value) {
      return _then(_value.copyWith(animal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HospitalizationDtoImplCopyWith<$Res>
    implements $HospitalizationDtoCopyWith<$Res> {
  factory _$$HospitalizationDtoImplCopyWith(_$HospitalizationDtoImpl value,
          $Res Function(_$HospitalizationDtoImpl) then) =
      __$$HospitalizationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int animal_id,
      int hospital_id,
      DateTime start_date,
      @JsonKey(name: 'Animal') AnimalDto? animal,
      DateTime? end_date,
      String? notes});

  @override
  $AnimalDtoCopyWith<$Res>? get animal;
}

/// @nodoc
class __$$HospitalizationDtoImplCopyWithImpl<$Res>
    extends _$HospitalizationDtoCopyWithImpl<$Res, _$HospitalizationDtoImpl>
    implements _$$HospitalizationDtoImplCopyWith<$Res> {
  __$$HospitalizationDtoImplCopyWithImpl(_$HospitalizationDtoImpl _value,
      $Res Function(_$HospitalizationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? animal_id = null,
    Object? hospital_id = null,
    Object? start_date = null,
    Object? animal = freezed,
    Object? end_date = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$HospitalizationDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      animal_id: null == animal_id
          ? _value.animal_id
          : animal_id // ignore: cast_nullable_to_non_nullable
              as int,
      hospital_id: null == hospital_id
          ? _value.hospital_id
          : hospital_id // ignore: cast_nullable_to_non_nullable
              as int,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      animal: freezed == animal
          ? _value.animal
          : animal // ignore: cast_nullable_to_non_nullable
              as AnimalDto?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HospitalizationDtoImpl implements _HospitalizationDto {
  const _$HospitalizationDtoImpl(
      {this.id = 0,
      required this.animal_id,
      required this.hospital_id,
      required this.start_date,
      @JsonKey(name: 'Animal') required this.animal,
      this.end_date,
      this.notes});

  factory _$HospitalizationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HospitalizationDtoImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final int animal_id;
  @override
  final int hospital_id;
  @override
  final DateTime start_date;
  @override
  @JsonKey(name: 'Animal')
  final AnimalDto? animal;
  @override
  final DateTime? end_date;
  @override
  final String? notes;

  @override
  String toString() {
    return 'HospitalizationDto(id: $id, animal_id: $animal_id, hospital_id: $hospital_id, start_date: $start_date, animal: $animal, end_date: $end_date, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HospitalizationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.animal_id, animal_id) ||
                other.animal_id == animal_id) &&
            (identical(other.hospital_id, hospital_id) ||
                other.hospital_id == hospital_id) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.animal, animal) || other.animal == animal) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, animal_id, hospital_id,
      start_date, animal, end_date, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HospitalizationDtoImplCopyWith<_$HospitalizationDtoImpl> get copyWith =>
      __$$HospitalizationDtoImplCopyWithImpl<_$HospitalizationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HospitalizationDtoImplToJson(
      this,
    );
  }
}

abstract class _HospitalizationDto implements HospitalizationDto {
  const factory _HospitalizationDto(
      {final int id,
      required final int animal_id,
      required final int hospital_id,
      required final DateTime start_date,
      @JsonKey(name: 'Animal') required final AnimalDto? animal,
      final DateTime? end_date,
      final String? notes}) = _$HospitalizationDtoImpl;

  factory _HospitalizationDto.fromJson(Map<String, dynamic> json) =
      _$HospitalizationDtoImpl.fromJson;

  @override
  int get id;
  @override
  int get animal_id;
  @override
  int get hospital_id;
  @override
  DateTime get start_date;
  @override
  @JsonKey(name: 'Animal')
  AnimalDto? get animal;
  @override
  DateTime? get end_date;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$HospitalizationDtoImplCopyWith<_$HospitalizationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
