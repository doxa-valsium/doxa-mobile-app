import 'package:doxa_mobile_app/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'bootstrap.dart';
import 'services/environment_config_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://xfiuzxzrgufeqnvadqcb.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhmaXV6eHpyZ3VmZXFudmFkcWNiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTM3MjUwNzIsImV4cCI6MTk2OTMwMTA3Mn0.yQy6jl3rnq9L0H6FZd3_YXu7hIMdq2eI31rLctr6vI0',
  );

  bootstrap(() => App(), environment: Environment.mock);
}
