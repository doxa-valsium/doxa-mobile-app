import 'package:doxa_mobile_app/presentation/app.dart';

import 'bootstrap.dart';
import 'services/environment_config_service.dart';
import 'package:get/get.dart';


void main() {
  bootstrap(() => const App(), environment: Environment.mock);
  
}

