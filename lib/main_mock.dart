import 'package:doxa_mobile_app/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'bootstrap.dart';
import 'services/environment_config_service.dart';

Future<void> main() async {

  bootstrap(() => App(), environment: Environment.mock);
}
