import 'package:either_dart/either.dart';
import 'package:get_it/get_it.dart';
import 'package:purr_pedia_app/app/data/entitys/breed.dart';
import 'package:purr_pedia_app/app/domain/repository/breeds_repository.dart';
import 'package:purr_pedia_app/core/config/error/failure.dart';
import 'package:purr_pedia_app/core/types/abstract/use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_breed_by_id_use_case.g.dart';

class GetBreedByIdUseCase extends UseCase<Breed, String> {
  GetBreedByIdUseCase(this._repository);

  final BreedsRepository _repository;

  @override
  Future<Either<Failure, Breed>> call(String params) =>
      _repository.getBreedById(params);
}

@riverpod
Future<Either<Failure, Breed>> getBreedByIdUseCase(
    GetBreedByIdUseCaseRef ref, String id) {
  final value = GetIt.instance.get<GetBreedByIdUseCase>();
  return value.call(id);
}
