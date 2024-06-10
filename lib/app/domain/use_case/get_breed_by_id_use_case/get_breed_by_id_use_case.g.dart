// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_breed_by_id_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getBreedByIdUseCaseHash() =>
    r'bae83a56283877eb9a3639d818c141f16c30db9f';

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

/// See also [getBreedByIdUseCase].
@ProviderFor(getBreedByIdUseCase)
const getBreedByIdUseCaseProvider = GetBreedByIdUseCaseFamily();

/// See also [getBreedByIdUseCase].
class GetBreedByIdUseCaseFamily
    extends Family<AsyncValue<Either<Failure, Breed>>> {
  /// See also [getBreedByIdUseCase].
  const GetBreedByIdUseCaseFamily();

  /// See also [getBreedByIdUseCase].
  GetBreedByIdUseCaseProvider call(
    String id,
  ) {
    return GetBreedByIdUseCaseProvider(
      id,
    );
  }

  @override
  GetBreedByIdUseCaseProvider getProviderOverride(
    covariant GetBreedByIdUseCaseProvider provider,
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
  String? get name => r'getBreedByIdUseCaseProvider';
}

/// See also [getBreedByIdUseCase].
class GetBreedByIdUseCaseProvider
    extends AutoDisposeFutureProvider<Either<Failure, Breed>> {
  /// See also [getBreedByIdUseCase].
  GetBreedByIdUseCaseProvider(
    String id,
  ) : this._internal(
          (ref) => getBreedByIdUseCase(
            ref as GetBreedByIdUseCaseRef,
            id,
          ),
          from: getBreedByIdUseCaseProvider,
          name: r'getBreedByIdUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBreedByIdUseCaseHash,
          dependencies: GetBreedByIdUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetBreedByIdUseCaseFamily._allTransitiveDependencies,
          id: id,
        );

  GetBreedByIdUseCaseProvider._internal(
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
  Override overrideWith(
    FutureOr<Either<Failure, Breed>> Function(GetBreedByIdUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBreedByIdUseCaseProvider._internal(
        (ref) => create(ref as GetBreedByIdUseCaseRef),
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
  AutoDisposeFutureProviderElement<Either<Failure, Breed>> createElement() {
    return _GetBreedByIdUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBreedByIdUseCaseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetBreedByIdUseCaseRef
    on AutoDisposeFutureProviderRef<Either<Failure, Breed>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetBreedByIdUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, Breed>>
    with GetBreedByIdUseCaseRef {
  _GetBreedByIdUseCaseProviderElement(super.provider);

  @override
  String get id => (origin as GetBreedByIdUseCaseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
