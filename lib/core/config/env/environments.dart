import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:purr_pedia_app/core/config/design/gen/assets.gen.dart';
import 'package:purr_pedia_app/core/config/env/env.config.dart';
import 'package:purr_pedia_app/core/types/abstract/base_config.dart';
import 'package:purr_pedia_app/core/types/enum/env_types.dart';

class Environment {
  factory Environment() => _instance;

  Environment._internal();
  static final Environment _instance = Environment._internal();

  static late BaseConfig config;

  Future<void> initConfig({required EnvType env}) async {
    config = await _getConfig(env);
  }

  Future<BaseConfig> _getConfig(EnvType environment) async {
    switch (environment) {
      case EnvType.dev:
        await dotenv.load(fileName: AssetsToken.envs.aEnv);
        return Config();
    }
  }
}
