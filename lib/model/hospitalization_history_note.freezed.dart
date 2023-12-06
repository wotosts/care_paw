// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hospitalization_history_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HospitalizationHistoryNote {
  int get id => throw _privateConstructorUsedError;
  DateTime get added => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get imgUrls => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HospitalizationHistoryNoteCopyWith<HospitalizationHistoryNote>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalizationHistoryNoteCopyWith<$Res> {
  factory $HospitalizationHistoryNoteCopyWith(HospitalizationHistoryNote value,
          $Res Function(HospitalizationHistoryNote) then) =
      _$HospitalizationHistoryNoteCopyWithImpl<$Res,
          HospitalizationHistoryNote>;
  @useResult
  $Res call(
      {int id,
      DateTime added,
      String title,
      User user,
      String? description,
      List<String>? imgUrls});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$HospitalizationHistoryNoteCopyWithImpl<$Res,
        $Val extends HospitalizationHistoryNote>
    implements $HospitalizationHistoryNoteCopyWith<$Res> {
  _$HospitalizationHistoryNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? added = null,
    Object? title = null,
    Object? user = null,
    Object? description = freezed,
    Object? imgUrls = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      added: null == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrls: freezed == imgUrls
          ? _value.imgUrls
          : imgUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HospitalizationHistoryNoteImplCopyWith<$Res>
    implements $HospitalizationHistoryNoteCopyWith<$Res> {
  factory _$$HospitalizationHistoryNoteImplCopyWith(
          _$HospitalizationHistoryNoteImpl value,
          $Res Function(_$HospitalizationHistoryNoteImpl) then) =
      __$$HospitalizationHistoryNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime added,
      String title,
      User user,
      String? description,
      List<String>? imgUrls});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$HospitalizationHistoryNoteImplCopyWithImpl<$Res>
    extends _$HospitalizationHistoryNoteCopyWithImpl<$Res,
        _$HospitalizationHistoryNoteImpl>
    implements _$$HospitalizationHistoryNoteImplCopyWith<$Res> {
  __$$HospitalizationHistoryNoteImplCopyWithImpl(
      _$HospitalizationHistoryNoteImpl _value,
      $Res Function(_$HospitalizationHistoryNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? added = null,
    Object? title = null,
    Object? user = null,
    Object? description = freezed,
    Object? imgUrls = freezed,
  }) {
    return _then(_$HospitalizationHistoryNoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      added: null == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrls: freezed == imgUrls
          ? _value._imgUrls
          : imgUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$HospitalizationHistoryNoteImpl implements _HospitalizationHistoryNote {
  _$HospitalizationHistoryNoteImpl(
      {required this.id,
      required this.added,
      required this.title,
      required this.user,
      this.description,
      final List<String>? imgUrls})
      : _imgUrls = imgUrls;

  @override
  final int id;
  @override
  final DateTime added;
  @override
  final String title;
  @override
  final User user;
  @override
  final String? description;
  final List<String>? _imgUrls;
  @override
  List<String>? get imgUrls {
    final value = _imgUrls;
    if (value == null) return null;
    if (_imgUrls is EqualUnmodifiableListView) return _imgUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HospitalizationHistoryNote(id: $id, added: $added, title: $title, user: $user, description: $description, imgUrls: $imgUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HospitalizationHistoryNoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.added, added) || other.added == added) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._imgUrls, _imgUrls));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, added, title, user,
      description, const DeepCollectionEquality().hash(_imgUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HospitalizationHistoryNoteImplCopyWith<_$HospitalizationHistoryNoteImpl>
      get copyWith => __$$HospitalizationHistoryNoteImplCopyWithImpl<
          _$HospitalizationHistoryNoteImpl>(this, _$identity);
}

abstract class _HospitalizationHistoryNote
    implements HospitalizationHistoryNote {
  factory _HospitalizationHistoryNote(
      {required final int id,
      required final DateTime added,
      required final String title,
      required final User user,
      final String? description,
      final List<String>? imgUrls}) = _$HospitalizationHistoryNoteImpl;

  @override
  int get id;
  @override
  DateTime get added;
  @override
  String get title;
  @override
  User get user;
  @override
  String? get description;
  @override
  List<String>? get imgUrls;
  @override
  @JsonKey(ignore: true)
  _$$HospitalizationHistoryNoteImplCopyWith<_$HospitalizationHistoryNoteImpl>
      get copyWith => throw _privateConstructorUsedError;
}
