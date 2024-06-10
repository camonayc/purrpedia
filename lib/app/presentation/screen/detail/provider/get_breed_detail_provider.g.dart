// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_breed_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailBreedHash() => r'785f2dc50c34af5909830b3628ea1e98c804cc25';

/// See also [DetailBreed].
@ProviderFor(DetailBreed)
final detailBreedProvider =
    AutoDisposeNotifierProvider<DetailBreed, void>.internal(
  DetailBreed.new,
  name: r'detailBreedProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$detailBreedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DetailBreed = AutoDisposeNotifier<void>;
String _$getDetailBreedHash() => r'c7dec492be1560936982526051f361c946782152';

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

abstract class _$GetDetailBreed
    extends BuildlessAutoDisposeAsyncNotifier<BreedDetail> {
  late final String id;

  FutureOr<BreedDetail> build(
    String id,
  );
}

/// See also [GetDetailBreed].
@ProviderFor(GetDetailBreed)
const getDetailBreedProvider = GetDetailBreedFamily();

/// See also [GetDetailBreed].
class GetDetailBreedFamily extends Family<AsyncValue<BreedDetail>> {
  /// See also [GetDetailBreed].
  const GetDetailBreedFamily();

  /// See also [GetDetailBreed].
  GetDetailBreedProvider call(
    String id,
  ) {
    return GetDetailBreedProvider(
      id,
    );
  }

  @override
  GetDetailBreedProvider getProviderOverride(
    covariant GetDetailBreedProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getDetailBreedProvider';
}

/// See also [GetDetailBreed].
class GetDetailBreedProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GetDetailBreed, BreedDetail> {
  /// See also [GetDetailBreed].
  GetDetailBreedProvider(
    String id,
  ) : this._internal(
          () => GetDetailBreed()..id = id,
          from: getDetailBreedProvider,
          name: r'getDetailBreedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDetailBreedHash,
          dependencies: GetDetailBreedFamily._dependencies,
          allTransitiveDependencies:
              GetDetailBreedFamily._allTransitiveDependencies,
          id: id,
        );

  GetDetailBreedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<BreedDetail> runNotifierBuild(
    covariant GetDetailBreed notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(GetDetailBreed Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetDetailBreedProvider._internal(
        () => create()..id = id,
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
  AutoDisposeAsyncNotifierProviderElement<GetDetailBreed, BreedDetail>
      createElement() {
    return _GetDetailBreedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDetailBreedProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetDetailBreedRef on AutoDisposeAsyncNotifierProviderRef<BreedDetail> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetDetailBreedProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetDetailBreed, BreedDetail>
    with GetDetailBreedRef {
  _GetDetailBreedProviderElement(super.provider);

  @override
  String get id => (origin as GetDetailBreedProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
