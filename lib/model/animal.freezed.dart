// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Animal {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Species get species => throw _privateConstructorUsedError;
  DateTime get birth => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimalCopyWith<Animal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalCopyWith<$Res> {
  factory $AnimalCopyWith(Animal value, $Res Function(Animal) then) =
      _$AnimalCopyWithImpl<$Res, Animal>;
  @useResult
  $Res call(
      {int id,
      String name,
      Species species,
      DateTime birth,
      Gender gender,
      String? note,
      String? imgUrl});
}

/// @nodoc
class _$AnimalCopyWithImpl<$Res, $Val extends Animal>
    implements $AnimalCopyWith<$Res> {
  _$AnimalCopyWithImpl(this._value, this._then);

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
    Object? note = freezed,
    Object? imgUrl = freezed,
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
              as Species,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimalImplCopyWith<$Res> implements $AnimalCopyWith<$Res> {
  factory _$$AnimalImplCopyWith(
          _$AnimalImpl value, $Res Function(_$AnimalImpl) then) =
      __$$AnimalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      Species species,
      DateTime birth,
      Gender gender,
      String? note,
      String? imgUrl});
}

/// @nodoc
class __$$AnimalImplCopyWithImpl<$Res>
    extends _$AnimalCopyWithImpl<$Res, _$AnimalImpl>
    implements _$$AnimalImplCopyWith<$Res> {
  __$$AnimalImplCopyWithImpl(
      _$AnimalImpl _value, $Res Function(_$AnimalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? species = null,
    Object? birth = null,
    Object? gender = null,
    Object? note = freezed,
    Object? imgUrl = freezed,
  }) {
    return _then(_$AnimalImpl(
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
              as Species,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AnimalImpl with DiagnosticableTreeMixin implements _Animal {
  _$AnimalImpl(
      {required this.id,
      required this.name,
      required this.species,
      required this.birth,
      required this.gender,
      this.note,
      this.imgUrl});

  @override
  final int id;
  @override
  final String name;
  @override
  final Species species;
  @override
  final DateTime birth;
  @override
  final Gender gender;
  @override
  final String? note;
  @override
  final String? imgUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Animal(id: $id, name: $name, species: $species, birth: $birth, gender: $gender, note: $note, imgUrl: $imgUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Animal'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('species', species))
      ..add(DiagnosticsProperty('birth', birth))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('imgUrl', imgUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, species, birth, gender, note, imgUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalImplCopyWith<_$AnimalImpl> get copyWith =>
      __$$AnimalImplCopyWithImpl<_$AnimalImpl>(this, _$identity);
}

abstract class _Animal implements Animal {
  factory _Animal(
      {required final int id,
      required final String name,
      required final Species species,
      required final DateTime birth,
      required final Gender gender,
      final String? note,
      final String? imgUrl}) = _$AnimalImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  Species get species;
  @override
  DateTime get birth;
  @override
  Gender get gender;
  @override
  String? get note;
  @override
  String? get imgUrl;
  @override
  @JsonKey(ignore: true)
  _$$AnimalImplCopyWith<_$AnimalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
