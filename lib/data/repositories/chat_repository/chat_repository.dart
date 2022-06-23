
import 'package:doxa_mobile_app/models/chat.dart';

abstract class ChatRepository {
  Stream getRecruiterChats({required String recruiterId});
}
