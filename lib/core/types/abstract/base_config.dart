import 'package:purr_pedia_app/core/config/api/api.dart';

abstract class BaseConfig {
  String get environment;
  Api get apiBaseURL;
  String get apiKey;
}
