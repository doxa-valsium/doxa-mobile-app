import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/exceptions/chat_exception.dart';
import 'package:doxa_mobile_app/data/repositories/chat_repository/chat_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/chat.dart';

class SupabaseChatRepository implements ChatRepository {
  @override
  Stream getRecruiterChats({required String recruiterId}) async* {
    // List<Chat> chats = [];
    // final response = kSupabase
    //     .from('chat_rooms')
    //     .select(
    //         'chatId:id, lastMessage: last_message, lastMessageTime: last_message_time, matches!id(users!candidate_id(first_name, last_name), jobs!job_id(id, job_titles(label), recruiter))')
    //     .eq('matches.jobs.recruiter', recruiterId)
    //     .execute()
    //     .asStream();
    // final response = kSupabase.rpc('get_recruiter_uninitiated_matches', params: {'recruiter_id': recruiterId}).execute().asStream();
    final response = kSupabase.from('matches').stream(['id']).execute().listen((data) {
      logger.i(data);
    });

    yield response;
  }
}
