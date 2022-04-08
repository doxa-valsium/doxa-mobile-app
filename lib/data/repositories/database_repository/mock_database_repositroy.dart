import 'package:doxa_mobile_app/data/repositories/database_repository/database_repository.dart';

class MockDatabaseRepository implements DatabaseRepositry {

  final Duration _delay = const Duration(milliseconds: 200);

  @override
  Future<String> getTestString() {
    return Future.delayed(_delay, () => 'MockDatabaseRepository');
  }
  
}
