import 'package:get_it/get_it.dart';
import 'package:purr_pedia_app/app/data/repository/breeds_repository_impl.dart';
import 'package:purr_pedia_app/app/data/repository/image_repository_impl.dart';
import 'package:purr_pedia_app/app/domain/data_source/breeds_data_source.dart';
import 'package:purr_pedia_app/app/domain/data_source/image_data_source.dart';
import 'package:purr_pedia_app/app/domain/repository/breeds_repository.dart';
import 'package:purr_pedia_app/app/domain/repository/image_repository.dart';
import 'package:purr_pedia_app/core/config/client/api_client.dart';

class RepositoryDi {
  RepositoryDi(this.sl, this.client);
  final GetIt sl;
  final ApiClient client;
  void onInit() {
    sl.registerLazySingleton<BreedsRepository>(
      () => BreedsRepositoryImpl(sl.get<BreedsDataSource>()),
    );
    sl.registerLazySingleton<ImageRepository>(
      () => ImageRepositoryImpl(sl.get<ImageDataSource>()),
    );
  }
}
