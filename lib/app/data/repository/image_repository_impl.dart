import 'package:either_dart/either.dart';
import 'package:purr_pedia_app/app/data/entitys/images.dart';
import 'package:purr_pedia_app/app/domain/data_source/image_data_source.dart';
import 'package:purr_pedia_app/app/domain/repository/image_repository.dart';
import 'package:purr_pedia_app/core/config/error/failure.dart';

class ImageRepositoryImpl extends ImageRepository {
  ImageRepositoryImpl(this._dataSource);
  final ImageDataSource _dataSource;
  @override
  Future<Either<Failure, ImageResponse>> getBreedById(String imageId) async {
    try {
      final response = await _dataSource.getImageById(imageId);
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
