enum AppEnvironment { DEV, STAGING, PROD }

abstract class EnvInfo {
  static AppEnvironment _environment = AppEnvironment.DEV;
  static void initialize(AppEnvironment env) => EnvInfo._environment = env;
  String get appName => _environment._appTitle;
  String get envName => _environment._envName;
  String get connectionString => _environment._connectionString;
  AppEnvironment get environment => _environment;
  bool get isProduction => _environment == AppEnvironment.PROD;
}

extension _EnvProperties on AppEnvironment {
  static const _appTitles = {
    AppEnvironment.DEV: 'Moli Menu Dev',
    AppEnvironment.STAGING: 'Moli Menu Staging',
    AppEnvironment.PROD: 'Moli Menu',
  };

  static const _connectionStrings = {
    AppEnvironment.DEV: 'https://api.spoonacular.com',
    AppEnvironment.STAGING: 'https://api.spoonacular.com',
    AppEnvironment.PROD: 'https://api.spoonacular.com',
  };

  static const _envs = {
    AppEnvironment.DEV: 'dev',
    AppEnvironment.STAGING: 'staging',
    AppEnvironment.PROD: 'prod',
  };

  String get _appTitle => _appTitles[this]!;
  String get _envName => _envs[this]!;
  String get _connectionString => _connectionStrings[this]!;
}
