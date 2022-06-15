import 'package:doxa_mobile_app/bootstrap.dart';
import 'package:doxa_mobile_app/services/environment_config_service.dart';
import 'presentation/app.dart';

void main() async {
  bootstrap(() => App(), environment: Environment.production);
}
