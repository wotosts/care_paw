// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'HospitalizationNoteDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HospitalizationNoteDto _$HospitalizationNoteDtoFromJson(
    Map<String, dynamic> json) {
  return _HospitalizationNoteDto.fromJson(json);
}

/// @nodoc
mixin _$HospitalizationNoteDto {
  int get id => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  String get user_nickname => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get img_urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HospitalizationNoteDtoCopyWith<HospitalizationNoteDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalizationNoteDtoCopyWith<$Res> {
  factory $HospitalizationNoteDtoCopyWith(HospitalizationNoteDto value,
          $Res Function(HospitalizationNoteDto) then) =
      _$HospitalizationNoteDtoCopyWithImpl<$Res, HospitalizationNoteDto>;
  @useResult
  $Res call(
      {int id,
      DateTime created_at,
      String title,
      String user_id,
      String user_nickname,
      String? description,
      String? img_urls});
}

/// @nodoc
class _$HospitalizationNoteDtoCopyWithImpl<$Res,
        $Val extends HospitalizationNoteDto>
    implements $HospitalizationNoteDtoCopyWith<$Res> {
  _$HospitalizationNoteDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? title = null,
    Object? user_id = null,
    Object? user_nickname = null,
    Object? description = freezed,
    Object? img_urls = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_nickname: null == user_nickname
          ? _value.user_nickname
          : user_nickname // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      img_urls: freezed == img_urls
          ? _value.img_urls
          : img_urls // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HospitalizationNoteDtoImplCopyWith<$Res>
    implements $HospitalizationNoteDtoCopyWith<$Res> {
  factory _$$HospitalizationNoteDtoImplCopyWith(
          _$HospitalizationNoteDtoImpl value,
          $Res Function(_$HospitalizationNoteDtoImpl) then) =
      __$$HospitalizationNoteDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime created_at,
      String title,
      String user_id,
      String user_nickname,
      String? description,
      String? img_urls});
}

/// @nodoc
class __$$HospitalizationNoteDtoImplCopyWithImpl<$Res>
    extends _$HospitalizationNoteDtoCopyWithImpl<$Res,
        _$HospitalizationNoteDtoImpl>
    implements _$$HospitalizationNoteDtoImplCopyWith<$Res> {
  __$$HospitalizationNoteDtoImplCopyWithImpl(
      _$HospitalizationNoteDtoImpl _value,
      $Res Function(_$HospitalizationNoteDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? title = null,
    Object? user_id = null,
    Object? user_nickname = null,
    Object? description = freezed,
    Object? img_urls = freezed,
  }) {
    return _then(_$HospitalizationNoteDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_nickname: null == user_nickname
          ? _value.user_nickname
          : user_nickname // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      img_urls: freezed == img_urls
          ? _value.img_urls
          : img_urls // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HospitalizationNoteDtoImpl implements _HospitalizationNoteDto {
  const _$HospitalizationNoteDtoImpl(
      {required this.id,
      required this.created_at,
      required this.title,
      required this.user_id,
      required this.user_nickname,
      this.description,
      this.img_urls});

  factory _$HospitalizationNoteDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HospitalizationNoteDtoImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime created_at;
  @override
  final String title;
  @override
  final String user_id;
  @override
  final String user_nickname;
  @override
  final String? description;
  @override
  final String? img_urls;

  @override
  String toString() {
    return 'HospitalizationNoteDto(id: $id, created_at: $created_at, title: $title, user_id: $user_id, user_nickname: $user_nickname, description: $description, img_urls: $img_urls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HospitalizationNoteDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.user_nickname, user_nickname) ||
                other.user_nickname == user_nickname) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.img_urls, img_urls) ||
                other.img_urls == img_urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, created_at, title, user_id,
      user_nickname, description, img_urls);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HospitalizationNoteDtoImplCopyWith<_$HospitalizationNoteDtoImpl>
      get copyWith => __$$HospitalizationNoteDtoImplCopyWithImpl<
          _$HospitalizationNoteDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HospitalizationNoteDtoImplToJson(
      this,
    );
  }
}

abstract class _HospitalizationNoteDto implements HospitalizationNoteDto {
  const factory _HospitalizationNoteDto(
      {required final int id,
      required final DateTime created_at,
      required final String title,
      required final String user_id,
      required final String user_nickname,
      final String? description,
      final String? img_urls}) = _$HospitalizationNoteDtoImpl;

  factory _HospitalizationNoteDto.fromJson(Map<String, dynamic> json) =
      _$HospitalizationNoteDtoImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get created_at;
  @override
  String get title;
  @override
  String get user_id;
  @override
  String get user_nickname;
  @override
  String? get description;
  @override
  String? get img_urls;
  @override
  @JsonKey(ignore: true)
  _$$HospitalizationNoteDtoImplCopyWith<_$HospitalizationNoteDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
