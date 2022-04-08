import 'package:doxa_mobile_app/data/repositories/auth_repository/amplify_auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/mock_auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/database_repository/amplify_database_repository.dart';
import 'package:doxa_mobile_app/data/repositories/database_repository/database_repository.dart';
import 'package:doxa_mobile_app/data/repositories/database_repository/mock_database_repositroy.dart';
import 'package:doxa_mobile_app/environment_config.dart';

class RepositoryProvider {
  static late DatabaseRepositry databaseRepositry;
  static late AuthRepository authRepository;

  RepositoryProvider.init() {
    if (EnvironmentConfig.currentEnivironment == Environment.mock) {
      _mockInit();
    } else {
      _prodInit();
    }
  }

  static _prodInit() {
    databaseRepositry = AmplifyDatabaseRepository();
    authRepository = AmplifyAuthRepository();
  }

  static _mockInit() {
    databaseRepositry = MockDatabaseRepository();
    authRepository = MockAuthRepository();
  }
}
