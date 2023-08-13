import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  const ProfileWidget({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.42,
        height: MediaQuery.of(context).size.height * 0.09,
        child: Align(alignment: Alignment.center,
          child: ListTile(
            contentPadding: const EdgeInsets.all(7),
            leading: CircleAvatar(
                child: Icon(
                  icon,
                  size: 25,
                  color: Colors.black87,
                ),
                backgroundColor: Colors.black12),
            title: Text(title),
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}
