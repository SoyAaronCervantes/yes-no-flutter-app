import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no/domain/entities/message.dart';
import 'package:yes_no/presentation/providers/char_provider.dart';
import 'package:yes_no/presentation/widgets/chat/custom_app_bar.dart';

import '../../widgets/chat/her_messages_bubble.dart';
import '../../widgets/chat/my_messages_bubble.dart';
import '../../widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: const CustomAppBar(), body: _ChatWidget());
  }
}

class _ChatWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ChatProvider chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView.builder(
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messages[index];
                  return message.fromWho == FromWho.sender
                      ? MyMessagesBubble(
                          message: message.text,
                        )
                      : const HerMessagesBubble();
                }),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
            child: MessageFieldBox(
              onValue: chatProvider.sendMessage,
            ),
          ),
        ],
      ),
    );
  }
}
