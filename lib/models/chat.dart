import 'dart:convert';

import 'package:equatable/equatable.dart';

class Chat extends Equatable {
  final int? chatId;
  final String recipientName;
  final String? recipientPhotoUrl;
  final String lastMessage;
  final DateTime lastMessageTime;
  final String jobTitle;
  final int jobId;

  const Chat({required this.recipientName, required this.lastMessage, required this.lastMessageTime, required this.jobTitle, required this.jobId ,this.chatId, this.recipientPhotoUrl});

  @override
  List<Object?> get props => [chatId, recipientName, lastMessage, lastMessageTime, jobTitle, recipientPhotoUrl];

  Map<String, dynamic> toMap() {
    return {
      'chatId': chatId,
      'recipientName': recipientName,
      'lastMessage': lastMessage,
      'lastMessageTime': lastMessageTime.millisecondsSinceEpoch,
      'jobTitle': jobTitle,
    };
  }

  factory Chat.fromMap(Map<String, dynamic> map) {
    return Chat(
      chatId: map['chatId']?.toInt(),
      recipientName: map['matches']['users']['first_name'] + ' ' + map['matches']['users']['last_name'] ?? 'N/A',
      lastMessage: map['lastMessage'] ?? 'N/A',
      lastMessageTime: map['lastMessageTime'] == null ? DateTime.now() : DateTime.parse(map['lastMessageTime']),
      jobId: map['matches']['jobs']['id'] ?? 'N/A',
      jobTitle: map['matches']['jobs']['job_titles']['label'] ?? 'N/A',
    );
  }

  String toJson() => json.encode(toMap());

  factory Chat.fromJson(String source) => Chat.fromMap(json.decode(source));
}
