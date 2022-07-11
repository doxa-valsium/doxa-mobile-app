import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:intl/intl.dart';

const kMockFutureDelay = Duration(milliseconds: 500);
const kSignUpAuthRedirectUri = 'doxa://login-callback/';
const kResetAuthRedirectUri = 'doxa://login-callback/';
final kSupabase = Supabase.instance.client;
final kDateFormat = DateFormat('dd-MM-yyyy');