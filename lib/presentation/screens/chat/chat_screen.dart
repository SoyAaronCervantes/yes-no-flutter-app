import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => (index % 2 == 0)
                    ? const HerMessagesBubble()
                    : const MyMessagesBubble()),
          )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
            child: MessageFieldBox(),
          ),
        ],
      ),
    );
  }
}
