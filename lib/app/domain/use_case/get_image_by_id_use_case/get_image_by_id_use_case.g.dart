// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_image_by_id_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getImageByIdUseCaseHash() =>
    r'3a1236dfa1aca091ee8d91a387684233fb333fef';

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

/// See also [getImageByIdUseCase].
@ProviderFor(getImageByIdUseCase)
const getImageByIdUseCaseProvider = GetImageByIdUseCaseFamily();

/// See also [getImageByIdUseCase].
class GetImageByIdUseCaseFamily
    extends Family<AsyncValue<Either<Failure, ImageResponse>>> {
  /// See also [getImageByIdUseCase].
  const GetImageByIdUseCaseFamily();

  /// See also [getImageByIdUseCase].
  GetImageByIdUseCaseProvider call(
    String imageId,
  ) {
    return GetImageByIdUseCaseProvider(
      imageId,
    );
  }

  @override
  GetImageByIdUseCaseProvider getProviderOverride(
    covariant GetImageByIdUseCaseProvider provider,
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
  String? get name => r'getImageByIdUseCaseProvider';
}

/// See also [getImageByIdUseCase].
class GetImageByIdUseCaseProvider
    extends AutoDisposeFutureProvider<Either<Failure, ImageResponse>> {
  /// See also [getImageByIdUseCase].
  GetImageByIdUseCaseProvider(
    String imageId,
  ) : this._internal(
          (ref) => getImageByIdUseCase(
            ref as GetImageByIdUseCaseRef,
            imageId,
          ),
          from: getImageByIdUseCaseProvider,
          name: r'getImageByIdUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getImageByIdUseCaseHash,
          dependencies: GetImageByIdUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetImageByIdUseCaseFamily._allTransitiveDependencies,
          imageId: imageId,
        );

  GetImageByIdUseCaseProvider._internal(
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
    FutureOr<Either<Failure, ImageResponse>> Function(
            GetImageByIdUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetImageByIdUseCaseProvider._internal(
        (ref) => create(ref as GetImageByIdUseCaseRef),
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
  AutoDisposeFutureProviderElement<Either<Failure, ImageResponse>>
      createElement() {
    return _GetImageByIdUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetImageByIdUseCaseProvider && other.imageId == imageId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetImageByIdUseCaseRef
    on AutoDisposeFutureProviderRef<Either<Failure, ImageResponse>> {
  /// The parameter `imageId` of this provider.
  String get imageId;
}

class _GetImageByIdUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, ImageResponse>>
    with GetImageByIdUseCaseRef {
  _GetImageByIdUseCaseProviderElement(super.provider);

  @override
  String get imageId => (origin as GetImageByIdUseCaseProvider).imageId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
