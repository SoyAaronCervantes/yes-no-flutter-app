import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://play-lh.googleusercontent.com/0mgvhYfhG4Qm7UsE8uW4P2SUBw-ujHOTAgcP8DpXUafktzlUza2MRzLDK02AUK4cYZxT'),
          )),
      title: const Text("La caracola mágica"),
      titleSpacing: 10,
      centerTitle: false,
    );
  }
}
