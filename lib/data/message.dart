import 'package:get/get.dart';

enum MessageType {
  systemReply,
  userQuestion,
}

class Message {
  final MessageType type;
  final String content;

  Message({required this.type, required this.content});
}

class Conversation {
  final String name;
  final RxList<Message> messages;

  Conversation({required this.name, required this.messages});
}
