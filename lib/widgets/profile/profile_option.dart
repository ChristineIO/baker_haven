import 'package:flutter/material.dart';

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileOption({super.key, required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: const Color(0xffb35a76)),
      title: Text(text),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}