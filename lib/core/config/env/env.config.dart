import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:purr_pedia_app/core/config/api/api.dart';
import 'package:purr_pedia_app/core/types/abstract/base_config.dart';

class Config extends BaseConfig {
  @override
  String get environment => dotenv.env['ENVIRONMENT'] ?? '';

  @override
  Api get apiBaseURL => Api(
      baseUrl: dotenv.env['API_BASE'] ?? '',
      apiVersion: dotenv.env['API_VERSION'] ?? '');

  @override
  String get apiKey => dotenv.env['API_KEY'] ?? '';
}
