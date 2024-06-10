// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_image_breed_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loadImageBreedHash() => r'58af0d262f22f0272c97fb04ff6d63d329f9801b';

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

/// See also [loadImageBreed].
@ProviderFor(loadImageBreed)
const loadImageBreedProvider = LoadImageBreedFamily();

/// See also [loadImageBreed].
class LoadImageBreedFamily extends Family<AsyncValue<String?>> {
  /// See also [loadImageBreed].
  const LoadImageBreedFamily();

  /// See also [loadImageBreed].
  LoadImageBreedProvider call(
    String imageId,
  ) {
    return LoadImageBreedProvider(
      imageId,
    );
  }

  @override
  LoadImageBreedProvider getProviderOverride(
    covariant LoadImageBreedProvider provider,
  ) {
    return call(
      provider.imageId,
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
  String? get name => r'loadImageBreedProvider';
}

/// See also [loadImageBreed].
class LoadImageBreedProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [loadImageBreed].
  LoadImageBreedProvider(
    String imageId,
  ) : this._internal(
          (ref) => loadImageBreed(
            ref as LoadImageBreedRef,
            imageId,
          ),
          from: loadImageBreedProvider,
          name: r'loadImageBreedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loadImageBreedHash,
          dependencies: LoadImageBreedFamily._dependencies,
          allTransitiveDependencies:
              LoadImageBreedFamily._allTransitiveDependencies,
          imageId: imageId,
        );

  LoadImageBreedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageId,
  }) : super.internal();

  final String imageId;

  @override
  Override overrideWith(
    FutureOr<String?> Function(LoadImageBreedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoadImageBreedProvider._internal(
        (ref) => create(ref as LoadImageBreedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageId: imageId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _LoadImageBreedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoadImageBreedProvider && other.imageId == imageId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LoadImageBreedRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `imageId` of this provider.
  String get imageId;
}

class _LoadImageBreedProviderElement
    extends AutoDisposeFutureProviderElement<String?> with LoadImageBreedRef {
  _LoadImageBreedProviderElement(super.provider);

  @override
  String get imageId => (origin as LoadImageBreedProvider).imageId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
