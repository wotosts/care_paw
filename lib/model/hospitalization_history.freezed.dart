// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hospitalization_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HospitalizationHistory {
  Animal get animal => throw _privateConstructorUsedError;
  bool get isBookmarked =>
      throw _privateConstructorUsedError; // dto 따로 잡기.. 유저별 bookmark list
  DateTime get hospitalizationStartDate => throw _privateConstructorUsedError;
  DateTime? get hospitalizationEndDate => throw _privateConstructorUsedError;
  List<HospitalizationHistoryNote>? get notes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HospitalizationHistoryCopyWith<HospitalizationHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalizationHistoryCopyWith<$Res> {
  factory $HospitalizationHistoryCopyWith(HospitalizationHistory value,
          $Res Function(HospitalizationHistory) then) =
      _$HospitalizationHistoryCopyWithImpl<$Res, HospitalizationHistory>;
  @useResult
  $Res call(
      {Animal animal,
      bool isBookmarked,
      DateTime hospitalizationStartDate,
      DateTime? hospitalizationEndDate,
      List<HospitalizationHistoryNote>? notes});

  $AnimalCopyWith<$Res> get animal;
}

/// @nodoc
class _$HospitalizationHistoryCopyWithImpl<$Res,
        $Val extends HospitalizationHistory>
    implements $HospitalizationHistoryCopyWith<$Res> {
  _$HospitalizationHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animal = null,
    Object? isBookmarked = null,
    Object? hospitalizationStartDate = null,
    Object? hospitalizationEndDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<HospitalizationHistoryNote>?,
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
abstract class _$$HospitalizationHistoryImplCopyWith<$Res>
    implements $HospitalizationHistoryCopyWith<$Res> {
  factory _$$HospitalizationHistoryImplCopyWith(
          _$HospitalizationHistoryImpl value,
          $Res Function(_$HospitalizationHistoryImpl) then) =
      __$$HospitalizationHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Animal animal,
      bool isBookmarked,
      DateTime hospitalizationStartDate,
      DateTime? hospitalizationEndDate,
      List<HospitalizationHistoryNote>? notes});

  @override
  $AnimalCopyWith<$Res> get animal;
}

/// @nodoc
class __$$HospitalizationHistoryImplCopyWithImpl<$Res>
    extends _$HospitalizationHistoryCopyWithImpl<$Res,
        _$HospitalizationHistoryImpl>
    implements _$$HospitalizationHistoryImplCopyWith<$Res> {
  __$$HospitalizationHistoryImplCopyWithImpl(
      _$HospitalizationHistoryImpl _value,
      $Res Function(_$HospitalizationHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animal = null,
    Object? isBookmarked = null,
    Object? hospitalizationStartDate = null,
    Object? hospitalizationEndDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$HospitalizationHistoryImpl(
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
      notes: freezed == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<HospitalizationHistoryNote>?,
    ));
  }
}

/// @nodoc

class _$HospitalizationHistoryImpl extends _HospitalizationHistory {
  _$HospitalizationHistoryImpl(
      {required this.animal,
      required this.isBookmarked,
      required this.hospitalizationStartDate,
      this.hospitalizationEndDate,
      final List<HospitalizationHistoryNote>? notes})
      : _notes = notes,
        super._();

  @override
  final Animal animal;
  @override
  final bool isBookmarked;
// dto 따로 잡기.. 유저별 bookmark list
  @override
  final DateTime hospitalizationStartDate;
  @override
  final DateTime? hospitalizationEndDate;
  final List<HospitalizationHistoryNote>? _notes;
  @override
  List<HospitalizationHistoryNote>? get notes {
    final value = _notes;
    if (value == null) return null;
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HospitalizationHistory(animal: $animal, isBookmarked: $isBookmarked, hospitalizationStartDate: $hospitalizationStartDate, hospitalizationEndDate: $hospitalizationEndDate, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HospitalizationHistoryImpl &&
            (identical(other.animal, animal) || other.animal == animal) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(
                    other.hospitalizationStartDate, hospitalizationStartDate) ||
                other.hospitalizationStartDate == hospitalizationStartDate) &&
            (identical(other.hospitalizationEndDate, hospitalizationEndDate) ||
                other.hospitalizationEndDate == hospitalizationEndDate) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      animal,
      isBookmarked,
      hospitalizationStartDate,
      hospitalizationEndDate,
      const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HospitalizationHistoryImplCopyWith<_$HospitalizationHistoryImpl>
      get copyWith => __$$HospitalizationHistoryImplCopyWithImpl<
          _$HospitalizationHistoryImpl>(this, _$identity);
}

abstract class _HospitalizationHistory extends HospitalizationHistory {
  factory _HospitalizationHistory(
          {required final Animal animal,
          required final bool isBookmarked,
          required final DateTime hospitalizationStartDate,
          final DateTime? hospitalizationEndDate,
          final List<HospitalizationHistoryNote>? notes}) =
      _$HospitalizationHistoryImpl;
  _HospitalizationHistory._() : super._();

  @override
  Animal get animal;
  @override
  bool get isBookmarked;
  @override // dto 따로 잡기.. 유저별 bookmark list
  DateTime get hospitalizationStartDate;
  @override
  DateTime? get hospitalizationEndDate;
  @override
  List<HospitalizationHistoryNote>? get notes;
  @override
  @JsonKey(ignore: true)
  _$$HospitalizationHistoryImplCopyWith<_$HospitalizationHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
