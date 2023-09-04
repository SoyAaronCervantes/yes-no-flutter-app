import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';
import 'presentation/screens/chat/chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yes No app',
      theme: AppTheme(selectedColorTheme: 6).theme(),
      home: const ChatScreen(),
    );
  }
}
