import 'package:doxa_mobile_app/presentation/app.dart';

import 'bootstrap.dart';
import 'services/environment_config_service.dart';


void main() {
  bootstrap(() =>  App(), environment: Environment.mock);
  
}

