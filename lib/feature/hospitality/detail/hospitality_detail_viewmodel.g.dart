// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospitality_detail_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getHospitalizationDetailHash() =>
    r'f62140c304bdb0cd5c01c9116e1dc6e2225e52dd';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getHospitalizationDetail].
@ProviderFor(getHospitalizationDetail)
const getHospitalizationDetailProvider = GetHospitalizationDetailFamily();

/// See also [getHospitalizationDetail].
class GetHospitalizationDetailFamily
    extends Family<AsyncValue<Hospitalization?>> {
  /// See also [getHospitalizationDetail].
  const GetHospitalizationDetailFamily();

  /// See also [getHospitalizationDetail].
  GetHospitalizationDetailProvider call({
    required int id,
  }) {
    return GetHospitalizationDetailProvider(
      id: id,
    );
  }

  @override
  GetHospitalizationDetailProvider getProviderOverride(
    covariant GetHospitalizationDetailProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getHospitalizationDetailProvider';
}

/// See also [getHospitalizationDetail].
class GetHospitalizationDetailProvider
    extends AutoDisposeFutureProvider<Hospitalization?> {
  /// See also [getHospitalizationDetail].
  GetHospitalizationDetailProvider({
    required int id,
  }) : this._internal(
          (ref) => getHospitalizationDetail(
            ref as GetHospitalizationDetailRef,
            id: id,
          ),
          from: getHospitalizationDetailProvider,
          name: r'getHospitalizationDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getHospitalizationDetailHash,
          dependencies: GetHospitalizationDetailFamily._dependencies,
          allTransitiveDependencies:
              GetHospitalizationDetailFamily._allTransitiveDependencies,
          id: id,
        );

  GetHospitalizationDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Hospitalization?> Function(GetHospitalizationDetailRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetHospitalizationDetailProvider._internal(
        (ref) => create(ref as GetHospitalizationDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Hospitalization?> createElement() {
    return _GetHospitalizationDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetHospitalizationDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetHospitalizationDetailRef
    on AutoDisposeFutureProviderRef<Hospitalization?> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetHospitalizationDetailProviderElement
    extends AutoDisposeFutureProviderElement<Hospitalization?>
    with GetHospitalizationDetailRef {
  _GetHospitalizationDetailProviderElement(super.provider);

  @override
  int get id => (origin as GetHospitalizationDetailProvider).id;
}

String _$getHospitalizationNotesHash() =>
    r'bfc143c25ea6331e5be2631019e2e4f9c0ae57a8';

/// See also [getHospitalizationNotes].
@ProviderFor(getHospitalizationNotes)
const getHospitalizationNotesProvider = GetHospitalizationNotesFamily();

/// See also [getHospitalizationNotes].
class GetHospitalizationNotesFamily
    extends Family<AsyncValue<List<HospitalizationHistoryNote>>> {
  /// See also [getHospitalizationNotes].
  const GetHospitalizationNotesFamily();

  /// See also [getHospitalizationNotes].
  GetHospitalizationNotesProvider call({
    required int hospitalizationId,
  }) {
    return GetHospitalizationNotesProvider(
      hospitalizationId: hospitalizationId,
    );
  }

  @override
  GetHospitalizationNotesProvider getProviderOverride(
    covariant GetHospitalizationNotesProvider provider,
  ) {
    return call(
      hospitalizationId: provider.hospitalizationId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getHospitalizationNotesProvider';
}

/// See also [getHospitalizationNotes].
class GetHospitalizationNotesProvider
    extends AutoDisposeFutureProvider<List<HospitalizationHistoryNote>> {
  /// See also [getHospitalizationNotes].
  GetHospitalizationNotesProvider({
    required int hospitalizationId,
  }) : this._internal(
          (ref) => getHospitalizationNotes(
            ref as GetHospitalizationNotesRef,
            hospitalizationId: hospitalizationId,
          ),
          from: getHospitalizationNotesProvider,
          name: r'getHospitalizationNotesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getHospitalizationNotesHash,
          dependencies: GetHospitalizationNotesFamily._dependencies,
          allTransitiveDependencies:
              GetHospitalizationNotesFamily._allTransitiveDependencies,
          hospitalizationId: hospitalizationId,
        );

  GetHospitalizationNotesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.hospitalizationId,
  }) : super.internal();

  final int hospitalizationId;

  @override
  Override overrideWith(
    FutureOr<List<HospitalizationHistoryNote>> Function(
            GetHospitalizationNotesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetHospitalizationNotesProvider._internal(
        (ref) => create(ref as GetHospitalizationNotesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        hospitalizationId: hospitalizationId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<HospitalizationHistoryNote>>
      createElement() {
    return _GetHospitalizationNotesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetHospitalizationNotesProvider &&
        other.hospitalizationId == hospitalizationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hospitalizationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetHospitalizationNotesRef
    on AutoDisposeFutureProviderRef<List<HospitalizationHistoryNote>> {
  /// The parameter `hospitalizationId` of this provider.
  int get hospitalizationId;
}

class _GetHospitalizationNotesProviderElement
    extends AutoDisposeFutureProviderElement<List<HospitalizationHistoryNote>>
    with GetHospitalizationNotesRef {
  _GetHospitalizationNotesProviderElement(super.provider);

  @override
  int get hospitalizationId =>
      (origin as GetHospitalizationNotesProvider).hospitalizationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
