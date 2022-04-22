import 'dart:convert';
import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

// For the testing purposes, you should probably use https://pub.dev/packages/uuid
String randomString() {
  var random = Random.secure();
  var values = List<int>.generate(16, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}

class ChatScreen extends StatefulWidget {
  static const String route = 'chat-screen';
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '06c33e8b-e835-4736-80f4-63f44b66666c');

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  Widget _buildBottomWidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: Styles.elevation1,
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.fromLTRB(20, 0, 8, 0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type something.',
                  hintStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Colors.grey,
                      ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 48,
              width: 56,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: Styles.elevation1,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.send,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.router.pop(),
          icon: const Icon(Icons.arrow_back_ios_new),
          highlightColor: Colors.transparent,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: 92,
        leadingWidth: 50,
        backgroundColor: Theme.of(context).colorScheme.background,
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Avatar(
                radius: 32,
                avatarUrl: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQicA4b4KLMCWYETPLWMNk7REyoOOQMMB37wrpcg2Iux4QuqM-j",
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ahmed Raza",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      "Current Role @ Current Company",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.overline,
                    ),
                    Text(
                      "Job Name Candidate Matched For",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Chat(
          messages: _messages,
          onSendPressed: _handleSendPressed,
          user: _user,
          sendButtonVisibilityMode: SendButtonVisibilityMode.always,
          customBottomWidget: _buildBottomWidget(),
        ),
      ),
    );
  }
}
