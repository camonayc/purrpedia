// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dataBreedsHash() => r'68ae46d1513d36235fdc20a7bb830f50bf000fb1';

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

/// See also [dataBreeds].
@ProviderFor(dataBreeds)
const dataBreedsProvider = DataBreedsFamily();

/// See also [dataBreeds].
class DataBreedsFamily extends Family<AsyncValue<List<Breed>>> {
  /// See also [dataBreeds].
  const DataBreedsFamily();

  /// See also [dataBreeds].
  DataBreedsProvider call(
    int page,
  ) {
    return DataBreedsProvider(
      page,
    );
  }

  @override
  DataBreedsProvider getProviderOverride(
    covariant DataBreedsProvider provider,
  ) {
    return call(
      provider.page,
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
  String? get name => r'dataBreedsProvider';
}

/// See also [dataBreeds].
class DataBreedsProvider extends AutoDisposeFutureProvider<List<Breed>> {
  /// See also [dataBreeds].
  DataBreedsProvider(
    int page,
  ) : this._internal(
          (ref) => dataBreeds(
            ref as DataBreedsRef,
            page,
          ),
          from: dataBreedsProvider,
          name: r'dataBreedsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dataBreedsHash,
          dependencies: DataBreedsFamily._dependencies,
          allTransitiveDependencies:
              DataBreedsFamily._allTransitiveDependencies,
          page: page,
        );

  DataBreedsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<Breed>> Function(DataBreedsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DataBreedsProvider._internal(
        (ref) => create(ref as DataBreedsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Breed>> createElement() {
    return _DataBreedsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DataBreedsProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DataBreedsRef on AutoDisposeFutureProviderRef<List<Breed>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _DataBreedsProviderElement
    extends AutoDisposeFutureProviderElement<List<Breed>> with DataBreedsRef {
  _DataBreedsProviderElement(super.provider);

  @override
  int get page => (origin as DataBreedsProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
