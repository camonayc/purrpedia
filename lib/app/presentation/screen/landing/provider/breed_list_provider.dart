
import 'package:purr_pedia_app/app/domain/models/breed_card.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'breed_list_provider.g.dart';

@riverpod
class BreedList extends _$BreedList {
  @override
  List<BreedCard> build() {
    return [];
  }

  List<BreedCard> getList() {
    return state;
  }

  void setList(List<BreedCard> newList) {
    state = newList;
  }
}
