import 'package:doxa_mobile_app/bootstrap.dart';
import 'package:doxa_mobile_app/environment_config.dart';

import 'presentation/app.dart';

void main() {
  bootstrap(() => const App(), environment: Environment.production);
}
