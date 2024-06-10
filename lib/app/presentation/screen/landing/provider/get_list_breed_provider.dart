import 'package:purr_pedia_app/app/domain/models/models.dart';
import 'package:purr_pedia_app/app/domain/use_case/get_breeds_use_case/get_breeds_use_case.dart';
import 'package:purr_pedia_app/app/presentation/screen/landing/provider/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_breed_provider.g.dart';

@riverpod
class GetListBreed extends _$GetListBreed {
  List<BreedCard> _allBreeds = [];
  String _currentFilter = '';

  @override
  Future<void> build() async {
    final response = await ref.read(getBreedsByPageUseCaseProvider(0).future);
    final listBreed = ref.read(breedListProvider.notifier);

    return response.fold(
      (failure) {
        return;
      },
      (breeds) {
        _allBreeds = BreedCard.mapFormListBreed(breeds);
        searchBreeds(_currentFilter);
        listBreed.setList(_allBreeds);
        return;
      },
    );
  }

  Future<void> loadNextPage(int page) async {
    final response =
        await ref.read(getBreedsByPageUseCaseProvider(page).future);
    final listBreed = ref.read(breedListProvider.notifier);

    response.fold(
      (failure) {
        return;
      },
      (breeds) {
        _allBreeds +=  BreedCard.mapFormListBreed(breeds);
        searchBreeds(_currentFilter);
        listBreed.setList(_allBreeds);
        return;
      },
    );
  }

  void searchBreeds(String value) {
    _currentFilter = value;
    final filterBreads = _allBreeds.where((breed) {
      return (breed.name ?? '').toLowerCase().contains(value.toLowerCase());
    }).toList();
    final listBreed = ref.read(breedListProvider.notifier);
    listBreed.setList(filterBreads);
  }
}
