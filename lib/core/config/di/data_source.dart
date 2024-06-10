import 'package:get_it/get_it.dart';
import 'package:purr_pedia_app/app/data/data_source/breeds_data_source_impl.dart';
import 'package:purr_pedia_app/app/data/data_source/image_data_source_impl.dart';
import 'package:purr_pedia_app/app/domain/data_source/breeds_data_source.dart';
import 'package:purr_pedia_app/app/domain/data_source/image_data_source.dart';
import 'package:purr_pedia_app/core/config/client/api_client.dart';

class DataSourceDi {
  DataSourceDi(this.sl, this.client);
  final GetIt sl;
  final ApiClient client;
  void onInit() {
    sl.registerLazySingleton<BreedsDataSource>(
      () => BreedsDataSourceImpl(client),
    );
    sl.registerLazySingleton<ImageDataSource>(
      () => ImageDataSourceImpl(client),
    );
  }
}
