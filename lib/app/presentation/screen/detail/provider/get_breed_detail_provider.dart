import 'package:either_dart/either.dart';
import 'package:purr_pedia_app/app/domain/models/breed_details.dart';
import 'package:purr_pedia_app/app/domain/use_case/get_breed_by_id_use_case/get_breed_by_id_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_breed_detail_provider.g.dart';

@riverpod
class DetailBreed extends _$DetailBreed {
  @override
  void build() {
    return;
  }
}

@riverpod
class GetDetailBreed extends _$GetDetailBreed {
  @override
  Future<BreedDetail> build(String id) async {
    final response = ref.read(getBreedByIdUseCaseProvider(id).future);
    return response.fold(
      (l) => const BreedDetail(),
      (r) => BreedDetail.fromBreed(r),
    );
  }
}
