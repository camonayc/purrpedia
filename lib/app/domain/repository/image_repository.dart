import 'package:either_dart/either.dart';
import 'package:purr_pedia_app/app/data/entitys/images.dart';
import 'package:purr_pedia_app/core/config/error/failure.dart';

abstract class ImageRepository {
  Future<Either<Failure, ImageResponse>> getBreedById(String imageId);
}
