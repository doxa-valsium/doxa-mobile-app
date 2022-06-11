import 'package:supabase_flutter/supabase_flutter.dart';

const kMockFutureDelay = Duration(milliseconds: 500);
const authRedirectUri = 'doxa://login-callback/';
final supabase = Supabase.instance.client;
