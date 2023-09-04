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
                'https://cachedimages.podchaser.com/256x256/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tL2I4MTUxMTA3NmMwNWQ5OTJiZjEyYTBkMmRiZjc5YzFmLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D'),
          )),
      title: const Text("Ana Taylor"),
      titleSpacing: 10,
      centerTitle: false,
    );
  }
}
