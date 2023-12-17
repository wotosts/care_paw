// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AnimalDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimalDto _$AnimalDtoFromJson(Map<String, dynamic> json) {
  return _AnimalDto.fromJson(json);
}

/// @nodoc
mixin _$AnimalDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  DateTime get birth => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  int get hospital_id => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get img_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalDtoCopyWith<AnimalDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalDtoCopyWith<$Res> {
  factory $AnimalDtoCopyWith(AnimalDto value, $Res Function(AnimalDto) then) =
      _$AnimalDtoCopyWithImpl<$Res, AnimalDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String species,
      DateTime birth,
      String gender,
      int hospital_id,
      String? note,
      String? img_url});
}

/// @nodoc
class _$AnimalDtoCopyWithImpl<$Res, $Val extends AnimalDto>
    implements $AnimalDtoCopyWith<$Res> {
  _$AnimalDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? species = null,
    Object? birth = null,
    Object? gender = null,
    Object? hospital_id = null,
    Object? note = freezed,
    Object? img_url = freezed,
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
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      hospital_id: null == hospital_id
          ? _value.hospital_id
          : hospital_id // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      img_url: freezed == img_url
          ? _value.img_url
          : img_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimalDtoImplCopyWith<$Res>
    implements $AnimalDtoCopyWith<$Res> {
  factory _$$AnimalDtoImplCopyWith(
          _$AnimalDtoImpl value, $Res Function(_$AnimalDtoImpl) then) =
      __$$AnimalDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String species,
      DateTime birth,
      String gender,
      int hospital_id,
      String? note,
      String? img_url});
}

/// @nodoc
class __$$AnimalDtoImplCopyWithImpl<$Res>
    extends _$AnimalDtoCopyWithImpl<$Res, _$AnimalDtoImpl>
    implements _$$AnimalDtoImplCopyWith<$Res> {
  __$$AnimalDtoImplCopyWithImpl(
      _$AnimalDtoImpl _value, $Res Function(_$AnimalDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? species = null,
    Object? birth = null,
    Object? gender = null,
    Object? hospital_id = null,
    Object? note = freezed,
    Object? img_url = freezed,
  }) {
    return _then(_$AnimalDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      hospital_id: null == hospital_id
          ? _value.hospital_id
          : hospital_id // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      img_url: freezed == img_url
          ? _value.img_url
          : img_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimalDtoImpl implements _AnimalDto {
  const _$AnimalDtoImpl(
      {this.id = 0,
      required this.name,
      required this.species,
      required this.birth,
      required this.gender,
      required this.hospital_id,
      this.note,
      this.img_url});

  factory _$AnimalDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimalDtoImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String name;
  @override
  final String species;
  @override
  final DateTime birth;
  @override
  final String gender;
  @override
  final int hospital_id;
  @override
  final String? note;
  @override
  final String? img_url;

  @override
  String toString() {
    return 'AnimalDto(id: $id, name: $name, species: $species, birth: $birth, gender: $gender, hospital_id: $hospital_id, note: $note, img_url: $img_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.hospital_id, hospital_id) ||
                other.hospital_id == hospital_id) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.img_url, img_url) || other.img_url == img_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, species, birth, gender,
      hospital_id, note, img_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalDtoImplCopyWith<_$AnimalDtoImpl> get copyWith =>
      __$$AnimalDtoImplCopyWithImpl<_$AnimalDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimalDtoImplToJson(
      this,
    );
  }
}

abstract class _AnimalDto implements AnimalDto {
  const factory _AnimalDto(
      {final int id,
      required final String name,
      required final String species,
      required final DateTime birth,
      required final String gender,
      required final int hospital_id,
      final String? note,
      final String? img_url}) = _$AnimalDtoImpl;

  factory _AnimalDto.fromJson(Map<String, dynamic> json) =
      _$AnimalDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get species;
  @override
  DateTime get birth;
  @override
  String get gender;
  @override
  int get hospital_id;
  @override
  String? get note;
  @override
  String? get img_url;
  @override
  @JsonKey(ignore: true)
  _$$AnimalDtoImplCopyWith<_$AnimalDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
