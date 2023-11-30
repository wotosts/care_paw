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
  String get name => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  DateTime get birth => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
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
      {String name,
      String species,
      DateTime birth,
      String gender,
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
    Object? name = null,
    Object? species = null,
    Object? birth = null,
    Object? gender = null,
    Object? note = freezed,
    Object? imgUrl = freezed,
  }) {
    return _then(_value.copyWith(
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
      {String name,
      String species,
      DateTime birth,
      String gender,
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
    Object? name = null,
    Object? species = null,
    Object? birth = null,
    Object? gender = null,
    Object? note = freezed,
    Object? imgUrl = freezed,
  }) {
    return _then(_$AnimalImpl(
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
      {required this.name,
      required this.species,
      required this.birth,
      required this.gender,
      this.note,
      this.imgUrl});

  @override
  final String name;
  @override
  final String species;
  @override
  final DateTime birth;
  @override
  final String gender;
  @override
  final String? note;
  @override
  final String? imgUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Animal(name: $name, species: $species, birth: $birth, gender: $gender, note: $note, imgUrl: $imgUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Animal'))
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
            (identical(other.name, name) || other.name == name) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, species, birth, gender, note, imgUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalImplCopyWith<_$AnimalImpl> get copyWith =>
      __$$AnimalImplCopyWithImpl<_$AnimalImpl>(this, _$identity);
}

abstract class _Animal implements Animal {
  factory _Animal(
      {required final String name,
      required final String species,
      required final DateTime birth,
      required final String gender,
      final String? note,
      final String? imgUrl}) = _$AnimalImpl;

  @override
  String get name;
  @override
  String get species;
  @override
  DateTime get birth;
  @override
  String get gender;
  @override
  String? get note;
  @override
  String? get imgUrl;
  @override
  @JsonKey(ignore: true)
  _$$AnimalImplCopyWith<_$AnimalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
