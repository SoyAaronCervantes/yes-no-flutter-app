import 'package:flutter/material.dart';
import 'package:yes_no/config/helpers/get_yes_no_answer.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  final ScrollController chatScrollController = ScrollController();
  List<Message> messages = [
    Message(
      text: 'Hola',
      fromWho: FromWho.sender,
    ),
    Message(text: 'Cómo estás?', fromWho: FromWho.sender)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final message = Message(text: text, fromWho: FromWho.sender);
    messages.add(message);

    if (text.endsWith('?')) {
      receiverMessage();
    }

    notifyListeners();
    scrollToBottom();
  }

  Future<void> scrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }

  Future<void> receiverMessage() async {
    final receiverMessage = await getYesNoAnswer.getAnswer();
  }
}
