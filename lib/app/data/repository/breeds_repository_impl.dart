import 'package:either_dart/either.dart';
import 'package:purr_pedia_app/app/data/entitys/breed.dart';
import 'package:purr_pedia_app/app/domain/data_source/breeds_data_source.dart';
import 'package:purr_pedia_app/app/domain/repository/breeds_repository.dart';
import 'package:purr_pedia_app/core/config/error/failure.dart';

class BreedsRepositoryImpl extends BreedsRepository {
  BreedsRepositoryImpl(this._dataSource);
  final BreedsDataSource _dataSource;
  @override
  Future<Either<Failure, List<Breed>>> getBreedsByPage(int page) async {
    try {
      final response = await _dataSource.getBreedsByPage(page);
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Breed>> getBreedById(String id) async {
    try {
      final response = await _dataSource.getBreedById(id);
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
