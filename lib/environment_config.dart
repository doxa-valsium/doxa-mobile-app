enum Environment { mock, production }

class EnvironmentConfig {
  static late Environment currentEnivironment;
  EnvironmentConfig.init(Environment environment) {
    currentEnivironment = environment;
  }
}
