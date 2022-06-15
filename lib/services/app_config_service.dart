import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AppConfigService {
  late SharedPreferences _prefs;
  late bool firstLauch;
  static final AppConfigService instance = AppConfigService._internal();
  AppConfigService._internal();

  Future<void> _initSupabase() async {
    await Supabase.initialize(
      url: 'https://xfiuzxzrgufeqnvadqcb.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhmaXV6eHpyZ3VmZXFudmFkcWNiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTM3MjUwNzIsImV4cCI6MTk2OTMwMTA3Mn0.yQy6jl3rnq9L0H6FZd3_YXu7hIMdq2eI31rLctr6vI0',
    );
  }

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    firstLauch = _prefs.getBool('firstLauch') ?? true;
    if (firstLauch) {
      await _prefs.setBool('firstLauch', false);
    }
    await _initSupabase();
  }
}
