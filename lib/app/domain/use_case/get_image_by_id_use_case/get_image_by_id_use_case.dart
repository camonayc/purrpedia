import 'package:either_dart/either.dart';
import 'package:get_it/get_it.dart';
import 'package:purr_pedia_app/app/data/entitys/images.dart';
import 'package:purr_pedia_app/app/domain/repository/image_repository.dart';
import 'package:purr_pedia_app/core/config/error/failure.dart';
import 'package:purr_pedia_app/core/types/abstract/use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_image_by_id_use_case.g.dart';

class GetImageByIdUseCase extends UseCase<ImageResponse, String> {
  GetImageByIdUseCase(this._repository);
  final ImageRepository _repository;
  @override
  Future<Either<Failure, ImageResponse>> call(String params) =>
      _repository.getBreedById(params);
}

@riverpod
Future<Either<Failure, ImageResponse>> getImageByIdUseCase(
    GetImageByIdUseCaseRef ref, String imageId) {
  final value = GetIt.instance.get<GetImageByIdUseCase>();
  return value.call(imageId);
}
