import 'package:flutter/material.dart';

class MyMessagesBubble extends StatelessWidget {
  final String message;
  const MyMessagesBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
