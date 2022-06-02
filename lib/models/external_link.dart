import 'package:equatable/equatable.dart';

class ExternalLink extends Equatable {
  final String tag;
  final String url;
  const ExternalLink({required this.tag, required this.url});

  @override
  List<Object?> get props => [tag, url];
}
