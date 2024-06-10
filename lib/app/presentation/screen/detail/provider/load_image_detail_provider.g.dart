// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_image_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loadImageDetailHash() => r'52917f9fda213dd4d790e377c67b652999797965';

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

/// See also [loadImageDetail].
@ProviderFor(loadImageDetail)
const loadImageDetailProvider = LoadImageDetailFamily();

/// See also [loadImageDetail].
class LoadImageDetailFamily extends Family<AsyncValue<String?>> {
  /// See also [loadImageDetail].
  const LoadImageDetailFamily();

  /// See also [loadImageDetail].
  LoadImageDetailProvider call(
    String imageId,
  ) {
    return LoadImageDetailProvider(
      imageId,
    );
  }

  @override
  LoadImageDetailProvider getProviderOverride(
    covariant LoadImageDetailProvider provider,
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
  String? get name => r'loadImageDetailProvider';
}

/// See also [loadImageDetail].
class LoadImageDetailProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [loadImageDetail].
  LoadImageDetailProvider(
    String imageId,
  ) : this._internal(
          (ref) => loadImageDetail(
            ref as LoadImageDetailRef,
            imageId,
          ),
          from: loadImageDetailProvider,
          name: r'loadImageDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loadImageDetailHash,
          dependencies: LoadImageDetailFamily._dependencies,
          allTransitiveDependencies:
              LoadImageDetailFamily._allTransitiveDependencies,
          imageId: imageId,
        );

  LoadImageDetailProvider._internal(
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
    FutureOr<String?> Function(LoadImageDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoadImageDetailProvider._internal(
        (ref) => create(ref as LoadImageDetailRef),
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
    return _LoadImageDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoadImageDetailProvider && other.imageId == imageId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LoadImageDetailRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `imageId` of this provider.
  String get imageId;
}

class _LoadImageDetailProviderElement
    extends AutoDisposeFutureProviderElement<String?> with LoadImageDetailRef {
  _LoadImageDetailProviderElement(super.provider);

  @override
  String get imageId => (origin as LoadImageDetailProvider).imageId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
