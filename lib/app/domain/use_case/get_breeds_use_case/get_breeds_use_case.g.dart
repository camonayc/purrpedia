// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_breeds_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getBreedsByPageUseCaseHash() =>
    r'6726a65143578dea1b3af4bc3a99e6e80b5e64db';

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

/// See also [getBreedsByPageUseCase].
@ProviderFor(getBreedsByPageUseCase)
const getBreedsByPageUseCaseProvider = GetBreedsByPageUseCaseFamily();

/// See also [getBreedsByPageUseCase].
class GetBreedsByPageUseCaseFamily
    extends Family<AsyncValue<Either<Failure, List<Breed>>>> {
  /// See also [getBreedsByPageUseCase].
  const GetBreedsByPageUseCaseFamily();

  /// See also [getBreedsByPageUseCase].
  GetBreedsByPageUseCaseProvider call(
    int page,
  ) {
    return GetBreedsByPageUseCaseProvider(
      page,
    );
  }

  @override
  GetBreedsByPageUseCaseProvider getProviderOverride(
    covariant GetBreedsByPageUseCaseProvider provider,
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
  String? get name => r'getBreedsByPageUseCaseProvider';
}

/// See also [getBreedsByPageUseCase].
class GetBreedsByPageUseCaseProvider
    extends AutoDisposeFutureProvider<Either<Failure, List<Breed>>> {
  /// See also [getBreedsByPageUseCase].
  GetBreedsByPageUseCaseProvider(
    int page,
  ) : this._internal(
          (ref) => getBreedsByPageUseCase(
            ref as GetBreedsByPageUseCaseRef,
            page,
          ),
          from: getBreedsByPageUseCaseProvider,
          name: r'getBreedsByPageUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBreedsByPageUseCaseHash,
          dependencies: GetBreedsByPageUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetBreedsByPageUseCaseFamily._allTransitiveDependencies,
          page: page,
        );

  GetBreedsByPageUseCaseProvider._internal(
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
    FutureOr<Either<Failure, List<Breed>>> Function(
            GetBreedsByPageUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBreedsByPageUseCaseProvider._internal(
        (ref) => create(ref as GetBreedsByPageUseCaseRef),
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
  AutoDisposeFutureProviderElement<Either<Failure, List<Breed>>>
      createElement() {
    return _GetBreedsByPageUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBreedsByPageUseCaseProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetBreedsByPageUseCaseRef
    on AutoDisposeFutureProviderRef<Either<Failure, List<Breed>>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _GetBreedsByPageUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, List<Breed>>>
    with GetBreedsByPageUseCaseRef {
  _GetBreedsByPageUseCaseProviderElement(super.provider);

  @override
  int get page => (origin as GetBreedsByPageUseCaseProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
