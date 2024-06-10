import 'package:purr_pedia_app/app/domain/use_case/get_image_by_id_use_case/get_image_by_id_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'load_image_breed_provider.g.dart';

@riverpod
Future<String?> loadImageBreed(LoadImageBreedRef ref, String imageId) async {
  final response = await ref.read(getImageByIdUseCaseProvider(imageId).future);

  return response.fold((l) => null, (r) => r.url);
}
