import 'package:get_it/get_it.dart';
import 'package:purr_pedia_app/core/config/client/api_client.dart';
import 'package:purr_pedia_app/core/config/di/data_source.dart';
import 'package:purr_pedia_app/core/config/di/repository.dart';
import 'package:purr_pedia_app/core/config/di/use_case.dart';

class DependencyInjection {
  final GetIt sl = GetIt.instance;
  final ApiClient client = ApiClient();
  void onInit() {
    DataSourceDi(sl, client).onInit();
    RepositoryDi(sl, client).onInit();
    UseCaseDi(sl, client).onInit();
  }
}
