import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const TopBar({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onTap,
        icon: const Icon(Icons.arrow_back),
      ),
      title: Text(title),
      flexibleSpace: Container(
        // Add a flexibleSpace to set the gradient background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
