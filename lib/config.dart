class Config {
  Config._();

  static Config? _instance;
  // ignore: prefer_constructors_over_static_methods
  static Config getInstance() {
    _instance ??= Config._();
    return _instance!;
  }

  final termsOfUseUrl = 'https://teacher.mos/terms-of-service';
  final privacyPolicyUrl = 'https://teacher.mos/privacy-policy';

  final _devUrl = 'https://api.dev.teacher.mos';
  final _stageUrl = 'https://api.stage.teacher.mos';
  final _prodUrl = 'https://api.teacher.mos';

  String? get baseUrl {
    const envLabel = 'prod'; //DI.instance.userPref().env.get();
    final env = EnvHelper.toEnum(envLabel);
    if (env == null) return null;
    switch (env) {
      case Env.dev:
        return _devUrl;
      case Env.stage:
        return _stageUrl;
      case Env.prod:
        return _prodUrl;
    }
  }
}

enum Env { dev, stage, prod }

class EnvHelper {
  static const _devLabel = 'dev';
  static const _stageLabel = 'stage';
  static const _prodLabel = 'prod';

  static Env? toEnum(String? value) {
    switch (value) {
      case _devLabel:
        return Env.dev;
      case _stageLabel:
        return Env.stage;
      case _prodLabel:
        return Env.prod;
      default:
        return null;
    }
  }

  static String toLabel(Env value) {
    switch (value) {
      case Env.dev:
        return _devLabel;
      case Env.stage:
        return _stageLabel;
      case Env.prod:
        return _prodLabel;
    }
  }
}
