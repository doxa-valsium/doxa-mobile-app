import 'package:doxa_mobile_app/bootstrap.dart';
import 'package:doxa_mobile_app/data/mock_database/mock_database.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/services/environment_config_service.dart';

import 'presentation/app.dart';

void main() {
  bootstrap(() => App(), environment: Environment.production);
}
