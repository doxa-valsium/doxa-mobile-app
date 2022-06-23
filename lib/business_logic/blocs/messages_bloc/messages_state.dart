part of 'messages_bloc.dart';


abstract class MessagesState extends Equatable {
  const MessagesState();

  @override
  List<Object> get props => [];
}

class MessagesInitialState extends MessagesState {}

class MessagesLoadingState extends MessagesState {}

class MessagesLoadedState extends MessagesState {
  final List<Chat> chats;
  final List<local_match.Match> pendingMatches;
  const MessagesLoadedState({required this.chats, required this.pendingMatches});
}

class MessagesErrorState extends MessagesState {
  final String errorMessage;
  const MessagesErrorState({required this.errorMessage});
}
