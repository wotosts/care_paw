// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospitality_detail_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getHospitalizationDetailHash() =>
    r'b81cfd442cc5768680d0e04e5a9cd47ee02d9f3d';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
