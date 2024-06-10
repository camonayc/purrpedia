import 'package:either_dart/either.dart';
import 'package:get_it/get_it.dart';
import 'package:purr_pedia_app/app/data/entitys/breed.dart';
import 'package:purr_pedia_app/app/domain/repository/breeds_repository.dart';
import 'package:purr_pedia_app/core/config/error/failure.dart';
import 'package:purr_pedia_app/core/types/abstract/use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_breeds_use_case.g.dart';

class GetBreedsUseCase extends UseCase<List<Breed>, int> {
  GetBreedsUseCase(this._repository);

  final BreedsRepository _repository;

  @override
  Future<Either<Failure, List<Breed>>> call(int params) =>
      _repository.getBreedsByPage(params);
}

@riverpod
Future<Either<Failure, List<Breed>>> getBreedsByPageUseCase(
    GetBreedsByPageUseCaseRef ref, int page) {
  final value = GetIt.instance.get<GetBreedsUseCase>();
  return value.call(page);
}
