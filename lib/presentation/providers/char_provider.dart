import 'package:flutter/material.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(
      text: 'Hola',
      fromWho: FromWho.sender,
    ),
    Message(text: 'Cómo estás?', fromWho: FromWho.sender)
  ];

  Future<void> sendMessage(String text) async {
    final message = Message(text: text, fromWho: FromWho.sender);
    messages.add(message);
    notifyListeners();
  }
}
