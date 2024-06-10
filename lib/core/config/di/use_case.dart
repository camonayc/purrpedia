import 'package:get_it/get_it.dart';
import 'package:purr_pedia_app/app/domain/repository/breeds_repository.dart';
import 'package:purr_pedia_app/app/domain/repository/image_repository.dart';
import 'package:purr_pedia_app/app/domain/use_case/get_breed_by_id_use_case/get_breed_by_id_use_case.dart';
import 'package:purr_pedia_app/app/domain/use_case/get_breeds_use_case/get_breeds_use_case.dart';
import 'package:purr_pedia_app/app/domain/use_case/get_image_by_id_use_case/get_image_by_id_use_case.dart';
import 'package:purr_pedia_app/core/config/client/api_client.dart';

class UseCaseDi {
  UseCaseDi(this.sl, this.client);
  final GetIt sl;
  final ApiClient client;
  void onInit() {
    sl.registerLazySingleton<GetBreedsUseCase>(
      () => GetBreedsUseCase(sl.get<BreedsRepository>()),
    );
    sl.registerLazySingleton<GetBreedByIdUseCase>(
      () => GetBreedByIdUseCase(sl.get<BreedsRepository>()),
    );
    sl.registerLazySingleton<GetImageByIdUseCase>(
      () => GetImageByIdUseCase(sl.get<ImageRepository>()),
    );
  }
}
