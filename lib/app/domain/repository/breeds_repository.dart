import 'package:purr_pedia_app/app/data/entitys/breed.dart';
import 'package:purr_pedia_app/core/config/error/failure.dart';
import 'package:either_dart/either.dart';

abstract class BreedsRepository {
  Future<Either<Failure, List<Breed>>> getBreedsByPage(int page);
  Future<Either<Failure,Breed>> getBreedById(String id);
}
