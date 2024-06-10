import 'package:purr_pedia_app/app/data/entitys/breed.dart';
import 'package:purr_pedia_app/app/domain/use_case/get_breeds_use_case/get_breeds_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_provider.g.dart';

@riverpod
Future<List<Breed>> dataBreeds(DataBreedsRef ref, int page) async {
  // await Future.delayed(Duration(seconds: 3));
  final response = await ref.read(getBreedsByPageUseCaseProvider(page).future);

  return response.fold(
    (failure) {
      return [];
    },
    (breeds) => breeds,
  );
}
