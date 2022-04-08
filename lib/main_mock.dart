import 'package:doxa_mobile_app/presentation/app.dart';

import 'bootstrap.dart';
import 'environment_config.dart';

void main() {
  bootstrap(() => const App(), environment: Environment.mock);
}
