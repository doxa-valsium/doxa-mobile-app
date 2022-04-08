import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/database_repository/database_repository.dart';

class AmplifyDatabaseRepository implements DatabaseRepositry {
  @override
  Future<String> getTestString() {
    return Future.delayed(kMockFutureDelay, () => 'AmplifyDatabaseRepository');
  }
}
